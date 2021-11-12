/*
 * File:   digout.c
 * Author: Virginia
 *
 * Created on 11 novembre 2021, 8.29
 */

#include "digout.h"
#include "peripherals/hardwareprofile.h"
#include "system.h"
#include "i2c_devices/io/MCP23008/mcp23008.h"
#include "i2c_devices.h"


void digout_init(void) {
    mcp23008_set_gpio_direction_register(io_driver, OUTPUT_REGISTER);
    OUTPUT_8_TRIS=TRIS_OUTPUT;
    OUTPUT_9_TRIS=TRIS_OUTPUT;
}

void digout_update(digout_t output, int val) {
    val = val > 0;
    switch(output) {
        case DIGOUT_OUT1 :
            mcp23008_set_gpio_level(io_driver, DIGOUT_OUT1, val);
            break;
        case DIGOUT_OUT2 :
            mcp23008_set_gpio_level(io_driver, DIGOUT_OUT2, val);
            break;
        case DIGOUT_OUT3 :
            mcp23008_set_gpio_level(io_driver, DIGOUT_OUT3, val);
            break;
        case DIGOUT_OUT4 :
            mcp23008_set_gpio_level(io_driver, DIGOUT_OUT4, val);
            break;
        case DIGOUT_OUT5 :
            mcp23008_set_gpio_level(io_driver, DIGOUT_OUT5, val);
            break;
        case DIGOUT_OUT6 :
            mcp23008_set_gpio_level(io_driver, DIGOUT_OUT6, val);
            break;
        case DIGOUT_OUT7 :
            mcp23008_set_gpio_level(io_driver, DIGOUT_OUT7, val);
            break;
        case DIGOUT_OUT8 :
            OUTPUT_8_LAT=val;
            break;
        case DIGOUT_OUT9 :
            OUTPUT_9_LAT=val;
            break;
        default:
            break;
    }
}

uint8_t digout_get_status(void) {
    uint8_t res=0;
    mcp23008_get_gpio_register(io_driver, &res);
    res|=OUTPUT_8_LAT<<8;
    res|=OUTPUT_9_LAT<<9;
    return res;
}


void digout_clear_all (void) {
    mcp23008_set_gpio_register(io_driver, OUTPUT_REGISTER);
    OUTPUT_8_LAT = 0;
    OUTPUT_8_LAT = 0;
}
