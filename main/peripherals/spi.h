#ifndef SPI_H_INCLUDED
#define	SPI_H_INCLUDED

#include <stdint.h>

void spi_init(void);
uint8_t spi_master_exchange_bit(uint8_t send);
int spi_master_exchange(uint8_t *writebuf, uint8_t *readbuf, size_t length, void *data);
int spi_control_cs1(int level);
int spi_control_cs2(int level);

#endif