#include "temperature.h"
#include "system.h"
#include "spi_devices/adc/MCP3202/mcp3202.h"
#include "spi_devices.h"
#include <stdint.h>

#define NUM_READINGS 10
static uint16_t temperature0_average[NUM_READINGS]={0};
static uint16_t temperature1_average[NUM_READINGS]={0};
static size_t avarage_index=0;
static size_t first_loop=1;

int temperature_take_reading(void) {
    uint16_t temperature0=0, temperature1=0;
    mcp3202_read_adc_channel(mcp3202_driver, SPI_ADC_CH1, &temperature0);
    mcp3202_read_adc_channel(mcp3202_driver, SPI_ADC_CH2, &temperature1);
    temperature0_average[avarage_index]= (uint16_t) (temperature0);
    temperature1_average[avarage_index]= (uint16_t) (temperature1);

    if (avarage_index==NUM_READINGS-1)  {
        first_loop=0;
    }
    avarage_index=(avarage_index+1)%NUM_READINGS;
    return 1;
}

int temperature_get_value(uint16_t *temperature0, uint16_t *temperature1) {
    
    unsigned long temperature0_sum=0,temperature1_sum=0;
    size_t i;
    size_t num_readings = first_loop ? avarage_index : NUM_READINGS;
    for (i=0; i<num_readings; i++) {
        temperature0_sum+=temperature0_average[i];
        temperature1_sum+=temperature1_average[i];

    }
    if (num_readings==0) {
        *temperature0=0;
        *temperature1=0;

    }
    else {
        *temperature0 = (uint16_t) (temperature0_sum/num_readings);
        *temperature1 = (uint16_t) (temperature1_sum/num_readings);

    }
    return 1;
}