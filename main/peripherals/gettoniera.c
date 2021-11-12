/*
 * File:   gettoniera.c
 * Author: Virginia
 *
 * Created on 11 novembre 2021, 15.35
 */

#include "gettoniera.h"
#include "hardwareprofile.h"
#include "gel/debounce/pulsecounter.h"

static pulse_filter_t filter;

void gettoniera_init(void) {
    ABI_GETT_TRIS=TRIS_OUTPUT;
    ABI_GETT_LAT=1;
    GETT1_TRIS=TRIS_INPUT; //2 EURO
    GETT2_TRIS=TRIS_INPUT; //1 EURO
    GETT3_TRIS=TRIS_INPUT; //20 CENT
    GETT4_TRIS=TRIS_INPUT; //50 CENT
    GETT5_TRIS=TRIS_INPUT; //10 CENT

    pulse_filter_init(&filter, COUNT_LOW_PULSE, 1);
}

void gettoniera_reset_count(gett_t i) {
    pulse_clear(&filter, i);
}

void gettoniera_reset_all_count(void) {
    gettoniera_reset_count(GETT1);
    gettoniera_reset_count(GETT2);
    gettoniera_reset_count(GETT3);
    gettoniera_reset_count(GETT4);
    gettoniera_reset_count(GETT5);
}


int gettoniera_take_insert(void) {   
    unsigned int input=0;
    input|=GETT1_PORT;
    input|=GETT2_PORT<<1;
    input|=GETT3_PORT<<2;
    input|=GETT4_PORT<<3;
    input|=GETT5_PORT<<4;
    return pulse_filter(&filter, input, 4);
}

unsigned int gettoniera_get_count(gett_t i) {
    return pulse_count(&filter,i);
}

int gettoniera_get_pulse_level(gett_t i) {
    return pulse_level(&filter, i);
}
