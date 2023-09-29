#ifndef MODEL_H_INCLUDED
#define MODEL_H_INCLUDED


#include <stdint.h>
#include <stdlib.h>


#define PWOFF_SERIALIZED_SIZE 45
#define COIN_LINES 6

#define TIPO_RISCALDAMENTO_GAS       0
#define TIPO_RISCALDAMENTO_ELETTRICO 1
#define TIPO_RISCALDAMENTO_VAPORE    2

#define TIPO_MACCHINA_OCCUPATA_ALLARMI_CICLO_PAGATO 0
#define TIPO_MACCHINA_OCCUPATA_ALLARMI              1
#define TIPO_MACCHINA_OCCUPATA_CICLO                2

#define SONDA_TEMPERATURA_PTC_1 0
#define SONDA_TEMPERATURA_PTC_2 1
#define SONDA_TEMPERATURA_SHT   2


typedef enum {
    DRYER_PROGRAM_STEP_TYPE_DRYING = 0,
    DRYER_PROGRAM_STEP_TYPE_COOLING,
    DRYER_PROGRAM_STEP_TYPE_UNFOLDING,
    NUM_DRYER_PROGRAM_STEP_TYPES,
} dryer_program_step_type_t;


typedef enum {
    ALARM_CODE_EMERGENZA = 0,
    ALARM_CODE_TEMPERATURA,
    ALARM_CODE_RISCALDAMENTO,
    ALARM_CODE_OBLO_APERTO,
} alarm_code_t;


typedef enum {
    WARNING_CODE_VENTILAZIONE = 0,
    WARNING_CODE_RISCALDAMENTO,
} warning_code_t;


typedef struct {
    uint16_t complete_cycles;
    uint16_t partial_cycles;
    uint32_t active_time;
    uint32_t work_time;
    uint32_t rotation_time;
    uint32_t ventilation_time;
    uint32_t heating_time;

    uint16_t coins[COIN_LINES];
    uint16_t remaining_time;
    uint16_t program_number;
    uint16_t step_number;
    uint8_t  active;
} pwoff_data_t;


typedef struct {
    pwoff_data_t pwoff;
    
    // PArametri macchina
    uint16_t tipo_macchina_occupata;
    uint16_t inverti_macchina_occupata;
    uint16_t tempo_allarme_temperatura;
    uint16_t temperatura_sicurezza;
    uint16_t tipo_riscaldamento;
    uint16_t ferma_tempo_in_pausa;
    uint16_t disabilita_allarmi;
    uint16_t abilita_allarme_inverter;
    uint16_t abilita_allarme_filtro;
    uint16_t tempo_attesa_partenza_ciclo;
    
    // Parametri step
    uint16_t tempo_marcia;
    uint16_t tempo_pausa;
    uint16_t tempo_durata;
    uint16_t velocita;
    uint16_t temperatura;
    uint16_t umidita;
    uint16_t flag_asciugatura;
    uint16_t tipo_sonda_temperatura;
    uint16_t tipo_step;
    
    uint16_t isteresi_temperatura_on_res2;
    uint16_t isteresi_temperatura_off_res1;
    uint16_t temperatura_vaporizzazione;
    uint16_t tempo_vaporizzazione;
    uint16_t tempo_attesa_deodorizzazione;
    uint16_t tempo_deodorizzazione;
    
    // Dati di funzionamento
    uint16_t allarmi;
    uint16_t avvisi;
    
    uint16_t adc_ptc1;
    uint16_t adc_ptc2;
    int temperatura_ptc1;
    int temperatura_ptc2;
    uint16_t temperatura_sht;
    uint16_t umidita_sht;
    
    struct {
        uint8_t inizializzato;
        uint8_t vaporizzazione_attivata;
    } run;
} model_t;


void          model_init(model_t *pmodel);
size_t        model_pwoff_serialize(model_t *pmodel, uint8_t *buff);
size_t        model_pwoff_deserialize(model_t *pmodel, uint8_t *buff);
void          model_clear_alarms_warnings(model_t *pmodel);
int          model_set_alarm(model_t *pmodel, alarm_code_t alarm);
int model_set_warning(model_t *pmodel, warning_code_t warning);
int model_is_any_alarm_active(model_t *pmodel);
int model_heating_enabled(model_t *pmodel);
int model_ciclo_continuo(model_t *pmodel);
int model_ciclo_fermo(model_t *pmodel);
int model_get_temperature(model_t *pmodel);
int model_is_step_unfolding(model_t *pmodel);
void model_clear_coins(model_t *pmodel);
uint16_t model_get_function_flags(model_t *pmodel, int test);
void model_cycle_active(model_t *pmodel, int active);
int model_is_alarm_other_than_porthole_active(model_t *pmodel);
int model_is_porthole_open(model_t *pmodel);

void model_vaporizzazione_attivata(model_t *pmodel);
int model_vaporizzazione_da_attivare(model_t *pmodel);
void model_comincia_step(model_t *pmodel);
void model_add_second(model_t *pmodel);
void model_add_work_time_ms(model_t *pmodel, unsigned long ms);
void model_add_rotation_time_ms(model_t *pmodel, unsigned long ms);
void model_add_ventilation_time_ms(model_t *pmodel, unsigned long ms);
void model_add_heating_time_ms(model_t *pmodel, unsigned long ms);
int model_over_safety_temperature(model_t *pmodel);
void model_add_complete_cycle(model_t *pmodel);
void model_add_partial_cycle(model_t *pmodel);


#endif
