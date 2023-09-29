#ifndef CONTROLLER_H_INCLUDED
#define CONTROLLER_H_INCLUDED

#include "model/model.h"
#include "modbus_server.h"



#define COMMAND_REGISTER_RUN_STEP       1
#define COMMAND_REGISTER_STOP           2
#define COMMAND_REGISTER_PAUSE          3
#define COMMAND_REGISTER_DONE           4
#define COMMAND_REGISTER_CLEAR_ALARMS   5
#define COMMAND_REGISTER_CLEAR_COINS    6
#define COMMAND_REGISTER_ENTER_TEST     7
#define COMMAND_REGISTER_EXIT_TEST      8
#define COMMAND_REGISTER_INITIALIZE     9



void controller_init(model_t *pmodel);
size_t controller_update_pwoff(model_t *pmodel);
void controller_save_pwoff(void);
int controller_holding_register_readable(holding_register_t reg);
int controller_holding_register_writable(holding_register_t reg);
void controller_write_holding_register(model_t *pmodel, holding_register_t reg, uint16_t value);
uint16_t controller_read_holding_register(model_t *pmodel, holding_register_t reg);
void controller_handle_command(model_t *pmodel, uint16_t command);

#endif