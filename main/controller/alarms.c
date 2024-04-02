#include "alarms.h"
#include "peripherals/digin.h"
#include "ventilazione.h"
#include "riscaldamento.h"
#include "model/model.h"


uint16_t check_alarms(model_t *pmodel) {
#define SET_ALARM(map, m, bit) map |= (model_set_alarm(m, bit) > 0) << bit
#define SET_WARNING(map, m, bit) map |= (model_set_alarm(m, bit) > 0) << bit
    
    uint16_t res = 0;
    
    if (pmodel->disabilita_allarmi) {
        model_clear_alarms_warnings(pmodel);
        return res;
    }
    
    if (digin_get(DIGIN_EMERGENZA) == 0) {
        SET_ALARM(res, pmodel, ALARM_CODE_EMERGENZA);
    }
    
    if (digin_get(DIGIN_OBLO) == 0) {
        SET_ALARM(res, pmodel, ALARM_CODE_OBLO_APERTO);
    }
    
    if (model_over_safety_temperature(pmodel)) {
        SET_ALARM(res, pmodel, ALARM_CODE_TEMPERATURA);
    }
    
    if (riscaldamento_timeout(pmodel)) {
        SET_ALARM(res, pmodel, ALARM_CODE_RISCALDAMENTO);
    }
    
    if (!ventilazione_ok()) {
        model_set_warning(pmodel, WARNING_CODE_VENTILAZIONE);
    }
    
    if (!riscaldamento_ok()) {
        model_set_warning(pmodel, WARNING_CODE_RISCALDAMENTO);
    }
    
    return res;
}


