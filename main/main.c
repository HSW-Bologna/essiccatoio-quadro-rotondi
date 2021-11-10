#include "peripherals/system.h"
#include "peripherals/timer.h"
#include "peripherals/hardwareprofile.h"
#include "gel/timer/timecheck.h"


int main(void) {
    unsigned long heartbit_ts = 0;
    
    system_init();
    timer_init();
    
    for(;;) {
        if (is_expired(heartbit_ts, get_millis(), 1000UL)) {
            LED_RUN_LAT = !LED_RUN_LAT;
            heartbit_ts = get_millis();
        }
    }
    
    return 0;
}