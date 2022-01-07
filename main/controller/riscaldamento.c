#include "peripherals/digout.h"
#include "peripherals/digin.h"
#include "riscaldamento.h"
#include "ventilazione.h"
#include "model/model.h"


#define HYSTERESIS 1



static int setpoint = 0;
static int enabled = 0;


void riscaldamento_manage(model_t *pmodel,int test) {
    if (test) {
        return;
    }
    
    if (enabled) {
        if (ventilazione_ok() && model_get_temperature(pmodel) < setpoint + HYSTERESIS) {
            DIGOUT_SET(DIGOUT_RISCALDAMENTO_1);
        } else {
            DIGOUT_CLEAR(DIGOUT_RISCALDAMENTO_1);
        }
    } else {
        DIGOUT_CLEAR(DIGOUT_RISCALDAMENTO_1);
    }
}


void riscaldamento_enable(void) {
    enabled = 1;
}


void riscaldamento_disable(void) {
    enabled = 0;
}


void riscaldamento_set_setpoint(int t) {
    setpoint = t;
}


int riscaldamento_ok(void) {
    return !enabled || (digin_get(DIGIN_TERMICA) == 0);
}