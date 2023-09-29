#include "peripherals/digout.h"
#include "busy_signal.h"
#include "cycle.h"
#include "model/model.h"



void busy_signal_manage(model_t *pmodel) {
    int busy = 0;
    
    if (cycle_in_test()) {
        return;
    }
    
    /*
    tipo 0: segnala gli allarmi (a parte l'oblo' aperto) oppure se e' in ciclo oppure se e' pagato
    tipo 1: segnala gli allarmi (a parte l'oblo' aperto)
    tipo 2: occupata durante il ciclo a meno che l'oblo' non sia aperto 
     */
    
    switch (pmodel->tipo_macchina_occupata) {
        case TIPO_MACCHINA_OCCUPATA_ALLARMI_CICLO_PAGATO:
            //TODO: aggiungi se pagato
            busy = model_is_porthole_open(pmodel) || !cycle_stopped();
            break;
            
        case TIPO_MACCHINA_OCCUPATA_ALLARMI:
            busy = model_is_alarm_other_than_porthole_active(pmodel);
            break;
            
        case TIPO_MACCHINA_OCCUPATA_CICLO:
            busy = !model_is_porthole_open(pmodel) && !cycle_stopped();
            break;
    }
    
    if (pmodel->inverti_macchina_occupata) {
        digout_update(DIGOUT_MACCHINA_OCCUPATA, !busy);
    } else {
        digout_update(DIGOUT_MACCHINA_OCCUPATA, busy);
    }
}