#ifndef CYCLE_H_INCLUDED
#define CYCLE_H_INCLUDED

#include "model/model.h"
#include "gel/state_machine/state_machine.h"

#define NUM_TIMERS 16

typedef enum {
    CYCLE_EVENT_CODE_START,
    CYCLE_EVENT_CODE_STOP,
    CYCLE_EVENT_CODE_STEP_DONE,
    CYCLE_EVENT_CODE_PAUSE,
    CYCLE_EVENT_CODE_RESUME,
    CYCLE_EVENT_CODE_MOTION_PAUSE,
    CYCLE_EVENT_CODE_FORWARD,
    CYCLE_EVENT_CODE_BACKWARD,
    CYCLE_EVENT_CODE_ALARM,
    CYCLE_EVENT_CODE_ENTER_TEST,
    CYCLE_EVENT_CODE_EXIT_TEST,
} cycle_event_code_t;


typedef enum {
    CYCLE_STATE_STOPPED = 0,
    CYCLE_STATE_ACTIVE,
    CYCLE_STATE_RUNNING,
    CYCLE_STATE_PAUSED,
    CYCLE_STATE_TEST,
} cycle_state_t;

void cycle_send_event(model_t *pmodel, cycle_event_code_t event);
uint16_t cycle_get_state(void);
void cycle_manage_callbacks(model_t *pmodel);
uint16_t cycle_get_remaining_time(void);
int cycle_stopped(void);
void cycle_refresh(model_t *pmodel);
int cycle_in_test(void);


#endif