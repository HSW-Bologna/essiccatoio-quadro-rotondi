#include "utils/assert.h"
#include "libconf.h"
#include "modbus_server.h"
#include "peripherals/uart1_driver.h"
#include "peripherals/digout.h"
#include "hardwareprofile.h"
#include "gettoniera.h"
#include "digin.h"
#include "sht3.h"
#include "ptc.h"
#include "led.h"
#include <stdlib.h>
#include <stdint.h>
#include "controller.h"
#include "cycle.h"



#define SLAVE_ADDRESS 2

static ModbusSlave slave;


enum {
    REG_GETT1 = 0,
    REG_GETT2,
    REG_GETT3,
    REG_GETT4,
    REG_GETT5,
    REG_CASSA,
    REG_SHT_TEMPERATURE,
    REG_SHT_HUMIDITY,
    REG_ADC_TEMPERATURE0,
    REG_ADC_TEMPERATURE1,
    REG_DEGREES_TEMPERATURE0,
    REG_DEGREES_TEMPERATURE1,
    REG_CONFIGURED_TEMPERATURE,
    NUM_INPUT_REGISTERS
};



#define NUM_DISCRETE_INPUTS NUM_DIGIN
#define NUM_COILS           NUM_DIGOUT


ModbusError slaveExceptionCallback(const ModbusSlave *slave, uint8_t function, ModbusExceptionCode code);
ModbusError myRegisterCallback(const ModbusSlave *status, const ModbusRegisterCallbackArgs *args,
                               ModbusRegisterCallbackResult *result);
LIGHTMODBUS_WARN_UNUSED ModbusError modbusStaticAllocator(ModbusBuffer *buffer, uint16_t size, void *context);

void modbus_server_init(void) {
    ModbusErrorInfo err;
    err = modbusSlaveInit(&slave,
                          myRegisterCallback,                 // Callback for register operations
                          slaveExceptionCallback,             // Callback for handling slave exceptions (optional)
                          modbusStaticAllocator,              // Memory allocator for allocating responses
                          modbusSlaveDefaultFunctions,        // Set of supported functions
                          modbusSlaveDefaultFunctionCount     // Number of supported functions
    );

    // Check for errors
    assert(modbusIsOk(err) && "modbusSlaveInit() failed");
}


void modbus_server_manage(model_t *pmodel) {
    uint8_t buffer[256];
    int     len = uart1_read_rx_buffer(buffer);

    if (len == 0) {
        return;
    }

    ModbusErrorInfo err;
    modbusSlaveSetUserPointer(&slave, pmodel);
    err   = modbusParseRequestRTU(&slave, SLAVE_ADDRESS, buffer, len);
    int x = modbusIsOk(err);
    if (x) {
        uart1_async_write((uint8_t *)modbusSlaveGetResponse(&slave), modbusSlaveGetResponseLength(&slave));
        uart1_clean_rx_buffer();
    } else {
        Nop();
        Nop();
        Nop();
    }
}


ModbusError slaveExceptionCallback(const ModbusSlave *slave, uint8_t function, ModbusExceptionCode code) {
    Nop();
    Nop();
    Nop();
    // Always return MODBUS_OK
    return MODBUS_OK;
}

ModbusError myRegisterCallback(const ModbusSlave *status, const ModbusRegisterCallbackArgs *args,
                               ModbusRegisterCallbackResult *result) {
    digout_t coil2digout[NUM_COILS] = {
        DIGOUT_OUT1,  DIGOUT_OUT2,  DIGOUT_OUT3,  DIGOUT_OUT4,  DIGOUT_OUT5,  DIGOUT_OUT6,
        DIGOUT_OUT7,  DIGOUT_OUT8,  DIGOUT_OUT9,  DIGOUT_OUT10, DIGOUT_OUT11, DIGOUT_OUT12,
        DIGOUT_OUT13, DIGOUT_OUT14, DIGOUT_OUT15, DIGOUT_OUT16, DIGOUT_OUT17,
    };

    digin_t din2digin[NUM_DISCRETE_INPUTS] = {
        DIGIN_0, DIGIN_1, DIGIN_2,  DIGIN_3,  DIGIN_4,  DIGIN_5,  DIGIN_6,  DIGIN_7,
        DIGIN_8, DIGIN_9, DIGIN_10, DIGIN_11, DIGIN_12, DIGIN_13, DIGIN_14, DIGIN_15,
    };

    model_t *pmodel = modbusSlaveGetUserPointer(status);

    switch (args->query) {
        case MODBUS_REGQ_R_CHECK:
        case MODBUS_REGQ_W_CHECK:
            switch (args->type) {
                case MODBUS_HOLDING_REGISTER:
                    if (args->query == MODBUS_REGQ_R_CHECK && controller_holding_register_readable(args->index)) {
                        result->exceptionCode = MODBUS_EXCEP_NONE;
                    } else if (args->query == MODBUS_REGQ_W_CHECK &&
                               controller_holding_register_writable(args->index)) {
                        result->exceptionCode = MODBUS_EXCEP_NONE;
                    } else {
                        result->exceptionCode = MODBUS_EXCEP_ILLEGAL_FUNCTION;
                    }
                    break;

                case MODBUS_INPUT_REGISTER:
                    result->exceptionCode =
                        args->index < NUM_INPUT_REGISTERS ? MODBUS_EXCEP_NONE : MODBUS_EXCEP_ILLEGAL_ADDRESS;
                    break;

                case MODBUS_COIL:
                    result->exceptionCode = args->index < NUM_COILS ? MODBUS_EXCEP_NONE : MODBUS_EXCEP_ILLEGAL_ADDRESS;
                    break;

                case MODBUS_DISCRETE_INPUT:
                    if (args->query == MODBUS_REGQ_W_CHECK) {
                        result->exceptionCode = MODBUS_EXCEP_ILLEGAL_FUNCTION;
                    } else {
                        result->exceptionCode =
                            args->index < NUM_DISCRETE_INPUTS ? MODBUS_EXCEP_NONE : MODBUS_EXCEP_ILLEGAL_ADDRESS;
                    }
                    break;
            }
            break;


        // Read register
        case MODBUS_REGQ_R:
            switch (args->type) {
                case MODBUS_DISCRETE_INPUT:
                    result->value = digin_get(din2digin[args->index]);
                    break;

                case MODBUS_COIL:
                    result->value = digout_get(coil2digout[args->index]);
                    break;

                case MODBUS_INPUT_REGISTER:
                    switch (args->index) {
                        case REG_GETT1...REG_CASSA:
                            result->value = pmodel->pwoff.coins[args->index - REG_GETT1];
                            break;
                            
                        case REG_SHT_HUMIDITY:
                            result->value = (uint16_t)pmodel->umidita_sht;
                            break;
                        
                        case REG_SHT_TEMPERATURE:
                            result->value = (uint16_t)pmodel->temperatura_sht;
                            break;

                        case REG_ADC_TEMPERATURE0:
                            result->value = (uint16_t)pmodel->adc_ptc1;
                            break;

                        case REG_ADC_TEMPERATURE1:
                            result->value = (uint16_t)pmodel->adc_ptc2;
                            break;

                        case REG_DEGREES_TEMPERATURE0:
                            result->value = (uint16_t)pmodel->temperatura_ptc1;
                            break;

                        case REG_DEGREES_TEMPERATURE1:
                            result->value = (uint16_t)pmodel->temperatura_ptc2;
                            break;
                            
                        case REG_CONFIGURED_TEMPERATURE:
                            result->value = (uint16_t)model_get_temperature(pmodel);
                            break;

                        default:
                            break;
                    }
                    break;

                case MODBUS_HOLDING_REGISTER:
                    result->value = controller_read_holding_register(pmodel, args->index);
                    break;

                default:
                    break;
            }
            break;

        // Write register
        case MODBUS_REGQ_W:
            switch (args->type) {
                case MODBUS_COIL:
                    if (cycle_in_test()) {
                        digout_update(coil2digout[args->index], args->value);
                    }
                    break;

                case MODBUS_HOLDING_REGISTER:
                    controller_write_holding_register(pmodel, args->index, args->value);
                    break;

                default:
                    break;
            }
            break;

        default:
            break;
    }

    // Always return MODBUS_OK
    return MODBUS_OK;
}

LIGHTMODBUS_WARN_UNUSED ModbusError modbusStaticAllocator(ModbusBuffer *buffer, uint16_t size, void *context) {
    static uint8_t request[256];

    if (!size) {
        // Pretend we're freeing the buffer
        buffer->data = NULL;
        return MODBUS_OK;
    } else {
        if (size > 256) {
            // Requested size is too big, return allocation error
            buffer->data = NULL;
            return MODBUS_ERROR_ALLOC;
        } else {
            // Return a pointer to one of the static buffers depending
            // on the declared purpose of the buffer
            buffer->data = request;
            return MODBUS_OK;
        }
    }
}