#ifndef DIGIN_H_INCLUDED
#define DIGIN_H_INCLUDED

#include <stdint.h>
#include <stdlib.h>

// Funzioni

#define DIGIN_VENTOLA       DIGIN_1
#define DIGIN_PAGAMENTO     DIGIN_2
#define DIGIN_NO_ARIA                       DIGIN_3

#define DIGIN_ALLARME_INVERTER_CESTO        DIGIN_LABEL_CESTO_8
#define DIGIN_ALLARME_INVERTER_VENTOLA      DIGIN_LABEL_VENTOLA_6
#define DIGIN_FILTRO                        DIGIN_7
#define DIGIN_EMERGENZA                     DIGIN_8
#define DIGIN_OBLO                          DIGIN_9
#define DIGIN_TERMICA                       DIGIN_10
#define DIGIN_BLOCCO_GAS                    DIGIN_11


// Etichette scheda

#define DIGIN_LABEL_IN_V1 DIGIN_0
#define DIGIN_LABEL_IN_V2 DIGIN_3
#define DIGIN_LABEL_IN_V3 DIGIN_2
#define DIGIN_LABEL_IN_V4 DIGIN_1
#define DIGIN_LABEL_IN4   DIGIN_6
#define DIGIN_LABEL_IN3   DIGIN_7
#define DIGIN_LABEL_IN2   DIGIN_8
#define DIGIN_LABEL_IN1   DIGIN_9
#define DIGIN_LABEL_TERM  DIGIN_10
#define DIGIN_LABEL_C_GAS_7 DIGIN_11
#define DIGIN_LABEL_CESTO_8 DIGIN_4
#define DIGIN_LABEL_VENTOLA_6 DIGIN_5


typedef enum {
    DIGIN_0=0, 
    DIGIN_1, 
    DIGIN_2, 
    DIGIN_3, 
    DIGIN_4,
    DIGIN_5,
    DIGIN_6,
    DIGIN_7,
    DIGIN_8,
    DIGIN_9,
    DIGIN_10,
    DIGIN_11, 
    DIGIN_12, 
    DIGIN_13,
    DIGIN_14,
    DIGIN_15,
    DIGIN_16,
    DIGIN_17,
    DIGIN_18,
    DIGIN_19,
    DIGIN_20,
    DIGIN_21,
    DIGIN_22,
    DIGIN_23,
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
