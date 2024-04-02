/*
 * File:   pwm.c
 * Author: Virginia
 *
 * Created on 11 novembre 2021, 8.44
 */

#include "hardwareprofile.h"
#include "pwm.h"
#include <xc.h>

#define PERIOD (0xFFFF/16)

void pwm_init(void) {
    PWM_1_0_10_TRIS = TRIS_OUTPUT; 
    PWM_2_0_10_TRIS = TRIS_OUTPUT; 

    // Set MCCP operating mode
    CCP3CON1Lbits.CCSEL = 0;         // Set MCCP operating mode (OC mode)
    CCP3CON1Lbits.MOD = 0b0101;      // Set mode (Buffered Dual-Compare/PWM mode)
    
    //Configure MCCP Timebase
    CCP3CON1Lbits.T32 = 0;           // Set timebase width (16-bit)
    CCP3CON1Lbits.TMRSYNC = 0;       // Set timebase synchronization (Synchronized)
    CCP3CON1Lbits.CLKSEL = 0b000;    // Set the clock source (Tcy)
    CCP3CON1Lbits.TMRPS = 0b00;      // Set the clock pre-scaler (1:1)
    CCP3CON1Hbits.TRIGEN = 0;        // Set Sync/Triggered mode (Synchronous)
    CCP3CON1Hbits.SYNC = 0b00000;    // Select Sync/Trigger source (Self-sync)
    
    //Configure MCCP output for PWM signal
    CCP3CON2Hbits.OCAEN = 1; // Enable desired output signals
    CCP3CON3Hbits.OUTM = 0b000;       // Set advanced output modes (Standard output)
    CCP3CON3Hbits.POLACE = 0;         // Configure output polarity (Active High)
    CCP3TMRL = 0x0000;                // Initialize timer prior to enable module.
    CCP3PRL = PERIOD;                 // Configure timebase period 
    CCP3RA = 0x0000;                  // Set the rising edge compare value
    CCP3RB = PERIOD;                       // Set the falling edge compare value
    CCP3CON1Lbits.CCPON = 1;          // Turn on MCCP module
    
    // Set MCCP operating mode
    CCP2CON1Lbits.CCSEL = 0;         // Set MCCP operating mode (OC mode)
    CCP2CON1Lbits.MOD = 0b0101;      // Set mode (Buffered Dual-Compare/PWM mode)
    
    //Configure MCCP Timebase
    CCP2CON1Lbits.T32 = 0;           // Set timebase width (16-bit)
    CCP2CON1Lbits.TMRSYNC = 0;       // Set timebase synchronization (Synchronized)
    CCP2CON1Lbits.CLKSEL = 0b000;    // Set the clock source (Tcy)
    CCP2CON1Lbits.TMRPS = 0b00;      // Set the clock pre-scaler (1:1)
    CCP2CON1Hbits.TRIGEN = 0;        // Set Sync/Triggered mode (Synchronous)
    CCP2CON1Hbits.SYNC = 0b00000;    // Select Sync/Trigger source (Self-sync)
    
    //Configure MCCP output for PWM signal
    CCP2CON2Hbits.OCAEN = 1;          // Enable desired output signals
    CCP2CON3Hbits.OUTM = 0b000;       // Set advanced output modes (Standard output)
    CCP2CON3Hbits.POLACE = 0;         // Configure output polarity (Active High)
    CCP2TMRL = 0x0000;                // Initialize timer prior to enable module.
    CCP2PRL = PERIOD;                 // Configure timebase period 
    CCP2RA = 0x0000;                  // Set the rising edge compare value
    CCP2RB = PERIOD;                  // Set the falling edge compare value
    CCP2CON1Lbits.CCPON = 1;          // Turn on MCCP module
    
    pwm_set(PWM_CHANNEL_ROTATION, 0);
    pwm_set(PWM_CHANNEL_VENTILATION, 0);
}


void pwm_set(pwm_channel_t channel, uint8_t perc) {
    uint16_t res = (uint16_t)((unsigned long)PERIOD/100)*perc;
    if (res==0) {
        res = 1;
    }

    if (perc >= 100) {
        res = PERIOD;
    }
    
    switch (channel) {
        case PWM_CHANNEL_ROTATION:
            CCP2RB = res;
            break;
        case PWM_CHANNEL_VENTILATION:
            CCP3RB = res;
            break;
    }
}