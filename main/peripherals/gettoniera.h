#ifndef GETTONIERA_H_INCLUDED
#define GETTONIERA_H_INCLUDED

typedef enum {
    GETT1=0, GETT2, GETT3, GETT4, GETT5, GETT_NUM
}gett_t ;


void gettoniera_init(void);
void gettoniera_reset_count(gett_t i);
void gettoniera_reset_all_count(void);
int gettoniera_take_insert(void);
unsigned int gettoniera_get_count(gett_t i);
int gettoniera_get_pulse_level(gett_t i);


#endif