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
    CCP1CON1Lbits.CCSEL = 0;         // Set MCCP operating mode (OC mode)
    CCP1CON1Lbits.MOD = 0b0101;      // Set mode (Buffered Dual-Compare/PWM mode)
    
    //Configure MCCP Timebase
    CCP1CON1Lbits.T32 = 0;           // Set timebase width (16-bit)
    CCP1CON1Lbits.TMRSYNC = 0;       // Set timebase synchronization (Synchronized)
    CCP1CON1Lbits.CLKSEL = 0b000;    // Set the clock source (Tcy)
    CCP1CON1Lbits.TMRPS = 0b00;      // Set the clock pre-scaler (1:1)
    CCP1CON1Hbits.TRIGEN = 0;        // Set Sync/Triggered mode (Synchronous)
    CCP1CON1Hbits.SYNC = 0b00000;    // Select Sync/Trigger source (Self-sync)
    
    //Configure MCCP output for PWM signal
    CCP1CON2Hbits.OCAEN = 0;
    CCP1CON2Hbits.OCBEN = 0;
    CCP1CON2Hbits.OCCEN = 0;
    CCP1CON2Hbits.OCDEN = 0;
    CCP1CON2Hbits.OCFEN = 1;          // Enable desired output signals (OC1F)
    CCP1CON2Hbits.OCEEN = 0;          // Enable desired output signals (OC1F)

    CCP1CON3Hbits.OUTM = 0b000;       // Set advanced output modes (Standard output)
    CCP1CON3Hbits.POLACE = 0;         // Configure output polarity (Active High)
    CCP1TMRL = 0x0000;                // Initialize timer prior to enable module.
    CCP1PRL = PERIOD;                 // Configure timebase period 
    // CCP1RA = 0x0000;                  // Set the rising edge compare value
    CCP1RA = 1;
    CCP1RB = 0;                       // Set the falling edge compare value
    CCP1CON1Lbits.CCPON = 1;          // Turn on MCCP module
    
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
    CCP2CON2Hbits.OCAEN = 1;          // Enable desired output signals (OC1F)
    CCP2CON2Hbits.OCBEN = 0;
    CCP2CON3Hbits.OUTM = 0b000;       // Set advanced output modes (Standard output)
    CCP2CON3Hbits.POLACE = 0;         // Configure output polarity (Active High)
    CCP2TMRL = 0x0000;                // Initialize timer prior to enable module.
    CCP2PRL = PERIOD;                 // Configure timebase period 
    // CCP2RA = 0x0000;                  // Set the rising edge compare value
    CCP2RA = 1;
    CCP2RB = 0x0000;                  // Set the falling edge compare value
    CCP2CON1Lbits.CCPON = 1;          // Turn on MCCP module
    
    pwm_set(0, 1);
    pwm_set(0, 2);
}


void pwm_set(uint8_t perc, int i) {
    uint16_t res = (uint16_t)((unsigned long)PERIOD/100)*perc;
    if (res==0) {
        res = 1;
    }

    if (perc >= 100) {
        res = PERIOD;
    }
    
    if (i==1) {
        CCP1RA = PERIOD - res;
    } else if (i==2) {
        CCP2RA = PERIOD - res;
    }
}