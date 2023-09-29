/*
 * File:   controller.c
 * Author: Virginia
 *
 * Created on 11 novembre 2021, 16.52
 */

#include "controller.h"
#include "peripherals/pwm.h"
#include "peripherals/digout.h"
#include "peripherals/i2c_devices.h"
#include "i2c_devices/eeprom/24LC16/24LC16.h"
#include "gel/serializer/serializer.h"
#include "peripherals/pwoff.h"
#include "gel/wearleveling/wearleveling.h"
#include "cycle.h"
#include "app_conf.h"


#define CHECK_BYTE                   0xAA
#define CHECK_BYTE_ADDRESS           0
#define PAR_START_ADDRESS            (CHECK_BYTE_ADDRESS) + 1
#define PWOFF_DATA_ADDRESS           512UL
#define WL_BLOCK_SIZE                32UL
#define WL_MEMORY_SIZE               256
#define WL_BLOCK_NUM                 8
#define WL_MARKER_ADDRESS(block_num) ((PWOFF_DATA_ADDRESS) + ((block_num) * (WL_BLOCK_SIZE)))
#define WL_DATA_ADDRESS(block_num)   ((PWOFF_DATA_ADDRESS) + ((block_num) * (WL_BLOCK_SIZE) + 1))
//#define WEARLEVELING                 1


static uint8_t               pwoff_data[PWOFF_SERIALIZED_SIZE] = {0};
static wear_leveled_memory_t memory;


static int read_marker(size_t block_num, uint8_t *marker);
static int read_block(size_t block_num, uint8_t *buffer, size_t len);
static int write_block(size_t block_num, uint8_t marker, uint8_t *buffer, size_t len);
static int controller_start_check(void);


void controller_init(model_t *pmodel) {
#ifdef WEARLEVELING
    wearleveling_init(&memory, read_block, write_block, read_marker, WL_BLOCK_NUM);
#endif

    if (!controller_start_check()) {
        uint8_t check_byte = CHECK_BYTE;
        EE24LC16_SEQUENTIAL_WRITE(eeprom_driver, CHECK_BYTE_ADDRESS, &check_byte, 1);
    }
    uint8_t pwoff_data[PWOFF_SERIALIZED_SIZE] = {0};
#ifdef WEARLEVELING
    wearleveling_read(&memory, pwoff_data, PWOFF_SERIALIZED_SIZE);
#else
    EE24CL16_SEQUENTIAL_READ(eeprom_driver, PWOFF_DATA_ADDRESS, pwoff_data, PWOFF_SERIALIZED_SIZE);
#endif
    model_pwoff_deserialize(pmodel, pwoff_data);
    controller_update_pwoff(pmodel);
    pwoff_set_callback(controller_save_pwoff);
    
    if (pmodel->pwoff.active > 0) {
        cycle_send_event(pmodel, CYCLE_EVENT_CODE_RESUME);
    }
}


size_t controller_update_pwoff(model_t *pmodel) {
    pwoff_interrupt_enable(0);
    size_t i = model_pwoff_serialize(pmodel, pwoff_data);
    pwoff_interrupt_enable(1);
    return i;
}


void controller_save_pwoff(void) {
#ifdef WEARLEVELING
    wearleveling_write(&memory, pwoff_data, PWOFF_SERIALIZED_SIZE);
#else
    EE24LC16_SEQUENTIAL_WRITE(eeprom_driver, PWOFF_DATA_ADDRESS, pwoff_data, PWOFF_SERIALIZED_SIZE);
#endif
}


static int read_marker(size_t block_num, uint8_t *marker) {
    if (block_num > (WL_BLOCK_NUM - 1)) {
        return 1;
    }

    EE24CL16_SEQUENTIAL_READ(eeprom_driver, WL_MARKER_ADDRESS(block_num), marker, 1);
    return 0;
}

static int read_block(size_t block_num, uint8_t *buffer, size_t len) {
    if (block_num > (WL_BLOCK_NUM - 1)) {
        return 1;
    }
    EE24CL16_SEQUENTIAL_READ(eeprom_driver, WL_DATA_ADDRESS(block_num), buffer, len);
    return 0;
}

static int write_block(size_t block_num, uint8_t marker, uint8_t *buffer, size_t len) {

    if (block_num > (WL_BLOCK_NUM - 1)) {
        return 1;
    }

#ifdef WEARLEVELING
    uint8_t intermediate_buffer[len + 1];

    intermediate_buffer[0] = marker;
    memcpy(&intermediate_buffer[1], buffer, len);
    EE24LC16_SEQUENTIAL_WRITE(eeprom_driver, WL_MARKER_ADDRESS(block_num), intermediate_buffer, len + 1);
#else
    EE24LC16_SEQUENTIAL_WRITE(eeprom_driver, WL_MARKER_ADDRESS(block_num), &marker, 1);
    EE24LC16_SEQUENTIAL_WRITE(eeprom_driver, WL_DATA_ADDRESS(block_num), buffer, len);
#endif
    return 0;
}


static int controller_start_check(void) {
    uint8_t buff = 0;
    size_t  i;
    for (i = 0; i < 5; i++) {
        EE24CL16_SEQUENTIAL_READ(eeprom_driver, CHECK_BYTE_ADDRESS, &buff, 1);
        if (buff == CHECK_BYTE) {
            return 1;
        }
    }
    return 0;
}


int controller_holding_register_readable(holding_register_t reg) {
    switch (reg) {
        case HOLDING_REGISTER_COMMAND:
            return 0;

        default:
            return 1;
    }
}


int controller_holding_register_writable(holding_register_t reg) {
    switch (reg) {
        case HOLDING_REGISTER_COMMAND:
        case HOLDING_REGISTER_PWM1:
        case HOLDING_REGISTER_PWM2:
        case HOLDING_REGISTER_TEMPO_PAUSA:
        case HOLDING_REGISTER_TEMPO_MARCIA:
        case HOLDING_REGISTER_TIPO_STEP:
        case HOLDING_REGISTER_TEMPO_DURATA:
        case HOLDING_REGISTER_VELOCITA:
        case HOLDING_REGISTER_TEMPERATURA:
        case HOLDING_REGISTER_UMIDITA:
        case HOLDING_REGISTER_NUMERO_CICLI:
        case HOLDING_REGISTER_TEMPO_RITARDO:
        case HOLDING_REGISTER_FLAG_CONFIGURAZIONE_STEP:
        case HOLDING_REGISTER_TIPO_SONDA_TEMPERATURA:
        case HOLDING_REGISTER_TEMPERATURA_SICUREZZA:
        case HOLDING_REGISTER_TEMPO_ALLARME_TEMPERATURA:
        case HOLDING_REGISTER_NUMERO_PROGRAMMA:
        case HOLDING_REGISTER_NUMERO_STEP:
        case HOLDING_REGISTER_TIPO_MACCHINA_OCCUPATA:
        case HOLDING_REGISTER_TIPO_RISCALDAMENTO:
        case HOLDING_REGISTER_ISTERESI_TEMPERATURA_ON_RES2:
        case HOLDING_REGISTER_ISTERESI_TEMPERATURA_OFF_RES1:
        case HOLDING_REGISTER_TEMPERATURA_AVVIO_VAPORIZZAZIONE:
        case HOLDING_REGISTER_DURATA_VAPORIZZAZIONE:
        case HOLDING_REGISTER_ATTESA_DEODORIZZAZIONE:
        case HOLDING_REGISTER_TEMPO_DEODORIZZAZIONE:
        case HOLDING_REGISTER_FLAG_CONFIGURAZIONE:
        case HOLDING_REGISTER_TEMPO_ATTESA_PARTENZA_CICLO:
        case HOLDING_REGISTER_TEMPO_RIMANENTE:
            return 1;

        default:
            return 0;
    }
}


void controller_write_holding_register(model_t *pmodel, holding_register_t reg, uint16_t value) {
#define WRITE_FIELD(index, field)                          \
    case index:                                             \
        pmodel->field = value;                              \
        break;
    
    assert(pmodel != NULL);
    if (!controller_holding_register_writable(reg)) {
        return;
    }

    switch (reg) {
        WRITE_FIELD(HOLDING_REGISTER_TEMPO_MARCIA, tempo_marcia);
        WRITE_FIELD(HOLDING_REGISTER_TEMPO_PAUSA, tempo_pausa);
        WRITE_FIELD(HOLDING_REGISTER_TEMPO_DURATA, tempo_durata);
        WRITE_FIELD(HOLDING_REGISTER_VELOCITA, velocita);
        WRITE_FIELD(HOLDING_REGISTER_TEMPERATURA, temperatura);
        WRITE_FIELD(HOLDING_REGISTER_UMIDITA, umidita);
        WRITE_FIELD(HOLDING_REGISTER_FLAG_CONFIGURAZIONE_STEP, flag_asciugatura);
        WRITE_FIELD(HOLDING_REGISTER_TIPO_SONDA_TEMPERATURA, tipo_sonda_temperatura);
        WRITE_FIELD(HOLDING_REGISTER_TEMPO_ATTESA_PARTENZA_CICLO, tempo_attesa_partenza_ciclo);
        WRITE_FIELD(HOLDING_REGISTER_NUMERO_PROGRAMMA, pwoff.program_number);
        WRITE_FIELD(HOLDING_REGISTER_NUMERO_STEP, pwoff.step_number);
        WRITE_FIELD(HOLDING_REGISTER_TIPO_STEP, tipo_step);
        WRITE_FIELD(HOLDING_REGISTER_TIPO_MACCHINA_OCCUPATA, tipo_macchina_occupata);
        WRITE_FIELD(HOLDING_REGISTER_TIPO_RISCALDAMENTO, tipo_riscaldamento);
        WRITE_FIELD(HOLDING_REGISTER_ISTERESI_TEMPERATURA_ON_RES2, isteresi_temperatura_on_res2);
        WRITE_FIELD(HOLDING_REGISTER_ISTERESI_TEMPERATURA_OFF_RES1, isteresi_temperatura_off_res1);
        WRITE_FIELD(HOLDING_REGISTER_TEMPERATURA_AVVIO_VAPORIZZAZIONE, temperatura_vaporizzazione);
        WRITE_FIELD(HOLDING_REGISTER_DURATA_VAPORIZZAZIONE, tempo_vaporizzazione);
        WRITE_FIELD(HOLDING_REGISTER_ATTESA_DEODORIZZAZIONE, tempo_attesa_deodorizzazione);
        WRITE_FIELD(HOLDING_REGISTER_TEMPO_DEODORIZZAZIONE, tempo_deodorizzazione);
        WRITE_FIELD(HOLDING_REGISTER_TEMPO_ALLARME_TEMPERATURA, tempo_allarme_temperatura);
        WRITE_FIELD(HOLDING_REGISTER_TEMPERATURA_SICUREZZA, temperatura_sicurezza);
        
        case HOLDING_REGISTER_TEMPO_RIMANENTE:
            cycle_change_remaining_time(value);
            break;
        
        case HOLDING_REGISTER_COMMAND:
            controller_handle_command(pmodel, value);
            break;
            
        case HOLDING_REGISTER_PWM1:
            pwm_set(value, 1);
            break;
            
        case HOLDING_REGISTER_PWM2:
            pwm_set(value, 2);
            break;
            
        case HOLDING_REGISTER_FLAG_CONFIGURAZIONE:
            pmodel->ferma_tempo_in_pausa = (value & 0x01) > 0;
            pmodel->inverti_macchina_occupata = (value & 0x02) > 0;
            pmodel->disabilita_allarmi = (value & 0x04) > 0;
            pmodel->abilita_allarme_inverter = (value & 0x08) > 0;
            pmodel->abilita_allarme_filtro = (value & 0x10) > 0;
            break;
        
        default:
            break;
 
    }
    
#undef WRITE_FIELD
}


uint16_t controller_read_holding_register(model_t *pmodel, holding_register_t reg) {
#define READ_REG_HI(code, field)\
    case code:                                                                  \
        return (uint16_t)((pmodel->field >> 16) & 0xFFFF);                      
        
#define READ_REG_LO(code, field)\
    case code:                                                                  \
        return (uint16_t)((pmodel->field) & 0xFFFF);                            
    
    assert(pmodel != NULL);
    if (!controller_holding_register_readable(reg)) {
        return 0;
    }

    switch (reg) {
        case HOLDING_REGISTER_STATE:
            return cycle_get_state();
        case HOLDING_REGISTER_TEMPO_RIMANENTE:
            return cycle_get_remaining_time();
        case HOLDING_REGISTER_FLAG_FUNZIONAMENTO:
            return model_get_function_flags(pmodel, cycle_in_test());
        case HOLDING_REGISTER_TIPO_STEP:
            return pmodel->tipo_step;
        case HOLDING_REGISTER_ALLARMS:
            return pmodel->allarmi;
        case HOLDING_REGISTER_VERSION_HIGH:
            return SOFTWARE_VERSION_HIGH;
        case HOLDING_REGISTER_VERSION_LOW:
            return SOFTWARE_VERSION_LOW;
        case HOLDING_REGISTER_BUILD_DATE:
            return SOFTWARE_BUILD_DATE;
        case HOLDING_REGISTER_NUMERO_PROGRAMMA:
            return pmodel->pwoff.program_number;
        case HOLDING_REGISTER_NUMERO_STEP:
            return pmodel->pwoff.step_number;
        case HOLDING_REGISTER_CICLI_TOTALI:
            return pmodel->pwoff.complete_cycles;
        case HOLDING_REGISTER_CICLI_PARZIALI:
            return pmodel->pwoff.partial_cycles;
            
        READ_REG_HI(HOLDING_REGISTER_TEMPO_ATTIVITA_HI, pwoff.active_time);
        READ_REG_LO(HOLDING_REGISTER_TEMPO_ATTIVITA_LO, pwoff.active_time);
        READ_REG_HI(HOLDING_REGISTER_TEMPO_LAVORO_HI, pwoff.work_time);
        READ_REG_LO(HOLDING_REGISTER_TEMPO_LAVORO_LO, pwoff.work_time);
        READ_REG_HI(HOLDING_REGISTER_TEMPO_MOTO_HI, pwoff.rotation_time);
        READ_REG_LO(HOLDING_REGISTER_TEMPO_MOTO_LO, pwoff.rotation_time);
        READ_REG_HI(HOLDING_REGISTER_TEMPO_VENTILAZIONE_HI, pwoff.ventilation_time);
        READ_REG_LO(HOLDING_REGISTER_TEMPO_VENTILAZIONE_LO, pwoff.ventilation_time);
        READ_REG_HI(HOLDING_REGISTER_TEMPO_RISCALDAMENTO_HI, pwoff.heating_time);
        READ_REG_LO(HOLDING_REGISTER_TEMPO_RISCALDAMENTO_LO, pwoff.heating_time);

        default:
            return 0;
    }
    
#undef READ_REG_HI
#undef READ_REG_LO
}


void controller_handle_command(model_t *pmodel, uint16_t command) {
    switch (command) {
        case COMMAND_REGISTER_RUN_STEP:
            cycle_send_event(pmodel, CYCLE_EVENT_CODE_START);
            break;

        case COMMAND_REGISTER_STOP:
            if (cycle_send_event(pmodel, CYCLE_EVENT_CODE_STOP)) {
                model_add_partial_cycle(pmodel);
                controller_update_pwoff(pmodel);
            }
            break;
            
        case COMMAND_REGISTER_PAUSE:
            cycle_send_event(pmodel, CYCLE_EVENT_CODE_PAUSE);
            break;
            
        case COMMAND_REGISTER_DONE:
            if (cycle_send_event(pmodel, CYCLE_EVENT_CODE_STOP)) {
                model_add_complete_cycle(pmodel);
                controller_update_pwoff(pmodel);
            }
            break;
            
        case COMMAND_REGISTER_CLEAR_ALARMS:
            model_clear_alarms_warnings(pmodel);
            break;
            
        case COMMAND_REGISTER_CLEAR_COINS:
            model_clear_coins(pmodel);
            controller_update_pwoff(pmodel);
            break;
            
            
        case COMMAND_REGISTER_ENTER_TEST:
            cycle_send_event(pmodel, CYCLE_EVENT_CODE_ENTER_TEST);
            break;
            
        case COMMAND_REGISTER_EXIT_TEST:
            cycle_send_event(pmodel, CYCLE_EVENT_CODE_EXIT_TEST);
            digout_clear_all();
            break;
            
        case COMMAND_REGISTER_INITIALIZE:
            pmodel->run.inizializzato = 1;
            break;

        default:
            break;
    }
    
    controller_update_pwoff(pmodel);
}