#include "peripherals/system.h"
#include "peripherals/timer.h"
#include "peripherals/hardwareprofile.h"
#include "gel/timer/timecheck.h"
#include "peripherals/digin.h"
#include "peripherals/digout.h"
#include "peripherals/pwm.h"
#include "peripherals/i2c_devices.h"
#include "i2c_ports/PIC/i2c_bitbang.h"
#include "uart_driver.h"
#include "pwoff.h"
#include "model/model.h"
#include "controller/controller.h"
#include "controller/modbus_server.h"
#include "gettoniera.h"

static model_t model;


int main(void) {
    unsigned long heartbit_ts = 0;
    unsigned long t = 0;
  
    system_init();
    timer_init();
    pwoff_init();
    digin_init();
    digout_init();
    pwm_init();
    i2c_bitbang_init(0);
    uart_init();
    gettoniera_init();
    modbus_server_init();
    
    model_init(&model);
    controller_init(&model);
   
    for(;;) {
        ClrWdt();
        modbus_server_manage();
        
        if (is_expired(heartbit_ts, get_millis(), 1000UL)) {
            LED_RUN_LAT = !LED_RUN_LAT;
            heartbit_ts = get_millis();
            
        }
        if (is_expired(t, get_millis(), 10UL)) {
            //gettoniera_take_insert();
            if (gettoniera_take_insert()) {
                model.pwoff.credito+=gettoniera_get_count(GETT1);
                controller_update_pwoff(&model);
                gettoniera_reset_count(GETT1);
            }
            t = get_millis();
        }      
    }
    
    return 0;
}