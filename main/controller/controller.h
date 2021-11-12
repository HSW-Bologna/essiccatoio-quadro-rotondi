#ifndef CONTROLLER_H_INCLUDED
#define CONTROLLER_H_INCLUDED

#include "model/model.h"

void controller_init(model_t *pmodel);
size_t controller_update_pwoff(model_t *pmodel);
void controller_save_pwoff(void);

#endif