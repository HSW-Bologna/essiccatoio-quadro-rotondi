/*
 * File:   cesto.c
 * Author: Virginia
 *
 * Created on 16 dicembre 2021, 12.28
 */

#include "digout.h"
#include "peripherals/timer.h"
#include "gel/timer/timecheck.h"


static void set_timestamp(void);


static unsigned long timestamp = 0;


void cesto_marcia_set_orario(void) {
    set_timestamp();
    digout_update(DIGOUT_CESTO_AVANTI,1);
    digout_update(DIGOUT_CESTO_INDIETRO,0);
}


void cesto_marcia_set_antiorario(void) {
    set_timestamp();
    digout_update(DIGOUT_CESTO_INDIETRO,1);
    digout_update(DIGOUT_CESTO_AVANTI,0);
}


unsigned long cesto_stop(void) {
    unsigned long res = 0;
    
    if (digout_get(DIGOUT_CESTO_AVANTI) || digout_get(DIGOUT_CESTO_INDIETRO)) {
        res = time_interval(timestamp, get_millis());
    }
    
    digout_update(DIGOUT_CESTO_AVANTI,0);
    digout_update(DIGOUT_CESTO_INDIETRO,0);
    
    return res;
}


int cesto_marcia_get_orario(void) {
    return (digout_get(DIGOUT_CESTO_AVANTI) && !digout_get(DIGOUT_CESTO_INDIETRO));
}


static void set_timestamp(void) {
    if (!digout_get(DIGOUT_CESTO_AVANTI) && !digout_get(DIGOUT_CESTO_INDIETRO)) {
        timestamp = get_millis();
    }
}