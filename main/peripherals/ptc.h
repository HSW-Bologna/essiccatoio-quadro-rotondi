#ifndef PTC_H_INCLUDED
#define PTC_H_INCLUDED

#include <stdint.h>
#include <stdlib.h>

int  ptc_take_reading(void);
int  ptc_get_value(uint16_t *adc1, uint16_t *adc2);
void ptc_get_temperature(int *temperature1, int *temperature2);


#endif