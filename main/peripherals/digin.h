#ifndef DIGIN_H_INCLUDED
#define DIGIN_H_INCLUDED

#include <stdint.h>
#include <stdlib.h>


#define DIGIN_VENTOLA       DIGIN_IN2
#define DIGIN_PAGAMENTO     DIGIN_IN3
#define DIGIN_OBLO          DIGIN_IN10
#define DIGIN_EMERGENZA     DIGIN_IN9
#define DIGIN_TERMICA       DIGIN_IN7
#define DIGIN_FILTRO        DIGIN_IN7
#define DIGIN_NO_ARIA       DIGIN_IN4


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
    DIGIN_IN16,
    DIGIN_IN17,
    DIGIN_IN18,
    DIGIN_IN19,
    DIGIN_IN20,
    DIGIN_IN21,
    DIGIN_IN22,
    DIGIN_IN23,
    NUM_DIGIN,
} digin_t ;



void digin_init(void);
int digin_get(digin_t digin);
int digin_take_reading(void);
void digin_exp_take_reading(uint16_t buffer);
unsigned int digin_get_inputs(void);
int digin_pulses_take_reading(void);
void digin_clear_pulses(void);
int digin_get_pulses(void);

#endif
