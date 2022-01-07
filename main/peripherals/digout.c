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
#include "modbus_exp.h"


#define SETBIT(map, bit, value) ((map & (~(1 << bit))) | (value << bit))
#define GETBIT(map, bit) ((map >> bit) & 1)


static int change_i2c, change_485;
static uint8_t status_i2c = 0;
static uint16_t status_485 = 0;


void digout_init(void) {
    mcp23008_set_gpio_direction_register(output_driver, 0);
    OUTPUT_8_TRIS=TRIS_OUTPUT;
    OUTPUT_9_TRIS=TRIS_OUTPUT;
    change_i2c=1;
    change_485=1;
}


void digout_update(digout_t output, int val) {
    val = val > 0;
    const size_t transform[] = {
        [DIGOUT_OUT1] = 6, 
        [DIGOUT_OUT2] = 5,
        [DIGOUT_OUT3] = 4,
        [DIGOUT_OUT4] = 3,
        [DIGOUT_OUT5] = 2,
        [DIGOUT_OUT6] = 1,
        [DIGOUT_OUT7] = 0,
    };
    
    
    switch(output) {
        case DIGOUT_OUT1...DIGOUT_OUT7 : {
            size_t i = transform[output];
            if (GETBIT(status_i2c, i) != (val > 0)) {
                status_i2c = SETBIT(status_i2c, i, val);
                change_i2c=1;
            }
            break;
        }
        case DIGOUT_OUT8 :
            OUTPUT_8_LAT=val;
            break;
        case DIGOUT_OUT9 :
            OUTPUT_9_LAT=val;
            break;
        case DIGOUT_OUT10...DIGOUT_OUT17 : {
            size_t i = output - DIGOUT_OUT10;
            if (GETBIT(status_485, i) != (val > 0)) {
                status_485 = SETBIT(status_485, i, val);
                change_485=1;
            }
            break;
        }
        default:
            break;
    }
}


int digout_get(digout_t output) {
    switch(output) {
        case DIGOUT_OUT1 :
            return GETBIT(status_i2c, 6);
        case DIGOUT_OUT2 :
            return GETBIT(status_i2c, 5);
        case DIGOUT_OUT3 :
            return GETBIT(status_i2c, 4);
       case DIGOUT_OUT4 :
            return GETBIT(status_i2c, 3);
        case DIGOUT_OUT5 :
            return GETBIT(status_i2c, 2);
        case DIGOUT_OUT6 :
            return GETBIT(status_i2c, 1);
        case DIGOUT_OUT7 :
            return GETBIT(status_i2c, 0);
        case DIGOUT_OUT8 :
            return OUTPUT_8_LAT;
        case DIGOUT_OUT9 :
            return OUTPUT_9_LAT;
        case DIGOUT_OUT10 :
            return GETBIT(status_485, 0);
        case DIGOUT_OUT11 :
            return GETBIT(status_485, 1);
        case DIGOUT_OUT12 :
            return GETBIT(status_485, 2);
        case DIGOUT_OUT13 :
            return GETBIT(status_485, 3);
        case DIGOUT_OUT14 :
            return GETBIT(status_485, 4);
       case DIGOUT_OUT15 :
            return GETBIT(status_485, 5);
       case DIGOUT_OUT16 :
            return GETBIT(status_485, 6);
        case DIGOUT_OUT17 :
            return GETBIT(status_485, 7);
        default:
            break;
    }
    return 0;
}

void digout_period_check(void) {
    if (change_i2c) {
        mcp23008_set_gpio_register(output_driver,status_i2c);
        change_i2c=0;
    }
    if (change_485) {
        if (!modbus_exp_is_waiting()) {
        modbus_exp_write_coils(SLAVE_DEFAULT_ADDRESS, status_485);
        change_485=0;
        }
    }
}

uint32_t digout_get_status(void) {
    uint32_t res=status_i2c;
    res|=OUTPUT_8_LAT<<8;
    res|=OUTPUT_9_LAT<<9;
    res|=status_485<<10;
    return res;
}


void digout_clear_all (void) {
    status_i2c=0;
    OUTPUT_8_LAT=0;
    OUTPUT_9_LAT=0;
    change_i2c=1;
    status_485=0;
    change_485=1;
}
