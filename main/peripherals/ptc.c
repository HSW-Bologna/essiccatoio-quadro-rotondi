#include "ptc.h"
#include "system.h"
#include "spi_devices/adc/MCP3202/mcp3202.h"
#include "spi_devices.h"
#include <stdint.h>

#define NUM_READINGS 10

#define MINIMUM_AD_VALUE   1061L
#define MAXIMUM_AD_VALUE   2049L
#define MINIMUM_TEMP_VALUE -10L
#define MAXIMUM_TEMP_VALUE 140L

#define COEFF_M_TIMES(x) (((x) * (MAXIMUM_TEMP_VALUE - MINIMUM_TEMP_VALUE)) / (MAXIMUM_AD_VALUE - MINIMUM_AD_VALUE))
#define COEFF_Q                                                                                                        \
    (-MINIMUM_AD_VALUE * (MAXIMUM_TEMP_VALUE - MINIMUM_TEMP_VALUE) / (MAXIMUM_AD_VALUE - MINIMUM_AD_VALUE) +           \
     MINIMUM_TEMP_VALUE)

static uint16_t temperature0_average[NUM_READINGS] = {0};
static uint16_t temperature1_average[NUM_READINGS] = {0};
static size_t   avarage_index                      = 0;
static size_t   first_loop                         = 1;

int ptc_take_reading(void) {
    uint16_t temperature0 = 0, temperature1 = 0;
    mcp3202_read_adc_channel(mcp3202_driver, SPI_ADC_CH1, &temperature0);
    mcp3202_read_adc_channel(mcp3202_driver, SPI_ADC_CH2, &temperature1);
    temperature0_average[avarage_index] = (uint16_t)(temperature0);
    temperature1_average[avarage_index] = (uint16_t)(temperature1);

    if (avarage_index == NUM_READINGS - 1) {
        first_loop = 0;
    }
    avarage_index = (avarage_index + 1) % NUM_READINGS;
    return 1;
}


int ptc_get_value(uint16_t *adc1, uint16_t *adc2) {
    unsigned long adc1_sum = 0, adc2_sum = 0;
    size_t        i            = 0;
    size_t        num_readings = first_loop ? avarage_index : NUM_READINGS;
    for (i = 0; i < num_readings; i++) {
        adc1_sum += temperature0_average[i];
        adc2_sum += temperature1_average[i];
    }
    if (num_readings == 0) {
        *adc1 = 0;
        *adc2 = 0;
    } else {
        *adc1 = (uint16_t)(adc1_sum / num_readings);
        *adc2 = (uint16_t)(adc2_sum / num_readings);
    }
    return 1;
}


void ptc_get_temperature(int *temperature1, int *temperature2) {
    uint16_t adc1 = 0, adc2 = 0;
    ptc_get_value(&adc1, &adc2);

    if (adc1 <= MINIMUM_AD_VALUE) {
        *temperature1 = MINIMUM_TEMP_VALUE;
    } else if (adc1 >= MAXIMUM_AD_VALUE) {
        *temperature1 = MAXIMUM_TEMP_VALUE;
    } else {
        *temperature1 = (int)(COEFF_M_TIMES(adc1) + COEFF_Q);
    }

    if (adc2 <= MINIMUM_AD_VALUE) {
        *temperature2 = MINIMUM_TEMP_VALUE;
    } else if (adc2 >= MAXIMUM_AD_VALUE) {
        *temperature2 = MAXIMUM_TEMP_VALUE;
    } else {
        *temperature2 = (uint16_t)(COEFF_M_TIMES(adc2) + COEFF_Q);
    }
}