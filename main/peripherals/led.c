#include "led.h"
#include "spi_devices/io/MCP23S08/mcp23s08.h"
#include "peripherals/hardwareprofile.h"
#include "system.h"
#include "spi_devices.h"


void led_init(void) {
    mcp23s08_set_gpio_direction_register(mcp23s08_driver, MCP23S08_DEFAULT_ADDR, OUTPUT_REGISTER);
}

void led_update(led_t output, int val) {
    val = val > 0;
    switch(output) {
        case LED0 :
            mcp23s08_set_gpio_level(mcp23s08_driver, MCP23S08_DEFAULT_ADDR, LED0, val);
            break;
        case LED1 :
            mcp23s08_set_gpio_level(mcp23s08_driver, MCP23S08_DEFAULT_ADDR, LED1, val);
            break;
        case LED2 :
            mcp23s08_set_gpio_level(mcp23s08_driver, MCP23S08_DEFAULT_ADDR,LED2, val);
            break;
        default:
            break;
    }
}

uint8_t led_get_status(void) {
    uint8_t res=0;
    mcp23s08_get_gpio_register(mcp23s08_driver,MCP23S08_DEFAULT_ADDR, &res);
    return res;
}


void led_clear_all (void) {
    mcp23s08_set_gpio_register(mcp23s08_driver, MCP23S08_DEFAULT_ADDR,OUTPUT_REGISTER);
}
