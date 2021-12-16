#include "cycle.h"
#include "cesto.h"
#include "../../components/gel/gel/timer/timer.h"
#include "peripherals/timer.h"

timer_t timers[NUM_TIMERS];
#define QEVENT(period, callback, pmodel) timer_activate(&timers[timer_get_first_available(timers,NUM_TIMERS)],period*1000,get_millis(),callback,pmodel)

DEFINE_STATE_MACHINE(cycle, cycle_event_code_t, model_t);

static int stopped_guard(model_t *pmodel);
static int stopped_event_manager(model_t *pmodel, cycle_event_code_t event);
static int running_guard(model_t *pmodel);
static int running_event_manager(model_t *pmodel, cycle_event_code_t event);
static void callback_pause(timer_t *timer, void *arg);
static void callback_forward(timer_t *timer, void *arg);
static void callback_backward(timer_t *timer, void *arg);


static const cycle_state_manager_t managers[] = {
    [CYCLE_STATE_STOPPED] = {.guard = stopped_guard, .event = stopped_event_manager},
    [CYCLE_STATE_RUNNING] = {.guard = running_guard, .event = running_event_manager},
};

static cycle_state_machine_t state_machine = {
  .managers = (cycle_state_manager_t*)managers,
  .state = CYCLE_STATE_STOPPED,
};


void cycle_send_event(model_t *pmodel, cycle_event_code_t event) {
    cycle_sm_send_event(&state_machine, pmodel, event);
}

void cycle_manage_callbacks(void) {
    timer_manage_callbacks(timers,NUM_TIMERS,get_millis());
}

uint16_t cycle_get_state(void) {
    return state_machine.state;
}


static int stopped_guard(model_t *pmodel) {
    return 0;
}


static int stopped_event_manager(model_t *pmodel, cycle_event_code_t event) {
    switch (event) {
        case CYCLE_EVENT_CODE_START:
            cesto_marcia_set_orario();
            QEVENT(pmodel->tempo_marcia, callback_pause, pmodel);
            return CYCLE_STATE_RUNNING;
        
        default:
            break;
    }

    return -1;
}



static int running_guard(model_t *pmodel) {
    return 0;
}


static int running_event_manager(model_t *pmodel, cycle_event_code_t event) {
    switch (event) {
        case CYCLE_EVENT_CODE_STOP:
            cesto_stop();
            timer_deactivate_all(timers,NUM_TIMERS);
            return CYCLE_STATE_STOPPED;
            break;
            
        case CYCLE_EVENT_CODE_PAUSE:
            if (cesto_marcia_get_orario()) {
                QEVENT(pmodel->tempo_pausa, callback_backward, pmodel);
            } else {
                QEVENT(pmodel->tempo_pausa, callback_forward, pmodel);
            }
            cesto_stop();
            break;

        case CYCLE_EVENT_CODE_FORWARD:
            cesto_marcia_set_orario();
            QEVENT(pmodel->tempo_marcia, callback_pause, pmodel);
            break;

        case CYCLE_EVENT_CODE_BACKWARD:
            cesto_marcia_set_antiorario();
            QEVENT(pmodel->tempo_marcia, callback_pause, pmodel);
            break;

        default:
            break;
    }

    return -1;
}

static void callback_pause(timer_t *timer, void *arg) {
    cycle_send_event((model_t*)arg,CYCLE_EVENT_CODE_PAUSE);
}

static void callback_forward(timer_t *timer, void *arg) {
    cycle_send_event((model_t*)arg,CYCLE_EVENT_CODE_FORWARD);

}

static void callback_backward(timer_t *timer, void *arg) {
    cycle_send_event((model_t*)arg,CYCLE_EVENT_CODE_BACKWARD);
}
