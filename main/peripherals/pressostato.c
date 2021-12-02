#include "hardwareprofile.h"
#include "pressostato.h"
#include <stdint.h>
#include <stdlib.h>


#define NUM_SAMPLES 1
#define TCY_NS      (1000000000ULL / FCY)

#define MINIMUM_ADCS (120 / TCY_NS)
#define ADCS_SET     10


// Il +2 e' per stare larghi
#if ADCS_SET < (MINIMUM_ADCS + 2)
#error "Impostazione troppo veloce per il TAD dell'ADC"
#endif

#define NUM_READINGS 10
static unsigned int pressure_average[NUM_READINGS]={0};
static size_t avarage_index=0;
static size_t first_loop=1;


void pressostato_init(void) {
    ANSELBbits.ANSB15 = 1;
    ADC_TRIS=1;
    // ASAM disabled; ADDMABM disabled; ADSIDL disabled; DONE disabled; SIMSAM Sequential; FORM Absolute decimal result,
    // unsigned, right-justified; SAMP disabled; SSRC Clearing sample bit ends sampling and starts conversion; AD12B
    // 12-bit; ADON enabled; SSRCG disabled;
    AD1CON1 = 0x0000;
    // CSCNA disabled; VCFG0 AVDD; VCFG1 AVSS; ALTS disabled; BUFM disabled; SMPI Generates interrupt after completion
    // of every sample/conversion operation; CHPS 1 Channel;
    AD1CON2 = 0x00;
    // SAMC 0; ADRC FOSC/2; ADCS 0;
    AD1CON3          = 0x0;
    AD1CON3bits.ADCS = ADCS_SET;
    // CH0SA AN0; CH0SB AN0; CH0NB AVSS; CH0NA AVSS;
    AD1CHS0 = 0x00;
    // CSS26 disabled; CSS25 disabled; CSS24 disabled; CSS31 disabled; CSS30 disabled;
    AD1CSSH = 0x00;
    // CSS2 disabled; CSS1 disabled; CSS0 disabled; CSS8 disabled; CSS7 disabled; CSS6 disabled; CSS5 disabled; CSS4
    // disabled; CSS3 disabled;
    AD1CSSL = 0x00;
    // DMABL Allocates 1 word of buffer to each analog input; ADDMAEN disabled;
    AD1CON4 = 0x00;
    // CH123SA disabled; CH123SB CH1=OA2/AN0,CH2=AN1,CH3=AN2; CH123NA disabled; CH123NB CH1=VREF-,CH2=VREF-,CH3=VREF-;
    // AD1CHS123      = 0x00;
    IFS0bits.AD1IF = 0;
}


// Routine che richiede fino a 50 microsecondi, da usare con parsimonia.
unsigned int pressostato_read_input(int channel) {
    unsigned int value = 0, i, tmp, result;
    
    AD1CON1bits.ADON  = 0;
    AD1CON1bits.MODE12 = 0;
    AD1CHS0bits.CH0SA = channel;
    AD1CON1bits.ADON  = 1;
    __delay_us(20);     // TODO: riduci
    
    for (i = 0; i < NUM_SAMPLES; i++)
    {
        AD1CON1bits.SAMP = 1;
        __delay_us(2);     // Attesa di TAD*3 (due microsecondi sono abbondanti)
        AD1CON1bits.SAMP = 0;
        
        while (!IFS0bits.AD1IF)
        {
            __delay_us(1);
        }
        IFS0bits.AD1IF = 0;
        tmp            = ADC1BUF0;
        value += tmp;
    }
    AD1CON1bits.ADON = 0;
    
    result = value / NUM_SAMPLES;
    return result;
}

int pressostato_take_reading(void) {
    unsigned int pressure=pressostato_read_input(ADC_CHANNEL);
    pressure_average[avarage_index]= pressure;
    if (avarage_index==NUM_READINGS-1)  {
        first_loop=0;
    }
    avarage_index=(avarage_index+1)%NUM_READINGS;
    return 1;
}

int pressostato_get_value(unsigned int *pressure) {
    unsigned long pressure_sum=0;
    size_t i;
    size_t num_readings = first_loop ? avarage_index : NUM_READINGS;
    for (i=0; i<num_readings; i++) {
        pressure_sum+=pressure_average[i];
    }
    if (num_readings==0) {
        *pressure=0;
    }
    else {
        *pressure = (uint16_t) (pressure_sum/num_readings);
    }
    return 1;
}