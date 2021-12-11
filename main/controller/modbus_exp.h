#ifndef MODBUS_EXP_H_INCLUDED
#define MODBUS_EXP_H_INCLUDED

#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include "lightmodbus/master.h"

#define SLAVE_DEFAULT_ADDRESS   2

void modbus_exp_init(void);
void modbus_exp_write_coils(uint8_t address, uint16_t status);

#endif