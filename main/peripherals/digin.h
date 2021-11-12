#ifndef DIGIN_H_INCLUDED
#define DIGIN_H_INCLUDED

typedef enum {
    DIGIN_IN0=0, DIGIN_IN1, DIGIN_IN2, DIGIN_IN3, DIGIN_NUM
} digin_t ;


void digin_init(void);
int digin_get(digin_t digin);
int digin_take_reading(void);
unsigned int digin_get_inputs(void);

#endif
