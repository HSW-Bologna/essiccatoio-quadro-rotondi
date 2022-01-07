#include "cycle.h"
#include "cesto.h"
#include "../../components/gel/gel/timer/timer.h"
#include "peripherals/timer.h"
#include "digout.h"
#include "model/model.h"
#include "ventilazione.h"
#include "riscaldamento.h"
#include "controller.h"


timer_t timers[NUM_TIMERS];
#define QEVENT(period, callback, arg) timer_activate(&timers[timer_get_first_available(timers,NUM_TIMERS)],period*1000,get_millis(),callback,arg)

DEFINE_STATE_MACHINE(cycle, cycle_event_code_t, model_t);

static int stopped_event_manager(model_t *pmodel, cycle_event_code_t event);
static int active_event_manager(model_t *pmodel, cycle_event_code_t event);
static int running_event_manager(model_t *pmodel, cycle_event_code_t event);
static int paused_event_manager(model_t *pmodel, cycle_event_code_t event);
static int test_event_manager(model_t *pmodel, cycle_event_code_t event);
static void timer_callback(timer_t *timer, void *pmodel, void *arg);
static void stop_everything(void);
static void start_everything(model_t *pmodel);
static void macchina_occupata(model_t *pmodel, int occupata);


static timer_t running_timer;


static const cycle_state_manager_t managers[] = {
    [CYCLE_STATE_STOPPED] = {.event = stopped_event_manager},
    [CYCLE_STATE_ACTIVE] = {.event = active_event_manager},
    [CYCLE_STATE_RUNNING] = {.event = running_event_manager},
    [CYCLE_STATE_PAUSED] = {.event = paused_event_manager},
    [CYCLE_STATE_TEST] = {.event = test_event_manager},
};

static cycle_state_machine_t state_machine = {
  .managers = (cycle_state_manager_t*)managers,
  .state = CYCLE_STATE_STOPPED,
};


void cycle_send_event(model_t *pmodel, cycle_event_code_t event) {
    cycle_sm_send_event(&state_machine, pmodel, event);
}


void cycle_manage_callbacks(model_t *pmodel) {
    timer_manage_callbacks(timers,NUM_TIMERS,get_millis(), pmodel);
    timer_manage_callbacks(&running_timer, 1, get_millis(), pmodel);
}


uint16_t cycle_get_state(void) {
    return state_machine.state;
}


void cycle_refresh(model_t *pmodel) {
    macchina_occupata(pmodel, 0);
}


int cycle_stopped(void) {
   return state_machine.state == CYCLE_STATE_STOPPED; 
}


int cycle_in_test(void) {
    return state_machine.state == CYCLE_STATE_TEST;
}


uint16_t cycle_get_remaining_time(void) {
    return stopwatch_get_remaining(&running_timer.stopwatch, get_millis())/1000UL;
}



static int stopped_event_manager(model_t *pmodel, cycle_event_code_t event) {
    switch (event) {
        case CYCLE_EVENT_CODE_START:
            // Do not start if there are alarms active
            if (model_is_any_alarm_active(pmodel)) {
                break;
            }
            
            start_everything(pmodel);
            timer_activate(&running_timer, pmodel->tempo_durata*1000UL, get_millis(), timer_callback, (void*)CYCLE_EVENT_CODE_STEP_DONE);
            macchina_occupata(pmodel, 1);
            model_cycle_active(pmodel, 1);
            controller_update_pwoff(pmodel);
            return CYCLE_STATE_RUNNING;
            
        case CYCLE_EVENT_CODE_RESUME:
            timer_activate(&running_timer, pmodel->pwoff.remaining_time*1000UL, get_millis(), timer_callback, (void*)CYCLE_EVENT_CODE_STEP_DONE);
            timer_pause(&running_timer, get_millis());
            macchina_occupata(pmodel, 1);
            model_cycle_active(pmodel, 1);
            controller_update_pwoff(pmodel);
            return CYCLE_STATE_PAUSED;
            
            
        case CYCLE_EVENT_CODE_ENTER_TEST:
            DIGOUT_CLEAR(DIGOUT_MACCHINA_OCCUPATA);
            return CYCLE_STATE_TEST;
        
        default:
            break;
    }

    return -1;
}



static int running_event_manager(model_t *pmodel, cycle_event_code_t event) {
    switch (event) {
        case CYCLE_EVENT_CODE_STOP:
            stop_everything();
            macchina_occupata(pmodel, 0);
            return CYCLE_STATE_STOPPED;
            
        case CYCLE_EVENT_CODE_STEP_DONE:
            stop_everything();
            return CYCLE_STATE_ACTIVE;
            
        case CYCLE_EVENT_CODE_ALARM:
        case CYCLE_EVENT_CODE_PAUSE:
            cesto_stop();
            timer_pause(&running_timer, get_millis());
            timer_deactivate_all(timers,NUM_TIMERS);
            return CYCLE_STATE_PAUSED;
            
        case CYCLE_EVENT_CODE_MOTION_PAUSE:
            if (cesto_marcia_get_orario()) {
                QEVENT(pmodel->tempo_pausa, timer_callback, (void*)CYCLE_EVENT_CODE_BACKWARD);
            } else {
                QEVENT(pmodel->tempo_pausa, timer_callback, (void*)CYCLE_EVENT_CODE_FORWARD);
            }
            
            if (model_is_step_unfolding(pmodel)) {
                ventilazione_off();
            }
            
            cesto_stop();
            break;

        case CYCLE_EVENT_CODE_FORWARD:
            cesto_marcia_set_orario();
            ventilazione_on_full();
            QEVENT(pmodel->tempo_marcia, timer_callback, (void*)CYCLE_EVENT_CODE_MOTION_PAUSE);
            break;

        case CYCLE_EVENT_CODE_BACKWARD:
            cesto_marcia_set_antiorario();
            ventilazione_on_full();
            QEVENT(pmodel->tempo_marcia, timer_callback, (void*)CYCLE_EVENT_CODE_MOTION_PAUSE);
            break;

        default:
            break;
    }

    return -1;
}


static int paused_event_manager(model_t *pmodel, cycle_event_code_t event) {
    switch (event) {
        case CYCLE_EVENT_CODE_START:
            // Do not start if there are alarms active
            if (model_is_any_alarm_active(pmodel)) {
                break;
            }
            
            start_everything(pmodel);
            timer_resume(&running_timer, get_millis());
            return CYCLE_STATE_RUNNING;
            
        case CYCLE_EVENT_CODE_STOP:
            stop_everything();
            macchina_occupata(pmodel, 0);
            return CYCLE_STATE_STOPPED;
        
        default:
            break;
    }

    return -1;
}


static int active_event_manager(model_t *pmodel, cycle_event_code_t event) {
    switch (event) {
        case CYCLE_EVENT_CODE_START:
            // Do not start if there are alarms active
            if (model_is_any_alarm_active(pmodel)) {
                break;
            }
            
            start_everything(pmodel);
            timer_activate(&running_timer, pmodel->tempo_durata*1000UL, get_millis(), timer_callback, (void*)CYCLE_EVENT_CODE_STEP_DONE);
            return CYCLE_STATE_RUNNING;
            
        case CYCLE_EVENT_CODE_STOP:
            stop_everything();
            macchina_occupata(pmodel, 0);
            model_cycle_active(pmodel, 0);
            controller_update_pwoff(pmodel);
            return CYCLE_STATE_STOPPED;
        
        default:
            break;
    }

    return -1;
}


static int test_event_manager(model_t *pmodel, cycle_event_code_t event) {
    switch (event) {
        case CYCLE_EVENT_CODE_EXIT_TEST:
            macchina_occupata(pmodel, 0);
            return CYCLE_STATE_STOPPED;
        
        default:
            break;
    }

    return -1;
}



static void timer_callback(timer_t *timer, void *pmodel, void *arg) {
    cycle_send_event((model_t*)pmodel,(int)arg);
}


static void stop_everything(void) {
    cesto_stop();
    timer_deactivate(&running_timer);
    timer_deactivate_all(timers,NUM_TIMERS);
    ventilazione_off();
    riscaldamento_disable();
}


static void start_everything(model_t *pmodel) {
    if (model_heating_enabled(pmodel)) {
        riscaldamento_enable();
        riscaldamento_set_setpoint(pmodel->temperatura);
    } else {
        riscaldamento_disable();
    }

    if (!model_ciclo_fermo(pmodel)) {
        cesto_marcia_set_orario();
        ventilazione_on_full();
    } 
    
    if (!model_ciclo_continuo(pmodel)) {
        QEVENT(pmodel->tempo_marcia, timer_callback, (void*)CYCLE_EVENT_CODE_MOTION_PAUSE);
    }
}


static void macchina_occupata(model_t *pmodel, int occupata) {
    if (pmodel->inverti_macchina_occupata) {
        digout_update(DIGOUT_MACCHINA_OCCUPATA, !occupata);
    } else {
        digout_update(DIGOUT_MACCHINA_OCCUPATA, occupata);
    }
}