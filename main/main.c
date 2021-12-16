#include "peripherals/system.h"
#include "peripherals/timer.h"
#include "peripherals/hardwareprofile.h"
#include "gel/timer/timecheck.h"
#include "peripherals/digin.h"
#include "peripherals/digout.h"
#include "peripherals/pwm.h"
#include "peripherals/i2c_devices.h"
#include "i2c_ports/PIC/i2c_bitbang.h"
#include "uart1_driver.h"
#include "pwoff.h"
#include "model/model.h"
#include "controller/controller.h"
#include "controller/modbus_server.h"
#include "gettoniera.h"
#include "i2c_ports/PIC/i2c_bitbang.h"
#include "spi.h"
#include "temperature.h"
#include "pressostato.h"
#include "spi_devices/adc/MCP3202/mcp3202.h"
#include "spi_devices.h"
#include "sht3.h"
#include "led.h"
#include "uart2_driver.h"
#include "modbus_exp.h"


static model_t model;


int main(void) {
    unsigned long heartbit_ts = 0;
    unsigned long t = 0, ttemp=0;
    
    system_init();   
    i2c_bitbang_init(3);
    spi_init();
    timer_init();
    pwoff_init();
    digin_init();
    digout_init();
    pwm_init();
    uart1_init();
    uart2_init();
    gettoniera_init();
    modbus_server_init();
    modbus_exp_init();
    pressostato_init();
    led_init();
    model_init(&model);
    controller_init(&model);


    int x = 0;
   
    for(;;) {
        ClrWdt();
        modbus_server_manage(&model);   
 
        if (is_expired(heartbit_ts, get_millis(), 1000UL)) {
            LED_RUN_LAT = !LED_RUN_LAT;
            heartbit_ts = get_millis();
            x = !x;
        }
        
        if (is_expired(t, get_millis(), 10UL)) {
            digin_take_reading();
            digout_period_check();
            led_period_check();
            modbus_exp_period_check();
            
            if (gettoniera_take_insert()) {
                model.pwoff.credito+=gettoniera_get_count(GETT1);
                controller_update_pwoff(&model);
                gettoniera_reset_count(GETT1);
            }
            t = get_millis();
        }      
        
        if (is_expired(ttemp, get_millis(), 1000UL)) {
            temperature_take_reading();
            //pressostato_take_reading();            
            ttemp=get_millis();
            
            
        }
        
    }
    
    return 0;
}