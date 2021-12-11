/*
 * File:   uart2_driver.c
 * Author: Virginia
 *
 * Created on 11 dicembre 2021, 10.09
 */

#include "hardwareprofile.h"
#include "system.h"
#include <stdint.h>
#include <string.h>
#include "gel/timer/timecheck.h"
#include "timer.h"
#include "uart2_driver.h"


#define UART_BUFFER_SIZE 512
#define UART_BUFFER_RX 300
//#define UART_TIMEOUT     100
#define UART_TIMEOUT     20

static uint8_t       uart_tx_buffer[UART_BUFFER_SIZE];
volatile static int  f_tx_on  = 0;
volatile static int  len_tx   = 0;
volatile static int  index_tx = 0;

static uint8_t       uart_rx_buffer[UART_BUFFER_RX];
volatile static int  index_rx = 0;
static unsigned long ts=0;

#define BAUDRATE    115200
#define BAUDRATEREG FOSC / 8 / BAUDRATE - 1


#if BAUDRATEREG > 0xFFFF
#error Cannot set up UART1 for the SYSCLK and BAUDRATE.
Correct values in main.h and uart2.h files
    .
#endif


/*----------------------------------------------------------------------------*/
/*  Inizializzazione UART                                                     */
/*----------------------------------------------------------------------------*/
void uart2_init(void) {
    U2MODEbits.UARTEN = 0;     // Bit15 TX, RX DISABLED, ENABLE at end of func

    UART2_RX_TRIS = 1;
    UART2_TX_TRIS = 0;
    UART2_DIR_TRIS = 0;
    UART2_DIR_LAT=0;


    U2MODEbits.USIDL  = 0;     // Bit13 Continue in Idle
    U2MODEbits.IREN   = 0;     // Bit12 No IR translation
    U2MODEbits.RTSMD  = 0;     // Bit11 Simplex Mode //0?
    U2MODEbits.UEN    = 0;     // Bits8,9 TX,RX enabled, CTS,RTS not
    U2MODEbits.WAKE   = 0;     // Bit7 No Wake up (since we don't sleep here)
    U2MODEbits.LPBACK = 0;     // Bit6 No Loop Back
    U2MODEbits.ABAUD  = 0;     // Bit5 No Autobaud (would require sending '55')
    U2MODEbits.RXINV  = 0;     // Bit4 IdleState = 1
    U2MODEbits.BRGH   = 1;     // Bit3 4 clocks per bit period
    U2MODEbits.PDSEL  = 0;     // Bits1,2 8bit, No Parity
    U2MODEbits.STSEL  = 0;     // Bit0 One Stop Bit

    U2BRG = BAUDRATEREG;     // baud rate

    // Load all values in for U1STA SFR
    U2STAbits.UTXISEL1 = 1;     // Bit15 Interrupt quando il buffer di 4 byte e' vuoto
    U2STAbits.UTXINV   = 0;     // Bit14 N/A, IRDA config => 0 = Idle state is 1, 1 = idle state is 0
    U2STAbits.UTXISEL0 = 0;     // Bit13 Other half of Bit15
    U2STAbits.UTXBRK   = 0;     // Bit11 Sync Break transmission is disabled
    U2STAbits.UTXEN    = 0;     // Bit10 TX pins controlled by periph
    U2STAbits.URXISEL  = 0;     // Bits6,7 Int. on character received

    U2STAbits.ADDEN = 0;     // Bit5 Address Detect Disabled
    U2STAbits.OERR  = 0;     // Bit1 *Clear or Read Only Bit*
    
    IPC7bits.U2RXIP = 3;    // Priority of the U2RXInterrupt
    IPC7bits.U2TXIP = 3;
    
        
    IFS1bits.U2TXIF = 0;     // Clear the Transmit Interrupt Flag
    IEC1bits.U2TXIE = 1;     // Enable Transmit Interrupts
    IFS1bits.U2RXIF = 0;     // Clear the Receive Interrupt Flag
    IEC1bits.U2RXIE = 1;     // Enable Receive Interrupts
    IFS4bits.U2ERIF  = 0;     // Clear Error Interrupt Flag
    IEC4bits.U2ERIE  = 1;     // Enable Error Interrupts

    U2MODEbits.UARTEN = 1;     // And turn the peripheral on
    U2STAbits.UTXEN   = 1;     // Transmit is enabled, UxTX pin is controlled by UARTx
    
}

int uart2_sync_write(uint8_t *data, int len) {
    int i = 0;
    UART2_DIR_LAT=1;
    IEC1bits.U2TXIE = 0;
    while(i < len) {
        if (!U2STAbits.UTXBF)
            U2TXREG = data[i++];
    }
    while (!U2STAbits.TRMT);
    IEC1bits.U2TXIE = 1;
    UART2_DIR_LAT=0;
    return len;
}

int uart2_read_rx_buffer(uint8_t *buffer) {
    memcpy(buffer, uart_rx_buffer, index_rx);
    return index_rx;
}

void uart2_clean_rx_buffer() {
    memset(uart_rx_buffer, 0, index_rx);
    index_rx=0;
}

int uart2_async_write(uint8_t *data, int len) {
    
    if (f_tx_on) return -1;
    else {
        UART2_DIR_LAT=1;
        f_tx_on=1;
        memcpy(uart_tx_buffer, data, len);
        len_tx=len;
        index_tx=0;
        U2TXREG=uart_tx_buffer[index_tx++];
        UART2_DIR_LAT=0;

    }
     return len;
}

void __attribute((interrupt, no_auto_psv)) _U2ErrInterrupt(void)
{
    // In caso di errore lo ignoriamo soltanto
    IFS4bits.U2ERIF = 0;

    if (U2STAbits.OERR)
        U2STAbits.OERR = 0;
}


/*----------------------------------------------------------------------------*/
/*  Interrupt UART 2 - RX                                                     */
/*----------------------------------------------------------------------------*/
void __attribute__((interrupt, no_auto_psv)) _U2RXInterrupt(void)
{
    if (is_expired(ts, get_millis(), 200)) {
        index_rx=0;
        ts=0;
    }
    if (index_rx<UART_BUFFER_RX) {
        ts=get_millis();
        uart_rx_buffer[index_rx++]=U2RXREG;
    }
    
    IFS1bits.U2RXIF = 0;
   
}


/*----------------------------------------------------------------------------*/
/*  Interrupt UART 2 - TX                                                     */
/*----------------------------------------------------------------------------*/
void __attribute__((interrupt, no_auto_psv)) _U2TXInterrupt(void)
{
    
    if (index_tx<len_tx) {
        while(index_tx < len_tx && !U2STAbits.UTXBF)
            U2TXREG=uart_tx_buffer[index_tx++];
    }
    else {
        f_tx_on=0;
    }
    
    IFS1bits.U2TXIF = 0;
    
  
}


//lightmodbus master

//mando richiesta senza aspettare , ricordare che l'ho mandata e controllora ogni tanto se c'è risp, se è giusta e decidere cosa fare
//riprovare se risposta non è corretta