#ifndef UART2_DRIVER_H_INCLUDED
#define UART2_DRIVER_H_INCLUDED

#include <stdint.h>

void uart2_init(void);
int uart2_sync_write(uint8_t *data, int len);
int uart2_async_write(uint8_t *data, int len);
int uart2_read_rx_buffer(uint8_t *buffer);
void uart2_clean_rx_buffer();

#endif

