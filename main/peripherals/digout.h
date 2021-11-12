#ifndef DIGOUT_H_INCLUDED
#define	DIGOUT_H_INCLUDED

#include <string.h>
#include <stdint.h>

typedef enum {
    DIGOUT_OUT1=0, DIGOUT_OUT2, DIGOUT_OUT3, DIGOUT_OUT4, DIGOUT_OUT5, DIGOUT_OUT6, DIGOUT_OUT7, DIGOUT_OUT8,  DIGOUT_OUT9, DIGOUT_NUM
} digout_t;

#define OUTPUT_REGISTER 0x00

void digout_init(void);
void digout_update(digout_t output, int val);
void digout_clear_all (void);
uint8_t digout_get_status(void);

#endif	

