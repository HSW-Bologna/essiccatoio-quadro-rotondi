#ifndef PWM_H_INCLUDED
#define PWM_H_INCLUDED

#include <stdint.h>



typedef enum {
    PWM_CHANNEL_ROTATION = 0,
    PWM_CHANNEL_VENTILATION,
} pwm_channel_t ;


void pwm_init(void);
void pwm_set(pwm_channel_t channel, uint8_t perc);

#endif