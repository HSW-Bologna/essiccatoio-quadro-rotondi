/*
 * File:   digin.c
 * Author: Virginia
 *
 * Created on 11 novembre 2021, 8.24
 */

#include "digin.h"
#include "hardwareprofile.h"
#include "gel/debounce/debounce.h"

static debounce_filter_t filter;

void digin_init(void) {
    INPUT_0_TRIS=TRIS_INPUT;
    INPUT_1_TRIS=TRIS_INPUT;
    INPUT_2_TRIS=TRIS_INPUT;
    INPUT_3_TRIS=TRIS_INPUT;
    
    debounce_filter_init(&filter);
}

int digin_get(digin_t digin) {
   return debounce_read(&filter, digin);
}

int digin_take_reading(void) {
    unsigned int input=0;
    input|=INPUT_0_PORT;
    input|=(INPUT_1_PORT)<<1;
    input|=(INPUT_2_PORT)<<2;
    input|=(INPUT_3_PORT)<<3;
    return debounce_filter(&filter, input, 10);
}

unsigned int digin_get_inputs(void) {
    return debounce_value(&filter);
}
