#include "peripherals/digout.h"
#include "peripherals/digin.h"
#include "ventilazione.h"
#include "peripherals/timer.h"
#include "gel/timer/timecheck.h"
#include "peripherals/pwm.h"


static unsigned long timestamp = 0;


void ventilazione_on_full(void) {
    if (!digout_get(DIGOUT_VENTILAZIONE)) {
        timestamp = get_millis();
    }
    pwm_set(PWM_CHANNEL_VENTILATION, 30);
    digout_update(DIGOUT_VENTILAZIONE, 1);
}


unsigned long ventilazione_off(void) {
    unsigned long res = 0;
    
    if (digout_get(DIGOUT_VENTILAZIONE)) {
        res = time_interval(timestamp, get_millis());
    }
    digout_update(DIGOUT_VENTILAZIONE, 0);
    
    return res;
}


int ventilazione_ok(void) {
    return digin_get(DIGIN_VENTOLA) == 0;
}

