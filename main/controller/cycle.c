#include "cycle.h"
#include "cesto.h"
#include "gel/timer/timer.h"
#include "peripherals/timer.h"
#include "digout.h"
#include "model/model.h"
#include "ventilazione.h"
#include "riscaldamento.h"
#include "controller.h"


gel_timer_t timers[NUM_TIMERS];
#define QEVENT(period, callback, arg) gel_timer_activate(&timers[gel_timer_get_first_available(timers,NUM_TIMERS)],period*1000,get_millis(),callback,arg)

DEFINE_STATE_MACHINE(cycle, cycle_event_code_t, model_t);

static int stopped_event_manager(model_t *pmodel, cycle_event_code_t event);
static int active_event_manager(model_t *pmodel, cycle_event_code_t event);
static int wait_start_event_manager(model_t *pmodel, cycle_event_code_t event);
static int running_event_manager(model_t *pmodel, cycle_event_code_t event);
static int paused_event_manager(model_t *pmodel, cycle_event_code_t event);
static int test_event_manager(model_t *pmodel, cycle_event_code_t event);
static void gel_timer_callback(gel_timer_t *timer, void *pmodel, void *arg);
static void stop_everything(model_t *pmodel);
static void start_everything(model_t *pmodel);
static void pause_everything(model_t *pmodel);

static gel_timer_t running_timer;


static const cycle_state_manager_t managers[] = {
    [CYCLE_STATE_STOPPED] = {.event = stopped_event_manager},
    [CYCLE_STATE_ACTIVE] = {.event = active_event_manager},
    [CYCLE_STATE_WAIT_START] = {.event = wait_start_event_manager},
    [CYCLE_STATE_RUNNING] = {.event = running_event_manager},
    [CYCLE_STATE_PAUSED] = {.event = paused_event_manager},
    [CYCLE_STATE_TEST] = {.event = test_event_manager},
};

static cycle_state_machine_t state_machine = {
  .managers = (cycle_state_manager_t*)managers,
  .state = CYCLE_STATE_STOPPED,
};


int cycle_send_event(model_t *pmodel, cycle_event_code_t event) {
    return cycle_sm_send_event(&state_machine, pmodel, event);
}


int cycle_manage_callbacks(model_t *pmodel) {
    int res = 0;
    
    res |= gel_timer_manage_callbacks(timers,NUM_TIMERS,get_millis(), pmodel);
    res |= gel_timer_manage_callbacks(&running_timer, 1, get_millis(), pmodel);
    
    return res;
}


uint16_t cycle_get_state(void) {
    return state_machine.state;
}


int cycle_stopped(void) {
   return state_machine.state == CYCLE_STATE_STOPPED; 
}


int cycle_in_test(void) {
    return state_machine.state == CYCLE_STATE_TEST;
}


uint16_t cycle_get_remaining_time(void) {
    if (state_machine.state == CYCLE_STATE_ACTIVE || state_machine.state == CYCLE_STATE_STOPPED) {
        return 0;
    } else {
        return stopwatch_get_remaining(&running_timer.stopwatch, get_millis())/1000UL;
    }
}


void cycle_change_remaining_time(uint16_t seconds) {
    STOPWATCH_STATE old_state = stopwatch_get_state(&running_timer.stopwatch);
    stopwatch_stop(&running_timer.stopwatch);
    stopwatch_set(&running_timer.stopwatch, seconds * 1000UL);
    switch (old_state) {
        case TIMER_COUNTING:
            stopwatch_start(&running_timer.stopwatch, get_millis());
            break;
            
        case TIMER_PAUSED: {
            unsigned long now = get_millis();
            stopwatch_start(&running_timer.stopwatch, now);
            stopwatch_pause(&running_timer.stopwatch, now);
            break;
        }
            
        default:
            break;
    }
}


static int stopped_event_manager(model_t *pmodel, cycle_event_code_t event) {
    switch (event) {
        case CYCLE_EVENT_CODE_START:
            // Do not start if there are alarms active
            if (model_is_any_alarm_active(pmodel)) {
                break;
            }
            
            model_comincia_step(pmodel);
            model_cycle_active(pmodel, 1);
            controller_update_pwoff(pmodel);

            if (pmodel->tempo_attesa_partenza_ciclo > 0) {
                ventilazione_on_full();
                gel_timer_activate(&running_timer, pmodel->tempo_attesa_partenza_ciclo*1000UL, get_millis(), gel_timer_callback, (void*)CYCLE_EVENT_CODE_STEP_DONE);
                return CYCLE_STATE_WAIT_START;
            } else {
                start_everything(pmodel);
                gel_timer_activate(&running_timer, pmodel->tempo_durata*1000UL, get_millis(), gel_timer_callback, (void*)CYCLE_EVENT_CODE_STEP_DONE);
                return CYCLE_STATE_RUNNING;
            }
            
        case CYCLE_EVENT_CODE_RESUME:
            gel_timer_activate(&running_timer, pmodel->pwoff.remaining_time*1000UL, get_millis(), gel_timer_callback, (void*)CYCLE_EVENT_CODE_STEP_DONE);
            gel_timer_pause(&running_timer, get_millis());
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
            stop_everything(pmodel);
            model_cycle_active(pmodel, 0);
            return CYCLE_STATE_STOPPED;
            
        case CYCLE_EVENT_CODE_STEP_DONE:
            return CYCLE_STATE_ACTIVE;
            
        case CYCLE_EVENT_CODE_ALARM:
        case CYCLE_EVENT_CODE_PAUSE:
            pause_everything(pmodel);
            return CYCLE_STATE_PAUSED;
            
        case CYCLE_EVENT_CODE_MOTION_PAUSE:
            if (cesto_marcia_get_orario()) {
                QEVENT(pmodel->tempo_pausa, gel_timer_callback, (void*)CYCLE_EVENT_CODE_BACKWARD);
            } else {
                QEVENT(pmodel->tempo_pausa, gel_timer_callback, (void*)CYCLE_EVENT_CODE_FORWARD);
            }
            
            if (model_is_step_unfolding(pmodel)) {
                unsigned long tempo_ventilazione = ventilazione_off();
                model_add_ventilation_time_ms(pmodel, tempo_ventilazione);
            }
            
            unsigned long tempo_moto = cesto_stop();
            model_add_rotation_time_ms(pmodel, tempo_moto);
            break;

        case CYCLE_EVENT_CODE_FORWARD:
            cesto_marcia_set_orario(pmodel->velocita);
            ventilazione_on_full();
            QEVENT(pmodel->tempo_marcia, gel_timer_callback, (void*)CYCLE_EVENT_CODE_MOTION_PAUSE);
            break;

        case CYCLE_EVENT_CODE_BACKWARD:
            cesto_marcia_set_antiorario(pmodel->velocita);
            ventilazione_on_full();
            QEVENT(pmodel->tempo_marcia, gel_timer_callback, (void*)CYCLE_EVENT_CODE_MOTION_PAUSE);
            break;
            
        case CYCLE_EVENT_CODE_REFRESH:
            cesto_marcia_set_speed(pmodel->velocita);
            break;

        default:
            break;
    }

    return -1;
}


static int wait_start_event_manager(model_t *pmodel, cycle_event_code_t event) {
    switch (event) {
        case CYCLE_EVENT_CODE_STOP:
            stop_everything(pmodel);
            model_cycle_active(pmodel, 0);
            return CYCLE_STATE_STOPPED;
            
        case CYCLE_EVENT_CODE_STEP_DONE: {
            unsigned long tempo_ventilazione = ventilazione_off();
            model_add_ventilation_time_ms(pmodel, tempo_ventilazione);
            gel_timer_activate(&running_timer, pmodel->tempo_durata*1000UL, get_millis(), gel_timer_callback, (void*)CYCLE_EVENT_CODE_STEP_DONE);
            start_everything(pmodel);
            return CYCLE_STATE_RUNNING;
        }
            
        case CYCLE_EVENT_CODE_ALARM:
        case CYCLE_EVENT_CODE_PAUSE:
            pause_everything(pmodel);
            return CYCLE_STATE_PAUSED;
            
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
            gel_timer_resume(&running_timer, get_millis());
            return CYCLE_STATE_RUNNING;
            
        case CYCLE_EVENT_CODE_STOP:
            stop_everything(pmodel);
            model_cycle_active(pmodel, 0);
            return CYCLE_STATE_STOPPED;
                        
        case CYCLE_EVENT_CODE_STEP_DONE:
            stop_everything(pmodel);
            return CYCLE_STATE_ACTIVE;
        
        default:
            break;
    }

    return -1;
}


static int active_event_manager(model_t *pmodel, cycle_event_code_t event) {
    switch (event) {
        case CYCLE_EVENT_CODE_PAUSE:
            gel_timer_activate(&running_timer, pmodel->tempo_durata*1000UL, get_millis(), gel_timer_callback, (void*)CYCLE_EVENT_CODE_STEP_DONE);
            if (pmodel->ferma_tempo_in_pausa) {
                gel_timer_pause(&running_timer, get_millis());
            }
            return CYCLE_STATE_PAUSED;
        
        
        case CYCLE_EVENT_CODE_START:
            // Do not start if there are alarms active
            if (model_is_any_alarm_active(pmodel)) {
                break;
            }
            
            start_everything(pmodel);
            gel_timer_activate(&running_timer, pmodel->tempo_durata*1000UL, get_millis(), gel_timer_callback, (void*)CYCLE_EVENT_CODE_STEP_DONE);
            model_comincia_step(pmodel);
            return CYCLE_STATE_RUNNING;
            
        case CYCLE_EVENT_CODE_STOP:
            stop_everything(pmodel);
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
            return CYCLE_STATE_STOPPED;
        
        default:
            break;
    }

    return -1;
}



static void gel_timer_callback(gel_timer_t *timer, void *pmodel, void *arg) {
    cycle_send_event((model_t*)pmodel,(int)arg);
}


static void stop_everything(model_t *pmodel) {
    unsigned long tempo_moto = cesto_stop();
    model_add_rotation_time_ms(pmodel, tempo_moto);
    
    model_add_work_time_ms(pmodel, stopwatch_get_elapsed(&running_timer.stopwatch, get_millis()));
    gel_timer_deactivate(&running_timer);
    gel_timer_deactivate_all(timers,NUM_TIMERS);
    
    unsigned long tempo_ventilazione = ventilazione_off();
    model_add_ventilation_time_ms(pmodel, tempo_ventilazione);
    
    riscaldamento_off(pmodel);
}


static void start_everything(model_t *pmodel) {
    if (model_heating_enabled(pmodel)) {
        riscaldamento_on(pmodel);
    } else {
        riscaldamento_off(pmodel);
    }

    if (!model_ciclo_fermo(pmodel)) {
        cesto_marcia_set_orario(pmodel->velocita);
        ventilazione_on_full();
    } else {
        unsigned long tempo_ventilazione = ventilazione_off();
        model_add_ventilation_time_ms(pmodel, tempo_ventilazione);
    }
    
    if (!model_ciclo_continuo(pmodel)) {
        QEVENT(pmodel->tempo_marcia, gel_timer_callback, (void*)CYCLE_EVENT_CODE_MOTION_PAUSE);
    }
}



static void pause_everything(model_t *pmodel) {
    unsigned long tempo_moto = cesto_stop();
    model_add_rotation_time_ms(pmodel, tempo_moto);
    
    unsigned long tempo_ventilazione = ventilazione_off();
    model_add_ventilation_time_ms(pmodel, tempo_ventilazione);
            
    riscaldamento_off(pmodel);
    if (pmodel->ferma_tempo_in_pausa) {
        gel_timer_pause(&running_timer, get_millis());
    }
    gel_timer_deactivate_all(timers,NUM_TIMERS);
}