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
    memset(pmodel->pwoff.coins, 0, sizeof(pmodel->pwoff.coins));
    pmodel->tempo_marcia = 4;
    pmodel->tempo_pausa = 2;
    pmodel->initialized = 0;
    pmodel->inverti_macchina_occupata = 0;
}


size_t model_pwoff_serialize(model_t *pmodel, uint8_t *buff) {
    assert(pmodel != NULL);
    size_t j = 0;
    size_t i = 2;
    for (j = 0; j < COIN_LINES; j++) {
        i += serialize_uint16_be(&buff[i], pmodel->pwoff.coins[j]);
    }
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
        i += deserialize_uint16_be(&pmodel->pwoff.remaining_time, &buff[i]);
        i += deserialize_uint16_be(&pmodel->pwoff.program_number, &buff[i]);
        i += deserialize_uint16_be(&pmodel->pwoff.step_number, &buff[i]);
        i += deserialize_uint8(&pmodel->pwoff.active, &buff[i]);
    }

    assert(i == PWOFF_SERIALIZED_SIZE);
    return i;
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
    return pmodel->temperatura_ptc1;
}


void model_cycle_active(model_t *pmodel, int active) {
    assert(pmodel != NULL);
    pmodel->pwoff.active = active;
}


uint16_t model_get_function_flags(model_t *pmodel, int test) {
    assert(pmodel != NULL);
    return ((pmodel->initialized > 0) << 0) | ((test > 0) << 1);
}