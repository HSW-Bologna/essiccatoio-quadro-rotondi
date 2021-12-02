#ifndef ADC_H_INCLUDED
#define ADC_H_INCLUDED

#include <stdlib.h>
#include <stdint.h>


void pressostato_init(void);
unsigned int pressostato_read_input(int channel);
int pressostato_take_reading(void);
int pressostato_get_value(unsigned int *pressure);

#endif