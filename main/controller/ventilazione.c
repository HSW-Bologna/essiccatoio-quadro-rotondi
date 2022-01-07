#include "peripherals/digout.h"
#include "peripherals/digin.h"
#include "ventilazione.h"


void ventilazione_on_full(void) {
    digout_update(DIGOUT_VENTILAZIONE, 1);
}


void ventilazione_off(void) {
    digout_update(DIGOUT_VENTILAZIONE, 0);
}


int ventilazione_ok(void) {
    return digin_get(DIGIN_VENTOLA) == 0;
}
