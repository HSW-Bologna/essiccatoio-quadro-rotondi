#ifndef UART1_DRIVER_H_INCLUDED
#define UART1_DRIVER_H_INCLUDED

#include <stdint.h>

void uart1_init(void);
int uart1_sync_write(uint8_t *data, int len);
int uart1_async_write(uint8_t *data, int len);
int uart1_read_rx_buffer(uint8_t *buffer);
void uart1_clean_rx_buffer();

#endif

