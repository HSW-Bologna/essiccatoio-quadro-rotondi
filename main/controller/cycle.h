#ifndef CYCLE_H_INCLUDED
#define CYCLE_H_INCLUDED

#include "model/model.h"
#include "gel/state_machine/state_machine.h"

#define NUM_TIMERS 10

typedef enum {
    CYCLE_EVENT_CODE_START,
    CYCLE_EVENT_CODE_STOP,
    CYCLE_EVENT_CODE_PAUSE,
    CYCLE_EVENT_CODE_FORWARD,
    CYCLE_EVENT_CODE_BACKWARD,
} cycle_event_code_t;


typedef enum {
    CYCLE_STATE_STOPPED = 0,
    CYCLE_STATE_RUNNING,
} cycle_state_t;

void cycle_send_event(model_t *pmodel, cycle_event_code_t event);
uint16_t cycle_get_state(void);
void cycle_manage_callbacks();


#endif