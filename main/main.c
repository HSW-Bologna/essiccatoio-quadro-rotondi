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
#include "controller/riscaldamento.h"
#include "gettoniera.h"
#include "i2c_ports/PIC/i2c_bitbang.h"
#include "spi.h"
#include "ptc.h"
#include "peripherals/sht3.h"
#include "pressostato.h"
#include "spi_devices/adc/MCP3202/mcp3202.h"
#include "spi_devices.h"
#include "sht3.h"
#include "led.h"
#include "uart2_driver.h"
#include "modbus_exp.h"
#include "cycle.h"
#include "alarms.h"


static model_t model;


int main(void) {
    unsigned long heartbit_ts = 0;
    unsigned long t = 0, cycle_ts=0,t500=0, pulse_ts=0;
    
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
    
    for(;;) {
        ClrWdt();
        modbus_server_manage(&model);  
        riscaldamento_manage(&model, cycle_in_test());
 
        if (is_expired(heartbit_ts, get_millis(), 1000UL)) {
            LED_RUN_LAT = !LED_RUN_LAT;
            
            uint16_t remaining_time = cycle_get_remaining_time();
            if (remaining_time != model.pwoff.remaining_time) {
                model.pwoff.remaining_time = remaining_time;
                controller_update_pwoff(&model);
            }
            
            heartbit_ts = get_millis();
        } else if (is_expired(t500,get_millis(),500UL)) {
            modbus_exp_read_input_status(SLAVE_DEFAULT_ADDRESS);
            ptc_take_reading();
            
            ptc_get_value(&model.adc_ptc1, &model.adc_ptc2);
            ptc_get_temperature(&model.temperatura_ptc1, &model.temperatura_ptc2);
            sht3_read(&model.temperatura_sht, &model.umidita_sht);
            
            t500=get_millis();
        } if (is_expired(cycle_ts, get_millis(), 100UL)) {
            cycle_manage_callbacks(&model);
            digout_period_check();
            led_period_check();
            modbus_exp_period_check();
            cycle_ts = get_millis();
        }   
        
        if (is_expired(t, get_millis(), 10UL)) {
            digin_take_reading();
            
            if (check_alarms(&model)) {
                cycle_send_event(&model, CYCLE_EVENT_CODE_ALARM);
            }
            
            t = get_millis();
        }      
        
        if (is_expired(pulse_ts, get_millis(), 5UL)) {
            if (gettoniera_take_insert() | digin_pulses_take_reading()) {
                model.pwoff.coins[0] += gettoniera_get_count(GETT1);
                model.pwoff.coins[1] += gettoniera_get_count(GETT2);
                model.pwoff.coins[2] += gettoniera_get_count(GETT3);
                model.pwoff.coins[3] += gettoniera_get_count(GETT4);
                model.pwoff.coins[4] += gettoniera_get_count(GETT5);
                model.pwoff.coins[5] += digin_get_pulses();

                controller_update_pwoff(&model);
                gettoniera_reset_all_count();
                digin_clear_pulses();
            }
            pulse_ts = get_millis();
        }      
        
        Idle();
    }
    return 0;
}