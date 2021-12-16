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
    mcp23008_set_gpio_direction_register(io_driver, OUTPUT_REGISTER);
    OUTPUT_8_TRIS=TRIS_OUTPUT;
    OUTPUT_9_TRIS=TRIS_OUTPUT;
    change_i2c=1;
    change_485=1;
}

void digout_update(digout_t output, int val) {
    val = val > 0;
    switch(output) {
        case DIGOUT_OUT1 :
            status_i2c = SETBIT(status_i2c, 0, val);
            change_i2c=1;
            break;
        case DIGOUT_OUT2 :
            status_i2c = SETBIT(status_i2c, 1, val);
            change_i2c=1;
            break;
        case DIGOUT_OUT3 :
            status_i2c = SETBIT(status_i2c, 2, val);
            change_i2c=1;
            break;
        case DIGOUT_OUT4 :
            status_i2c = SETBIT(status_i2c, 3, val);
            change_i2c=1;
            break;
        case DIGOUT_OUT5 :
            status_i2c = SETBIT(status_i2c, 4, val);
            change_i2c=1;
            break;
        case DIGOUT_OUT6 :
            status_i2c = SETBIT(status_i2c, 5, val);
            change_i2c=1;
            break;
        case DIGOUT_OUT7 :
            status_i2c = SETBIT(status_i2c, 6, val);
            change_i2c=1;
            break;
        case DIGOUT_OUT8 :
            OUTPUT_8_LAT=val;
            break;
        case DIGOUT_OUT9 :
            OUTPUT_9_LAT=val;
            break;
        case DIGOUT_OUT10 :
            status_485 = SETBIT(status_485, 0, val);
            change_485=1;
            break;
        case DIGOUT_OUT11 :
            status_485 = SETBIT(status_485, 1, val);
            change_485=1;
            break;
        case DIGOUT_OUT12 :
            status_485 = SETBIT(status_485, 2, val);
            change_485=1;
            break;
        case DIGOUT_OUT13 :
            status_485 = SETBIT(status_485, 3, val);
            change_485=1;
            break;
        case DIGOUT_OUT14 :
            status_485 = SETBIT(status_485, 4, val);
            change_485=1;
            break;
        case DIGOUT_OUT15 :
            status_485 = SETBIT(status_485, 5, val);
            change_485=1;
            break;
        case DIGOUT_OUT16 :
            status_485 = SETBIT(status_485, 6, val);
            change_485=1;
            break;
        case DIGOUT_OUT17 :
            status_485 = SETBIT(status_485, 7, val);
            change_485=1;
            break;
        default:
            break;
    }
}

int digout_get(digout_t output) {
    switch(output) {
        case DIGOUT_OUT1 :
            return GETBIT(status_i2c, 0);
            break;
        case DIGOUT_OUT2 :
            return GETBIT(status_i2c, 1);
            break;
        case DIGOUT_OUT3 :
            return GETBIT(status_i2c, 2);
            break;
       case DIGOUT_OUT4 :
            return GETBIT(status_i2c, 3);
            break;
        case DIGOUT_OUT5 :
            return GETBIT(status_i2c, 4);
            break;
        case DIGOUT_OUT6 :
            return GETBIT(status_i2c, 5);
            break;
        case DIGOUT_OUT7 :
            return GETBIT(status_i2c, 6);
            break;
        case DIGOUT_OUT8 :
            return OUTPUT_8_LAT;
            break;
        case DIGOUT_OUT9 :
            return OUTPUT_9_LAT;
            break;
        case DIGOUT_OUT10 :
            return GETBIT(status_485, 0);
            break;
        case DIGOUT_OUT11 :
            return GETBIT(status_485, 1);
            break;
        case DIGOUT_OUT12 :
            return GETBIT(status_485, 2);
            break;
        case DIGOUT_OUT13 :
            return GETBIT(status_485, 3);
            break;
        case DIGOUT_OUT14 :
            return GETBIT(status_485, 4);
            break;
       case DIGOUT_OUT15 :
            return GETBIT(status_485, 5);
            break;
       case DIGOUT_OUT16 :
            return GETBIT(status_485, 6);
            break;
        case DIGOUT_OUT17 :
            return GETBIT(status_485, 7);
            break;
        default:
            break;
    }
}

void digout_period_check(void) {
    if (change_i2c) {
        mcp23008_set_gpio_register(io_driver,status_i2c);
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
