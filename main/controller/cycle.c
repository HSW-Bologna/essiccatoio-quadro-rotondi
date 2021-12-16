#include "cycle.h"



DEFINE_STATE_MACHINE(cycle, cycle_event_code_t, model_t);


static int stopped_guard(model_t *pmodel);
static int stopped_event_manager(model_t *pmodel, cycle_event_code_t event);
static int running_guard(model_t *pmodel);
static int running_event_manager(model_t *pmodel, cycle_event_code_t event);


static const cycle_state_manager_t managers[] = {
    [CYCLE_STATE_STOPPED] = {.guard = stopped_guard, .event = stopped_event_manager},
    [CYCLE_STATE_RUNNING] = {.guard = running_guard, .event = running_event_manager},
};

static cycle_state_machine_t state_machine = {
  .managers = managers,
  .state = CYCLE_STATE_STOPPED,
};


void cycle_send_event(model_t *pmodel, cycle_event_code_t event) {
    cycle_sm_send_event(&state_machine, pmodel, event);
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
            return CYCLE_STATE_STOPPED;
        
        default:
            break;
    }

    return -1;
}
