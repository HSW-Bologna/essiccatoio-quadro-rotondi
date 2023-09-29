/*
 * File:   digin.c
 * Author: Virginia
 *
 * Created on 11 novembre 2021, 8.24
 */

#include "digin.h"
#include "hardwareprofile.h"
#include "gel/debounce/debounce.h"
#include "i2c_devices/io/MCP23008/mcp23008.h"
#include "i2c_devices.h"
#include "gel/debounce/pulsecounter.h"


#define GETBIT(map, bit) (((map) >> (bit)) & 1)

static debounce_filter_t filter;
static pulse_filter_t pulses;


static uint16_t status = 0;


void digin_init(void) {
    INPUT_0_TRIS=TRIS_INPUT;
    INPUT_1_TRIS=TRIS_INPUT;
    INPUT_2_TRIS=TRIS_INPUT;
    INPUT_3_TRIS=TRIS_INPUT;
    debounce_filter_init(&filter);
    pulse_filter_init(&pulses, COUNT_LOW_PULSE, 1);
    
    mcp23008_set_gpio_direction_register(input_driver, 0xFF);
}


int digin_get(digin_t digin) {
    switch(digin) {
        case DIGIN_0...DIGIN_11:
            return debounce_read(&filter, digin);
            
        case DIGIN_12...DIGIN_23:
            return GETBIT(status, digin - DIGIN_12);
        
        default:
            return 0;
    }
}

int digin_take_reading(void) {
    unsigned int input=0;

    input |=!INPUT_0_PORT;
    input |=(!INPUT_1_PORT)<<1;
    input |=(!INPUT_2_PORT)<<2;
    input |=(!INPUT_3_PORT)<<3;
    
    uint8_t value = 0;
    mcp23008_get_gpio_register(input_driver, &value);
    input |= ((~value) & 0xFF) << 4;
    
    return debounce_filter(&filter, input, 5);
}


int digin_pulses_take_reading(void) {
    return pulse_filter(&pulses, INPUT_3_PORT, 5);
}


int digin_get_pulses(void) {
    return pulse_count(&pulses, 0);
}


void digin_clear_pulses(void) {
    pulse_clear(&pulses, 0);
}


void digin_exp_take_reading(uint16_t buffer) {
    status=buffer;
}

unsigned int digin_get_inputs(void) {
    return debounce_value(&filter) | status<<12;
}
