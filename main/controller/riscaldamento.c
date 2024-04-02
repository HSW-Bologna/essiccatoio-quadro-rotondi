#include "peripherals/digout.h"
#include "peripherals/digin.h"
#include "riscaldamento.h"
#include "ventilazione.h"
#include "model/model.h"
#include "gel/timer/timer.h"
#include "gel/timer/timecheck.h"
#include "gel/state_machine/state_machine.h"
#include "peripherals/timer.h"


#define CHECK_PERIOD      500


DEFINE_STATE_MACHINE(riscaldamento, riscaldamento_event_code_t, model_t);



typedef enum {
    RISCALDAMENTO_STATE_OFF = 0,
    RISCALDAMENTO_STATE_ON,
    RISCALDAMENTO_STATE_MIDWAY,
    RISCALDAMENTO_STATE_SETPOINT_REACHED,
} riscaldamento_state_t;


static int off_event_manager(model_t *pmodel, riscaldamento_event_code_t event);
static int on_event_manager(model_t *pmodel, riscaldamento_event_code_t event);
static int setpoint_reached_event_manager(model_t *pmodel, riscaldamento_event_code_t event);
static int midway_event_manager(model_t *pmodel, riscaldamento_event_code_t event);
static void gel_timer_callback(gel_timer_t *timer, void *pmodel, void *arg);
static void turn_off_everything(void);
static void steam_management(model_t *pmodel);


static unsigned long timestamp = 0;
static gel_timer_t check_timer;
static gel_timer_t steam_timer;


static const riscaldamento_state_manager_t managers[] = {
    [RISCALDAMENTO_STATE_OFF] = {.event = off_event_manager},
    [RISCALDAMENTO_STATE_ON] = {.event = on_event_manager},
    [RISCALDAMENTO_STATE_MIDWAY] = {.event = midway_event_manager},
    [RISCALDAMENTO_STATE_SETPOINT_REACHED] = {.event = setpoint_reached_event_manager},
};

static riscaldamento_state_machine_t state_machine = {
  .managers = (riscaldamento_state_manager_t*)managers,
  .state = RISCALDAMENTO_STATE_OFF,
};


void riscaldamento_refresh(model_t *pmodel) {
    riscaldamento_sm_send_event(&state_machine, pmodel, RISCALDAMENTO_EVENT_CODE_CHECK);
}


void riscaldamento_on(model_t *pmodel) {
    riscaldamento_sm_send_event(&state_machine, pmodel, RISCALDAMENTO_EVENT_CODE_ON);
}


void riscaldamento_off(model_t *pmodel) {
    riscaldamento_sm_send_event(&state_machine, pmodel, RISCALDAMENTO_EVENT_CODE_OFF);
}


void riscaldamento_manage_callbacks(model_t *pmodel) {
    gel_timer_manage_callbacks(&check_timer, 1, get_millis(), pmodel);
}


int riscaldamento_ok(void) {
    return state_machine.state != RISCALDAMENTO_STATE_OFF || (digin_get(DIGIN_TERMICA) == 0);
}


int riscaldamento_timeout(model_t *pmodel) {
    return (state_machine.state == RISCALDAMENTO_STATE_ON || state_machine.state == RISCALDAMENTO_STATE_MIDWAY) 
            && is_expired(timestamp, get_millis(), pmodel->tempo_allarme_temperatura * 1000UL);
}


static int off_event_manager(model_t *pmodel, riscaldamento_event_code_t event) {
    switch (event){ 
        case RISCALDAMENTO_EVENT_CODE_ON: {
            gel_timer_activate(&check_timer, CHECK_PERIOD, get_millis(), gel_timer_callback, (void*)RISCALDAMENTO_EVENT_CODE_CHECK);
            
            switch (pmodel->tipo_riscaldamento) {
                case TIPO_RISCALDAMENTO_VAPORE:
                case TIPO_RISCALDAMENTO_GAS:
                    if (model_get_temperature(pmodel) > model_get_setpoint(pmodel)) {
                        return RISCALDAMENTO_STATE_SETPOINT_REACHED;
                    } else {
                        DIGOUT_SET(DIGOUT_RISCALDAMENTO_1);
                        timestamp = get_millis();
                        return RISCALDAMENTO_STATE_ON;
                    }
                    
                case TIPO_RISCALDAMENTO_ELETTRICO:
                    DIGOUT_SET(DIGOUT_RISCALDAMENTO_1);
                    if (model_get_temperature(pmodel) > model_get_setpoint(pmodel)) {
                        return RISCALDAMENTO_STATE_SETPOINT_REACHED;
                    } else {
                        DIGOUT_SET(DIGOUT_RISCALDAMENTO_2);
                        timestamp = get_millis();
                        return RISCALDAMENTO_STATE_ON;
                    }
            }
            break;
        }
        
        default:
            break;
    }
    
    return -1;
}


static int on_event_manager(model_t *pmodel, riscaldamento_event_code_t event) {
    switch (event){ 
        case RISCALDAMENTO_EVENT_CODE_CHECK:
            steam_management(pmodel);
            
            if (model_get_temperature(pmodel) > model_get_setpoint(pmodel)) {
                if (pmodel->tipo_riscaldamento == TIPO_RISCALDAMENTO_ELETTRICO) {
                    DIGOUT_CLEAR(DIGOUT_RISCALDAMENTO_2);
                    return RISCALDAMENTO_STATE_MIDWAY;
                } else {
                    DIGOUT_CLEAR(DIGOUT_RISCALDAMENTO_1);
                    return RISCALDAMENTO_STATE_SETPOINT_REACHED;
                }
            }
            break;
            
        case RISCALDAMENTO_EVENT_CODE_OFF:
            turn_off_everything();
            return RISCALDAMENTO_STATE_OFF;
            
        case RISCALDAMENTO_EVENT_CODE_STOP_STEAM:
            DIGOUT_CLEAR(DIGOUT_VAPORE);
            break;
            
        default:
            break;
    }
    
    return -1;
}


static int midway_event_manager(model_t *pmodel, riscaldamento_event_code_t event) {
    switch (event){ 
        case RISCALDAMENTO_EVENT_CODE_CHECK:
            if (model_get_temperature(pmodel) > model_get_setpoint(pmodel) + pmodel->isteresi_temperatura_off_res1) {
                DIGOUT_CLEAR(DIGOUT_RISCALDAMENTO_1);
                return RISCALDAMENTO_STATE_SETPOINT_REACHED;
            } else if (model_get_temperature(pmodel) < model_get_setpoint(pmodel) - pmodel->isteresi_temperatura_on_res2 ) {
                DIGOUT_SET(DIGOUT_RISCALDAMENTO_2);
                return RISCALDAMENTO_STATE_ON;
            }
            break;
            
        case RISCALDAMENTO_EVENT_CODE_OFF:
            turn_off_everything();
            return RISCALDAMENTO_STATE_OFF;
            
        case RISCALDAMENTO_EVENT_CODE_STOP_STEAM:
            DIGOUT_CLEAR(DIGOUT_VAPORE);
            break;
            
        default:
            break;
    }
    
    return -1;
}


static int setpoint_reached_event_manager(model_t *pmodel, riscaldamento_event_code_t event) {
    switch (event){ 
        case RISCALDAMENTO_EVENT_CODE_CHECK: {
            if (model_get_temperature(pmodel) < model_get_setpoint(pmodel)) {
                DIGOUT_SET(DIGOUT_RISCALDAMENTO_1);
                if (pmodel->tipo_riscaldamento == TIPO_RISCALDAMENTO_ELETTRICO) {
                    return RISCALDAMENTO_STATE_MIDWAY;
                } else {
                    timestamp = get_millis();
                    return RISCALDAMENTO_STATE_ON;
                }
            }
            break;
        }
        
        case RISCALDAMENTO_EVENT_CODE_OFF:
            turn_off_everything();
            return RISCALDAMENTO_STATE_OFF;
            
        case RISCALDAMENTO_EVENT_CODE_STOP_STEAM:
            DIGOUT_CLEAR(DIGOUT_VAPORE);
            break;
        
        default:
            break;
    }
    
    return -1;
}



static void gel_timer_callback(gel_timer_t *timer, void *pmodel, void *arg) {
    riscaldamento_sm_send_event(&state_machine, pmodel, (int)arg);
}


static void turn_off_everything(void) {
    DIGOUT_CLEAR(DIGOUT_RISCALDAMENTO_1);
    DIGOUT_CLEAR(DIGOUT_RISCALDAMENTO_2);
    DIGOUT_CLEAR(DIGOUT_VAPORE);
    gel_timer_deactivate(&check_timer);
    gel_timer_deactivate(&steam_timer);
}


static void steam_management(model_t *pmodel) {
    if (model_vaporizzazione_da_attivare(pmodel)) {
        if (model_get_temperature(pmodel) > pmodel->temperatura_vaporizzazione) {
            DIGOUT_SET(DIGOUT_VAPORE);
            gel_timer_activate(&steam_timer, pmodel->tempo_vaporizzazione, get_millis(), gel_timer_callback, (void*)RISCALDAMENTO_EVENT_CODE_CHECK);
            model_vaporizzazione_attivata(pmodel);
        }
    }
}