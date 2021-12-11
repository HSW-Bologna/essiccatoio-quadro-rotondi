#ifndef LED_H_INCLUDED
#define LED_H_INCLUDED

#include <string.h>
#include <stdint.h>

typedef enum {
   LED0=0, LED1, LED2, LED_NUM
} led_t;

#define OUTPUT_REGISTER 0x00

void led_init(void);
void led_update(led_t output, int val);
void led_clear_all (void);
uint8_t led_get_status(void);
void led_period_check(void);

#endif