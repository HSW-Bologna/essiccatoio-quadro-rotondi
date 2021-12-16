/*
 * File:   digin.c
 * Author: Virginia
 *
 * Created on 11 novembre 2021, 8.24
 */

#include "digin.h"
#include "hardwareprofile.h"
#include "gel/debounce/debounce.h"

#define GETBIT(map, bit) ((map >> bit) & 1)

static debounce_filter_t filter;

static uint16_t status = 0;

void digin_init(void) {
    INPUT_0_TRIS=TRIS_INPUT;
    INPUT_1_TRIS=TRIS_INPUT;
    INPUT_2_TRIS=TRIS_INPUT;
    INPUT_3_TRIS=TRIS_INPUT;
    debounce_filter_init(&filter);
}

int digin_get(digin_t digin) {
    switch(digin) {
        case DIGIN_IN0:
            return debounce_read(&filter, digin);
            break;
        case DIGIN_IN1:
            return debounce_read(&filter, digin);          
            break;
        case DIGIN_IN2:
            return debounce_read(&filter, digin);            
            break;
        case DIGIN_IN3:
            return debounce_read(&filter, digin);
            break;
        case DIGIN_IN4:
            return GETBIT(status,0);
            break;
        case DIGIN_IN5:
            return GETBIT(status,1);
            break;
        case DIGIN_IN6:
            return GETBIT(status,2);
            break;
        case DIGIN_IN7:
            return GETBIT(status,3);
            break;
        case DIGIN_IN8:
            return GETBIT(status,4);
            break;
        case DIGIN_IN9:
            return GETBIT(status,5);
            break;
        case DIGIN_IN10:
            return GETBIT(status,6);
            break;
        case DIGIN_IN11:
            return GETBIT(status,7);
            break;
        case DIGIN_IN12:
            return GETBIT(status,8);
            break;
        case DIGIN_IN13:
            return GETBIT(status,9);
            break;
        case DIGIN_IN14:
            return GETBIT(status,10);
            break;
        case DIGIN_IN15:
            return GETBIT(status,11);
            break;
        default:
            break;
    }
}

int digin_take_reading(void) {
    unsigned int input=0;
    input|=INPUT_0_PORT;
    input|=(INPUT_1_PORT)<<1;
    input|=(INPUT_2_PORT)<<2;
    input|=(INPUT_3_PORT)<<3;
    return debounce_filter(&filter, input, 10);
}

void digin_exp_take_reading(uint16_t buffer) {
    status=buffer;
}

unsigned int digin_get_inputs(void) {
    return debounce_value(&filter) | status<<4;
}
