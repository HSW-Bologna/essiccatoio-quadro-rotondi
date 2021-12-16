#ifndef CONTROLLER_H_INCLUDED
#define CONTROLLER_H_INCLUDED

#include "model/model.h"



#define COMMAND_REGISTER_START 1
#define COMMAND_REGISTER_STOP  2



typedef enum {
    HOLDING_REGISTER_COMMAND = 0,
    HOLDING_REGISTER_STATE,
    _NUM_HOLDING_REGISTERS,
} holding_register_t;



void controller_init(model_t *pmodel);
size_t controller_update_pwoff(model_t *pmodel);
void controller_save_pwoff(void);
int controller_holding_register_readable(holding_register_t reg);
int controller_holding_register_writable(holding_register_t reg);
void controller_write_holding_register(model_t *pmodel, holding_register_t reg, uint16_t value);
uint16_t controller_read_holding_register(model_t *pmodel, holding_register_t reg);
void controller_handle_command(model_t *pmodel, uint16_t command);

#endif