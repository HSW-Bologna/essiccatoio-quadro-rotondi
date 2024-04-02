#ifndef CESTO_H_INCLUDED
#define CESTO_H_INCLUDED

void cesto_marcia_set_orario(uint8_t speed) ;
void cesto_marcia_set_antiorario(uint8_t speed);
unsigned long cesto_stop(void);
void cesto_marcia_set_speed(uint8_t speed);
int cesto_marcia_get_orario(void);


#endif