#ifndef DIGIN_H_INCLUDED
#define DIGIN_H_INCLUDED

#include <stdint.h>
#include <stdlib.h>


typedef enum {
    DIGIN_IN0=0, 
    DIGIN_IN1, 
    DIGIN_IN2, 
    DIGIN_IN3,
    DIGIN_IN4,
    DIGIN_IN5,
    DIGIN_IN6,
    DIGIN_IN7,
    DIGIN_IN8,
    DIGIN_IN9,
    DIGIN_IN10, 
    DIGIN_IN11, 
    DIGIN_IN12,
    DIGIN_IN13,
    DIGIN_IN14,
    DIGIN_IN15,
    DIGIN_NUM,
} digin_t ;



void digin_init(void);
int digin_get(digin_t digin);
int digin_take_reading(void);
void digin_exp_take_reading(uint16_t buffer);
unsigned int digin_get_inputs(void);

#endif
