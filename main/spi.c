/*
 * File:   spi.c
 * Author: Virginia
 *
 * Created on 2 dicembre 2021, 10.28
 */

#include <stdlib.h>
#include "peripherals/hardwareprofile.h"
#include "peripherals/system.h"
#include "peripherals/spi.h"

void spi_init(void) {
    SPI_DOUT_TRIS=TRIS_OUTPUT;
    SPI_CLK_TRIS=TRIS_OUTPUT;
    SPI_DIN_TRIS=TRIS_INPUT;
    SPI_CLK_LAT = 1;
    SPI_CS1_TRIS=TRIS_OUTPUT;
    SPI_CS1_LAT=1;

    SPI_CS2_TRIS=TRIS_OUTPUT;
    SPI_CS2_LAT=1;
    SPI_CS3_TRIS=TRIS_OUTPUT;
    SPI_CS3_LAT=1;
    SPI_CS4_TRIS=TRIS_OUTPUT;
    SPI_CS4_LAT=1;
}

uint8_t spi_master_exchange_bit(uint8_t send){
    size_t  i;
    uint8_t val, valToSend;
    uint8_t byte = 0;

    for (i = 0; i < 8; i++) {
        valToSend = send & 0x80;
        SPI_DOUT_LAT = valToSend ? 1 : 0;
        SPI_CLK_LAT   = 0;
        __delay_us(10);
        
        val      = SPI_DIN_PORT;
        byte = byte | val;

        if (i != 7)
        {
            byte = byte << 1;
            send = send << 1;
        }

        SPI_CLK_LAT = 1;
        __delay_us(10);
    }
    SPI_DOUT_LAT = 0;
    return byte;
}

int spi_master_exchange(uint8_t *writebuf, uint8_t *readbuf, size_t length, void *data) {
    int i;
    for (i=0;i<length;i++) {
    readbuf[i]=spi_master_exchange_bit(writebuf[i]);
    }
    return 0;
}

int spi_control_cs1(int level) {
    SPI_CS1_LAT = level;
    return 0;
}

int spi_control_cs2(int level) {
    SPI_CS2_LAT = level;
    return 0;
}