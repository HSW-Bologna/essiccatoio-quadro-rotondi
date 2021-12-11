#include "led.h"
#include "spi_devices/io/MCP23S08/mcp23s08.h"
#include "peripherals/hardwareprofile.h"
#include "system.h"
#include "spi_devices.h"

#define SETBIT(map, bit, value) ((map & (~(1 << bit))) | (value << bit))

static int change;
static uint8_t status = 0;

void led_init(void) {
    mcp23s08_set_gpio_direction_register(mcp23s08_driver, MCP23S08_DEFAULT_ADDR, OUTPUT_REGISTER);
    change=1;
}

void led_update(led_t output, int val) {
    val = val > 0;
    switch(output) {
        case LED0 :
            status = SETBIT(status, 0, val);
            change=1;
            break;
        case LED1 :
            status = SETBIT(status, 1, val);
            change=1;
            break;
        case LED2 :
            status = SETBIT(status, 2, val);
            change=1;
            break;
        default:
            break;
    }
}

void led_period_check(void) {
    if (change) {
        mcp23s08_set_gpio_register(mcp23s08_driver, MCP23S08_DEFAULT_ADDR, status);
        change=0;
    }
}

uint8_t led_get_status(void) {
    return status;
}


void led_clear_all (void) {
    status=0;
    change=1;
}
