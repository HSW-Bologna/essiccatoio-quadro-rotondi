/*
 * File:   controller.c
 * Author: Virginia
 *
 * Created on 11 novembre 2021, 16.52
 */

#include "controller.h"
#include "peripherals/pwm.h"
#include "peripherals/digout.h"
#include "peripherals/i2c_devices.h"
#include "i2c_devices/eeprom/24LC16/24LC16.h"
#include "gel/serializer/serializer.h"
#include "peripherals/pwoff.h"
#include "gel/wearleveling/wearleveling.h"

#define CHECK_BYTE                   0xAA
#define CHECK_BYTE_ADDRESS           0
#define PAR_START_ADDRESS            (CHECK_BYTE_ADDRESS) + 1
#define PWOFF_DATA_ADDRESS           512UL
#define WL_BLOCK_SIZE                32UL
#define WL_MEMORY_SIZE               256
#define WL_BLOCK_NUM                 8
#define WL_MARKER_ADDRESS(block_num) ((PWOFF_DATA_ADDRESS) + ((block_num) * (WL_BLOCK_SIZE)))
#define WL_DATA_ADDRESS(block_num)   ((PWOFF_DATA_ADDRESS) + ((block_num) * (WL_BLOCK_SIZE) + 1))

static uint8_t               pwoff_data[PWOFF_SERIALIZED_SIZE] = {0};
static wear_leveled_memory_t memory;

static int read_marker(size_t block_num, uint8_t *marker);
static int read_block(size_t block_num, uint8_t *buffer, size_t len);
static int write_block(size_t block_num, uint8_t marker, uint8_t *buffer, size_t len);
static int controller_start_check(void);

#define WEARLEVELING 0

void controller_init(model_t *pmodel) {
    wearleveling_init(&memory, read_block, write_block, read_marker, WL_BLOCK_NUM);
    
    if (!controller_start_check()) {
        uint8_t check_byte = CHECK_BYTE;
        EE24LC16_SEQUENTIAL_WRITE(eeprom_driver, CHECK_BYTE_ADDRESS, &check_byte, 1);
    }
        uint8_t pwoff_data[PWOFF_SERIALIZED_SIZE] = {0};
#ifdef WEARLEVELING
        wearleveling_read(&memory, pwoff_data, PWOFF_SERIALIZED_SIZE);
#else
        EE24CL16_SEQUENTIAL_READ(eeprom_driver, PWOFF_DATA_ADDRESS, pwoff_data, PWOFF_SERIALIZED_SIZE);
#endif
        model_pwoff_deserialize(pmodel, pwoff_data);
        controller_update_pwoff(pmodel);
        
    pwoff_set_callback(controller_save_pwoff);
}

size_t controller_update_pwoff(model_t *pmodel) {
    pwoff_interrupt_enable(0);
    size_t i = model_pwoff_serialize(pmodel, pwoff_data);
    pwoff_interrupt_enable(1);
    return i;
}


void controller_save_pwoff(void) {
#ifdef WEARLEVELING
    wearleveling_write(&memory, pwoff_data, PWOFF_SERIALIZED_SIZE);
#else
    EE24LC16_SEQUENTIAL_WRITE(eeprom_driver, PWOFF_DATA_ADDRESS, pwoff_data, PWOFF_SERIALIZED_SIZE);
#endif
}


static int read_marker(size_t block_num, uint8_t *marker) {
    if (block_num > (WL_BLOCK_NUM - 1)) {
        return 1;
    }

    EE24CL16_SEQUENTIAL_READ(eeprom_driver, WL_MARKER_ADDRESS(block_num), marker, 1);
    return 0;
}

static int read_block(size_t block_num, uint8_t *buffer, size_t len) {
    if (block_num > (WL_BLOCK_NUM - 1)) {
        return 1;
    }
    EE24CL16_SEQUENTIAL_READ(eeprom_driver, WL_DATA_ADDRESS(block_num), buffer, len);
    return 0;
}

static int write_block(size_t block_num, uint8_t marker, uint8_t *buffer, size_t len) {

    if (block_num > (WL_BLOCK_NUM - 1)) {
        return 1;
    }

#ifdef WEARLEVELING
    uint8_t intermediate_buffer[len + 1];

    intermediate_buffer[0] = marker;
    memcpy(&intermediate_buffer[1], buffer, len);
    EE24LC16_SEQUENTIAL_WRITE(eeprom_driver, WL_MARKER_ADDRESS(block_num), intermediate_buffer, len + 1);
#else
    EE24LC16_SEQUENTIAL_WRITE(eeprom_driver, WL_MARKER_ADDRESS(block_num), &marker, 1);
    EE24LC16_SEQUENTIAL_WRITE(eeprom_driver, WL_DATA_ADDRESS(block_num), buffer, len);
#endif
    return 0;
}


static int controller_start_check(void) {
    uint8_t buff = 0;
    size_t  i;
    for (i = 0; i < 5; i++) {
        EE24CL16_SEQUENTIAL_READ(eeprom_driver, CHECK_BYTE_ADDRESS, &buff, 1);
        if (buff == CHECK_BYTE) {
            return 1;
        }
    }
    return 0;
}