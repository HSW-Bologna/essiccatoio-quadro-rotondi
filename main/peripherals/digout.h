#ifndef DIGOUT_H_INCLUDED
#define DIGOUT_H_INCLUDED

#include <string.h>
#include <stdint.h>


#define DIGOUT_RESET_GAS         DIGOUT_OUT1
#define DIGOUT_ON_GAS            DIGOUT_OUT2
#define DIGOUT_CESTO_AVANTI      DIGOUT_OUT3
#define DIGOUT_CESTO_INDIETRO    DIGOUT_OUT4
#define DIGOUT_VENTILAZIONE      DIGOUT_OUT5
#define DIGOUT_RISCALDAMENTO_1   DIGOUT_OUT6
#define DIGOUT_RISCALDAMENTO_2   DIGOUT_OUT7
#define DIGOUT_MACCHINA_OCCUPATA DIGOUT_OUT8
#define DIGOUT_VAPORE            DIGOUT_OUT9


#define DIGOUT_SET(out) digout_update(out, 1)
#define DIGOUT_CLEAR(out) digout_update(out, 0)


typedef enum {
    DIGOUT_OUT1 = 0,
    DIGOUT_OUT2,
    DIGOUT_OUT3,
    DIGOUT_OUT4,
    DIGOUT_OUT5,
    DIGOUT_OUT6,
    DIGOUT_OUT7,
    DIGOUT_OUT8,
    DIGOUT_OUT9,
    DIGOUT_OUT10,
    DIGOUT_OUT11,
    DIGOUT_OUT12,
    DIGOUT_OUT13,
    DIGOUT_OUT14,
    DIGOUT_OUT15,
    DIGOUT_OUT16,
    DIGOUT_OUT17,
    NUM_DIGOUT,
} digout_t;



void     digout_init(void);
void     digout_update(digout_t output, int val);
void     digout_clear_all(void);
uint32_t digout_get_status(void);
void     digout_period_check(void);
int      digout_get(digout_t output);

#endif
