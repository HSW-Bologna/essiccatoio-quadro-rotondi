#include <string.h>
#include "utils/assert.h"
#include "gel/timer/stopwatch.h"
#include "model.h"
#include "gel/crc/crc16-ccitt.h"
#include "gel/serializer/serializer.h"
#include "peripherals/timer.h"
#include "gel/parameter/parameter.h"


#define FLAG_ASCIUGATURA_TIPO_BIT               0
#define FLAG_ASCIUGATURA_ATTESA_TEMPERATURA_BIT 1
#define FLAG_ASCIUGATURA_INVERSIONE_BIT         2


void model_init(model_t *pmodel) {
    assert(pmodel != NULL);
    memset(pmodel, 0, sizeof(model_t));
}


size_t model_pwoff_serialize(model_t *pmodel, uint8_t *buff) {
    assert(pmodel != NULL);
    size_t j = 0;
    size_t i = 2;
    for (j = 0; j < COIN_LINES; j++) {
        i += serialize_uint16_be(&buff[i], pmodel->pwoff.coins[j]);
    }
    i += serialize_uint16_be(&buff[i], pmodel->pwoff.complete_cycles);
    i += serialize_uint16_be(&buff[i], pmodel->pwoff.partial_cycles);
    i += serialize_uint32_be(&buff[i], pmodel->pwoff.active_time);
    i += serialize_uint32_be(&buff[i], pmodel->pwoff.work_time);
    i += serialize_uint32_be(&buff[i], pmodel->pwoff.rotation_time);
    i += serialize_uint32_be(&buff[i], pmodel->pwoff.ventilation_time);
    i += serialize_uint32_be(&buff[i], pmodel->pwoff.heating_time);
    i += serialize_uint16_be(&buff[i], pmodel->pwoff.remaining_time);
    i += serialize_uint16_be(&buff[i], pmodel->pwoff.program_number);
    i += serialize_uint16_be(&buff[i], pmodel->pwoff.step_number);
    i += serialize_uint8(&buff[i], pmodel->pwoff.active);
    
    unsigned short crc = crc16_ccitt(&buff[2], i - 2, 0);
    serialize_uint16_be(&buff[0], crc);
    assert(i == PWOFF_SERIALIZED_SIZE);
    return i;
}


size_t model_pwoff_deserialize(model_t *pmodel, uint8_t *buff) {
    assert(pmodel != NULL);
    size_t   j = 0;
    size_t   i = 0;
    uint16_t crc;
    i += deserialize_uint16_be(&crc, &buff[i]);
    if (crc != crc16_ccitt(&buff[2], PWOFF_SERIALIZED_SIZE - 2, 0)) {
        return -1;
    } else {
        for(j = 0; j < COIN_LINES; j++) {
            i += deserialize_uint16_be(&pmodel->pwoff.coins[j], &buff[i]);
        }
        i += deserialize_uint16_be(&pmodel->pwoff.complete_cycles, &buff[i]);
        i += deserialize_uint16_be(&pmodel->pwoff.partial_cycles, &buff[i]);
        i += deserialize_uint32_be(&pmodel->pwoff.active_time, &buff[i]);
        i += deserialize_uint32_be(&pmodel->pwoff.work_time, &buff[i]);
        i += deserialize_uint32_be(&pmodel->pwoff.rotation_time, &buff[i]);
        i += deserialize_uint32_be(&pmodel->pwoff.ventilation_time, &buff[i]);
        i += deserialize_uint32_be(&pmodel->pwoff.heating_time, &buff[i]);
        i += deserialize_uint16_be(&pmodel->pwoff.remaining_time, &buff[i]);
        i += deserialize_uint16_be(&pmodel->pwoff.program_number, &buff[i]);
        i += deserialize_uint16_be(&pmodel->pwoff.step_number, &buff[i]);
        i += deserialize_uint8(&pmodel->pwoff.active, &buff[i]);
    }

    assert(i == PWOFF_SERIALIZED_SIZE);
    return i;
}


int model_is_porthole_open(model_t *pmodel) {
    assert(pmodel != NULL);
    return (pmodel->allarmi & (1 << ALARM_CODE_OBLO_APERTO)) > 0;
}


int model_is_alarm_other_than_porthole_active(model_t *pmodel) {
    assert(pmodel != NULL);
    return (pmodel->allarmi & (~(1 << ALARM_CODE_OBLO_APERTO))) > 0;
}


void model_clear_coins(model_t *pmodel) {
    assert(pmodel != NULL);
    memset(pmodel->pwoff.coins, 0, sizeof(pmodel->pwoff.coins));
}


int model_tipo_asciugatura(model_t *pmodel) {
    assert(pmodel != NULL);
    return (pmodel->flag_asciugatura & (1 << FLAG_ASCIUGATURA_TIPO_BIT)) > 0;
}


int model_attesa_temperatura_asciugatura(model_t *pmodel) {
    assert(pmodel != NULL);
    return (pmodel->flag_asciugatura & (1 << FLAG_ASCIUGATURA_ATTESA_TEMPERATURA_BIT)) > 0;
}


int model_inversione_asciugatura(model_t *pmodel) {
    assert(pmodel != NULL);
    return (pmodel->flag_asciugatura & (1 << FLAG_ASCIUGATURA_INVERSIONE_BIT)) > 0;
}


int model_set_alarm(model_t *pmodel, alarm_code_t alarm) {
    assert(pmodel != NULL);
    int res = (pmodel->allarmi & (1<<alarm)) == 0;
    pmodel->allarmi |= (1 << alarm);
    return res;
}


int model_set_warning(model_t *pmodel, warning_code_t warning) {
    assert(pmodel != NULL);
    int res = (pmodel->avvisi & (1<<warning)) == 0;
    pmodel->avvisi |= (1 << warning);
    return res;
}


void model_clear_alarms_warnings(model_t *pmodel) {
    assert(pmodel != NULL);
    pmodel->allarmi = 0;
    pmodel->avvisi = 0;
}


int model_heating_enabled(model_t *pmodel) {
    assert(pmodel != NULL);
    return pmodel->tipo_step == DRYER_PROGRAM_STEP_TYPE_DRYING;
}


int model_is_step_unfolding(model_t *pmodel) {
    assert(pmodel != NULL);
    return pmodel->tipo_step == DRYER_PROGRAM_STEP_TYPE_UNFOLDING;
}


int model_is_any_alarm_active(model_t *pmodel) {
    assert(pmodel != NULL);
    return pmodel->allarmi > 0;
}


int model_ciclo_continuo(model_t *pmodel) {
    assert(pmodel != NULL);
    return pmodel->tempo_durata > 0 && pmodel->tempo_pausa == 0;
}


int model_ciclo_fermo(model_t *pmodel) {
    assert(pmodel != NULL);
    return pmodel->tempo_durata == 0;
}


int model_get_temperature(model_t *pmodel) {
    assert(pmodel != NULL);
    switch (pmodel->tipo_sonda_temperatura) {
        case SONDA_TEMPERATURA_PTC_1:
            return pmodel->temperatura_ptc1;
            
        case SONDA_TEMPERATURA_PTC_2:
            return pmodel->temperatura_ptc2;
            
        case SONDA_TEMPERATURA_SHT:
            // The SHT probe reads temperature with 0.01 precision; we cut it out to the whole degree
            return pmodel->temperatura_sht/100;
            
        default:
            return 0;
    }
}


void model_cycle_active(model_t *pmodel, int active) {
    assert(pmodel != NULL);
    pmodel->pwoff.active = active;
}


uint16_t model_get_function_flags(model_t *pmodel, int test) {
    assert(pmodel != NULL);
    return ((pmodel->run.inizializzato > 0) << 0) | ((test > 0) << 1);
}


int model_vaporizzazione_da_attivare(model_t *pmodel) {
    assert(pmodel != NULL);
    return pmodel->tempo_vaporizzazione > 0 && pmodel->temperatura_vaporizzazione > 0 && !pmodel->run.vaporizzazione_attivata;
}


void model_vaporizzazione_attivata(model_t *pmodel) {
    assert(pmodel != NULL);
    pmodel->run.vaporizzazione_attivata = 1;
}


void model_comincia_step(model_t *pmodel) {
    assert(pmodel != NULL);
    pmodel->run.vaporizzazione_attivata = 0;
}


void model_add_second(model_t *pmodel) {
    assert(pmodel != NULL);
    pmodel->pwoff.active_time++;
}


void model_add_work_time_ms(model_t *pmodel, unsigned long ms) {
    assert(pmodel != NULL);
    pmodel->pwoff.work_time += ms/1000UL;
}


void model_add_rotation_time_ms(model_t *pmodel, unsigned long ms) {
    assert(pmodel != NULL);
    pmodel->pwoff.rotation_time += ms/1000UL;
}


void model_add_ventilation_time_ms(model_t *pmodel, unsigned long ms) {
    assert(pmodel != NULL);
    pmodel->pwoff.ventilation_time += ms/1000UL;
}


void model_add_heating_time_ms(model_t *pmodel, unsigned long ms) {
    assert(pmodel != NULL);
    pmodel->pwoff.heating_time += ms/1000UL;
}


int model_over_safety_temperature(model_t *pmodel) {
    assert(pmodel != NULL);
    if (!pmodel->run.inizializzato) {
        return 0;
    } else {
        return model_get_temperature(pmodel) > pmodel->temperatura_sicurezza;
    }
}


void model_add_complete_cycle(model_t *pmodel) {
    assert(pmodel != NULL);
    pmodel->pwoff.complete_cycles++;
}


void model_add_partial_cycle(model_t *pmodel) {
    assert(pmodel != NULL);
    pmodel->pwoff.partial_cycles++;
}