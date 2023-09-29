#ifndef RISCALDAMENTO_H_INCLUDED
#define RISCALDAMENTO_H_INCLUDED


#include "model/model.h"
#include "gel/state_machine/state_machine.h"


typedef enum {
    RISCALDAMENTO_EVENT_CODE_ON,
    RISCALDAMENTO_EVENT_CODE_OFF, 
    RISCALDAMENTO_EVENT_CODE_CHECK,
    RISCALDAMENTO_EVENT_CODE_STOP_STEAM,
} riscaldamento_event_code_t;


void riscaldamento_set_setpoint(model_t *pmodel, int t);
int  riscaldamento_ok(void);

void riscaldamento_manage_callbacks(model_t *pmodel);
void riscaldamento_on(model_t *pmodel, int setpoint);
void riscaldamento_off(model_t *pmodel);
int riscaldamento_timeout(model_t *pmodel);


#endif