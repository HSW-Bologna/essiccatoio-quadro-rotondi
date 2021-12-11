#ifndef PC_SIMULATOR
#include "hardwareprofile.h"
#include "utils/assert.h"

void assert(int expr) {
    if (!expr) {
        __builtin_software_breakpoint();
        for (;;) {
            Nop();
        }
    }
}
#endif