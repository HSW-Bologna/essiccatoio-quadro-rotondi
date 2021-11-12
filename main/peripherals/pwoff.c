/*
 * File:   pwoff.c
 * Author: Virginia
 *
 * Created on 11 novembre 2021, 16.47
 */

#include <xc.h>
#include <string.h>
#include "hardwareprofile.h"
#include "pwoff.h"


static void (*pwoff_callback)(void) = NULL;


void pwoff_init(void) {
    INT1_TRIS = TRIS_INPUT;
    IOCNBbits.IOCNB7 = 1; /* Interrupt trigger su transizioni high-to-low */
    IOCPUBbits.IOCPUB7 = 0; /* Disabilitare il pull-up interno */
    IOCPDBbits.IOCPDB7 = 0; /* Disabilitare il pull-down interno */
    IPC4bits.IOCIP = 0x05; /* maximum priority */
    IFS1bits.IOCIF   = 0; /* Interrupt flag */
    PADCONbits.IOCON = 1; /* Interrupt-on-change enable bit */
    IEC1bits.IOCIE   = 1; /* Interrupt enable bit globale */
}



void pwoff_set_callback(void (*cb)(void)) {
    pwoff_interrupt_enable(0);
    pwoff_callback = cb;
    pwoff_interrupt_enable(1);    
}


void pwoff_interrupt_enable(int i) {
    IEC1bits.IOCIE   = i; 
}


void __attribute__((interrupt, no_auto_psv)) _IOCInterrupt() {
    if (pwoff_callback != NULL) {
        pwoff_callback();
        __delay_ms(2000);
    }
    IFS1bits.IOCIF = 0;
}


