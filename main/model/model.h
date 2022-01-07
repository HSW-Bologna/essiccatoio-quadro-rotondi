#ifndef MODEL_H_INCLUDED
#define MODEL_H_INCLUDED

#include <stdint.h>
#include <stdlib.h>

#define PWOFF_SERIALIZED_SIZE 21

#define COIN_LINES 6


typedef enum {
    DRYER_PROGRAM_STEP_TYPE_DRYING = 0,
    DRYER_PROGRAM_STEP_TYPE_COOLING,
    DRYER_PROGRAM_STEP_TYPE_UNFOLDING,
    NUM_DRYER_PROGRAM_STEP_TYPES,
} dryer_program_step_type_t;


typedef enum {
    ALARM_CODE_OBLO_APERTO = 0,
    ALARM_CODE_EMERGENZA,
} alarm_code_t;


typedef enum {
    WARNING_CODE_VENTILAZIONE = 0,
    WARNING_CODE_RISCALDAMENTO,
} warning_code_t;


typedef struct {
    uint16_t coins[COIN_LINES];
    uint16_t remaining_time;
    uint16_t program_number;
    uint16_t step_number;
    uint8_t  active;
} pwoff_data_t;


typedef struct {
    pwoff_data_t pwoff;
    uint16_t initialized;
    uint16_t inverti_macchina_occupata;
    
    uint16_t tempo_marcia;
    uint16_t tempo_pausa;
    uint16_t tempo_durata;
    uint16_t velocita;
    uint16_t temperatura;
    uint16_t umidita;
    uint16_t flag_asciugatura;
    uint16_t tipo_sonda_temperatura;
    uint16_t tipo_step;
    
    uint16_t allarmi;
    uint16_t avvisi;
    
    uint16_t adc_ptc1;
    uint16_t adc_ptc2;
    int temperatura_ptc1;
    int temperatura_ptc2;
    uint16_t temperatura_sht;
    uint16_t umidita_sht;
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
int model_is_in_test(model_t *pmodel);
uint16_t model_get_function_flags(model_t *pmodel, int test);
void model_cycle_active(model_t *pmodel, int active);


#endif
