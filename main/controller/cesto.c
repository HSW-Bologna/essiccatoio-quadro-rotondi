/*
 * File:   cesto.c
 * Author: Virginia
 *
 * Created on 16 dicembre 2021, 12.28
 */

#include "digout.h"

void cesto_marcia_set_orario(void) {
    digout_update(DIGOUT_CESTO_MARCIA_ORARIO,1);
    digout_update(DIGOUT_CESTO_MARCIA_ANTIORARIO,0);
}

void cesto_marcia_set_antiorario(void) {
    digout_update(DIGOUT_CESTO_MARCIA_ANTIORARIO,1);
    digout_update(DIGOUT_CESTO_MARCIA_ORARIO,0);
}

void cesto_stop(void) {
    digout_update(DIGOUT_CESTO_MARCIA_ORARIO,0);
    digout_update(DIGOUT_CESTO_MARCIA_ANTIORARIO,0);
}

int cesto_marcia_get_orario(void) {
    return (digout_get(DIGOUT_CESTO_MARCIA_ORARIO) && !digout_get(DIGOUT_CESTO_MARCIA_ANTIORARIO));
}