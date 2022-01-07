#ifndef RISCALDAMENTO_H_INCLUDED
#define RISCALDAMENTO_H_INCLUDED


#include "model/model.h"


void riscaldamento_manage(model_t *pmodel, int test);
void riscaldamento_enable(void);
void riscaldamento_disable(void);
void riscaldamento_set_setpoint(int t);
int  riscaldamento_ok(void);


#endif