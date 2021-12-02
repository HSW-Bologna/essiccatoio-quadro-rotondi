#ifndef TEMPERATURE_H_INCLUDED
#define TEMPERATURE_H_INCLUDED

#include <stdint.h>
#include <stdlib.h>

int temperature_take_reading(void);
int temperature_get_value(uint16_t *temperature0, uint16_t *temperature1);


#endif