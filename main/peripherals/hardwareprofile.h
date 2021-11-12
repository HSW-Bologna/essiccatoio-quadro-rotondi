#ifndef HARDWAREPROFILE_H_INCLUDED
#define HARDWAREPROFILE_H_INCLUDED

#include <xc.h>
#include "system.h"

#define OUTPUT_GPIO 0
#define INPUT_GPIO 1

#define TRIS_OUTPUT 0
#define TRIS_INPUT  1


#define RS485_DIR_TRIS TRISCbits.TRISC6
#define RS485_DIR_LAT  LATCbits.LATC6

#define LED_RUN_TRIS TRISAbits.TRISA11
#define LED_RUN_LAT LATAbits.LATA11

#define SPI_CS4_TRIS TRISBbits.TRISB10
#define SPI_CS4_LAT LATBbits.LATB10
#define SPI_CS3_TRIS TRISBbits.TRISB11
#define SPI_CS3_LAT LATBbits.LATB11
#define SPI_CS2_TRIS TRISBbits.TRISB12
#define SPI_CS2_LAT LATBbits.LATB12
#define SPI_CS1_TRIS TRISBbits.TRISB13
#define SPI_CS1_LAT LATBbits.LATB13
#define SPI_CLK_TRIS TRISAbits.TRISA10
#define SPI_CLK_LAT LATAbits.LATA10
#define SPI_DOUT_TRIS TRISAbits.TRISA7
#define SPI_DOUT_LAT LATAbits.LATA7
#define SPI_DIN_TRIS TRISBbits.TRISB14
#define SPI_DIN_PORT PORTBbits.RB14


#define INPUT_0_TRIS TRISAbits.TRISA1
#define INPUT_0_PORT PORTAbits.RA1
#define INPUT_1_TRIS TRISAbits.TRISA12
#define INPUT_1_PORT PORTAbits.RA12
#define INPUT_2_TRIS TRISAbits.TRISA8
#define INPUT_2_PORT PORTAbits.RA8
#define INPUT_3_TRIS TRISAbits.TRISA13
#define INPUT_3_PORT PORTAbits.RA13


#define ABI_GETT_TRIS TRISBbits.TRISB6
#define ABI_GETT_LAT LATBbits.LATB6
#define GETT1_TRIS TRISBbits.TRISB5
#define GETT1_PORT PORTBbits.RB5
#define GETT2_TRIS TRISAbits.TRISA14
#define GETT2_PORT PORTAbits.RA14
#define GETT3_TRIS TRISCbits.TRISC5
#define GETT3_PORT PORTCbits.RC5
#define GETT4_TRIS TRISCbits.TRISC4
#define GETT4_PORT PORTCbits.RC4
#define GETT5_TRIS TRISCbits.TRISC3
#define GETT5_PORT PORTCbits.RC3

#define OUTPUT_8_TRIS TRISAbits.TRISA4
#define OUTPUT_8_LAT  LATAbits.LATA4
#define OUTPUT_9_TRIS TRISAbits.TRISA9
#define OUTPUT_9_LAT  LATAbits.LATA9

#define PWM_OPTO_TRIS    TRISBbits.TRISB4
#define PWM_OPTO_LAT     LATBbits.LATB4
#define PWM_1_0_10_TRIS    TRISCbits.TRISC1
#define PWM_1_0_10_LAT     LATCbits.LATC1
#define PWM_2_0_10_TRIS    TRISCbits.TRISC0
#define PWM_2_0_10_LAT     LATCbits.LATC0


#define I2C_SCL_TRIS TRISBbits.TRISB2
#define I2C_SCL_LAT LATBbits.LATB2
#define I2C_SDA_TRIS TRISBbits.TRISB3
#define I2C_SDA_LAT LATBbits.LATB3
#define I2C_SDA_PORT PORTBbits.RB3
#define I2C_WP_TRIS TRISCbits.TRISC2
#define I2C_WP_LAT TRISCbits.LATC2

#define I2C_CLK I2C_SCL_LAT
#define I2C_CLK_TRIS I2C_SCL_TRIS
#define I2C_DATA_OUT I2C_SDA_LAT
#define I2C_DATA_TRIS I2C_SDA_TRIS
#define I2C_DATA_IN I2C_SDA_PORT

#define UART_RX_TRIS TRISCbits.TRISC9
#define UART_TX_TRIS TRISCbits.TRISC8

#define INT1_TRIS TRISBbits.TRISB7
#define INT1_PORT PORTBbits.RB7

#endif