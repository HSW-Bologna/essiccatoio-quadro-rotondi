#include "utils/assert.h"
#include "libconf.h"
#include "modbus_server.h"
#include "peripherals/uart1_driver.h"
#include "peripherals/digout.h"
#include "hardwareprofile.h"
#include "gettoniera.h"
#include "digin.h"
#include "sht3.h"
#include "temperature.h"
#include "led.h"
#include <stdlib.h>
#include <stdint.h>

#define SLAVE_ADDRESS 2

static ModbusSlave slave;


enum {
    REG_GETT1 = 0,
    REG_GETT2,
    REG_GETT3,
    REG_GETT4,
    REG_GETT5,
    REG_TEMPERATURE,
    REG_HUMIDITY,
    REG_ADC_TEMPERATURE0,
    REG_ADC_TEMPERATURE1,
    NUM_INPUT_REGISTERS
};


enum {
    DIN_IN0 = 0,
    DIN_IN1,
    DIN_IN2,
    DIN_IN3,
    DIN_IN4,
    DIN_IN5,
    DIN_IN6,
    DIN_IN7,
    DIN_IN8,
    DIN_IN9,
    DIN_IN10,
    DIN_IN11,
    DIN_IN12,
    DIN_IN13,
    DIN_IN14,
    DIN_IN15,
    NUM_DISCRETE_INPUTS
};


enum {
    COIL_RELE1 = 0,
    COIL_RELE2,
    COIL_RELE3,
    COIL_RELE4,
    COIL_RELE5,
    COIL_RELE6,
    COIL_RELE7,
    COIL_RELE8,
    COIL_RELE9,
    COIL_RELE10,
    COIL_RELE11,
    COIL_RELE12,
    COIL_RELE13,
    COIL_RELE14,
    COIL_RELE15,
    COIL_RELE16,
    COIL_RELE17,
    NUM_COILS,
};

    
ModbusError slaveExceptionCallback(
    const ModbusSlave *slave,
    uint8_t function,
    ModbusExceptionCode code);
ModbusError myRegisterCallback(
    const ModbusSlave *status,
    const ModbusRegisterCallbackArgs *args,
    ModbusRegisterCallbackResult *result);
LIGHTMODBUS_WARN_UNUSED ModbusError modbusStaticAllocator(ModbusBuffer *buffer, uint16_t size, void *context);

void modbus_server_init(void) {
    ModbusErrorInfo err;
    err = modbusSlaveInit(
    &slave,          
    myRegisterCallback,              // Callback for register operations
    slaveExceptionCallback,             // Callback for handling slave exceptions (optional)
    modbusStaticAllocator,          // Memory allocator for allocating responses
    modbusSlaveDefaultFunctions,     // Set of supported functions
    modbusSlaveDefaultFunctionCount  // Number of supported functions
    );
 
    // Check for errors
    assert(modbusIsOk(err) && "modbusSlaveInit() failed"); 
}


void modbus_server_manage(model_t *pmodel) {
    uint8_t buffer[256];
    int len = uart1_read_rx_buffer(buffer); 
    
    if (len == 0) {
        return;
    }
    
    ModbusErrorInfo err;
    modbusSlaveSetUserPointer(&slave, pmodel);
    err = modbusParseRequestRTU(&slave, SLAVE_ADDRESS, buffer, len);
    int x = modbusIsOk(err);
    if (x) {
        uart1_async_write((uint8_t*)modbusSlaveGetResponse(&slave), modbusSlaveGetResponseLength(&slave));
        uart1_clean_rx_buffer();
    } else {
        Nop();
        Nop();
        Nop();
    }
}


ModbusError slaveExceptionCallback(
    const ModbusSlave *slave,
    uint8_t function,
    ModbusExceptionCode code)
{
    Nop();
    Nop();
    Nop();
    // Always return MODBUS_OK
    return MODBUS_OK;
}

ModbusError myRegisterCallback(
    const ModbusSlave *status,
    const ModbusRegisterCallbackArgs *args,
    ModbusRegisterCallbackResult *result)
{
    digout_t coil2digout[NUM_COILS] = {
        DIGOUT_OUT1,
        DIGOUT_OUT2,
        DIGOUT_OUT3,
        DIGOUT_OUT4,
        DIGOUT_OUT5,
        DIGOUT_OUT6,
        DIGOUT_OUT7,
        DIGOUT_OUT8,
        DIGOUT_OUT9,
        DIGOUT_OUT10,
        DIGOUT_OUT11,
        DIGOUT_OUT12,
        DIGOUT_OUT13,
        DIGOUT_OUT14,
        DIGOUT_OUT15,
        DIGOUT_OUT16,
        DIGOUT_OUT17,
    };
    
    digin_t din2digin[NUM_DISCRETE_INPUTS] = {
        DIGIN_IN0,
        DIGIN_IN1,
        DIGIN_IN2,
        DIGIN_IN3,
        DIGIN_IN4,
        DIGIN_IN5,
        DIGIN_IN6,
        DIGIN_IN7,
        DIGIN_IN8,
        DIGIN_IN9,
        DIGIN_IN10,
        DIGIN_IN11,
        DIGIN_IN12,
        DIGIN_IN13,
        DIGIN_IN14,
        DIGIN_IN15,
    };
    
    model_t *pmodel = modbusSlaveGetUserPointer(status);
    
    switch (args->query)
    {
        case MODBUS_REGQ_R_CHECK:
        case MODBUS_REGQ_W_CHECK:
            switch (args->type) {
                case MODBUS_HOLDING_REGISTER:
                    if (args->query == MODBUS_REGQ_R_CHECK && controller_holding_register_readable(args->index)) {
                        result->exceptionCode = MODBUS_EXCEP_NONE;
                    } else if (args->query == MODBUS_REGQ_W_CHECK && controller_holding_register_writable(args->index)) {
                        result->exceptionCode = MODBUS_EXCEP_NONE;
                    } else {
                        result->exceptionCode = MODBUS_EXCEP_ILLEGAL_FUNCTION;
                    }
                    break;
                
                case MODBUS_INPUT_REGISTER:          
                    result->exceptionCode = args->index < NUM_INPUT_REGISTERS ? MODBUS_EXCEP_NONE : MODBUS_EXCEP_ILLEGAL_ADDRESS;
                    break;
                    
                case MODBUS_COIL:
                    result->exceptionCode = args->index < NUM_COILS ? MODBUS_EXCEP_NONE : MODBUS_EXCEP_ILLEGAL_ADDRESS;
                    break;
                    
                case MODBUS_DISCRETE_INPUT:
                    if (args->query == MODBUS_REGQ_W_CHECK) {
                        result->exceptionCode = MODBUS_EXCEP_ILLEGAL_FUNCTION;
                    } else {
                        result->exceptionCode = args->index < NUM_DISCRETE_INPUTS ? MODBUS_EXCEP_NONE : MODBUS_EXCEP_ILLEGAL_ADDRESS;
                    }
                    break;
            }
            break;

            
        // Read register        
        case MODBUS_REGQ_R:
            switch (args->type)
            {
                case MODBUS_DISCRETE_INPUT:
                    result->value = digin_get(din2digin[args->index]);
                    break;
                
                case MODBUS_COIL:
                    // TODO: read coils
                    break;
                    
                case MODBUS_INPUT_REGISTER:
                    switch (args->index)
                    {
                        case REG_GETT1:
                            result->value = gettoniera_get_count(REG_GETT1);
                            break;
                        case REG_GETT2:
                            result->value = gettoniera_get_count(REG_GETT2);
                            break;
                        case REG_GETT3:
                            result->value = gettoniera_get_count(REG_GETT3);
                            break;
                        case REG_GETT4:
                            result->value = gettoniera_get_count(REG_GETT4);
                            break;
                        case REG_GETT5:
                            result->value = gettoniera_get_count(REG_GETT5);
                            break;
                        case REG_HUMIDITY:{
                            uint16_t temperature=0, humidity=0;
                            if (!sht3_read(&temperature, &humidity)) {
                                result->value = humidity;
                            }
                            else {
                                //result->exceptionCode
                            }
                        }
                            break;
                        case REG_TEMPERATURE:{
                            uint16_t temperature=0, humidity=0;
                            if (!sht3_read(&temperature, &humidity)) {
                                result->value = temperature;
                            }
                            else {
                                //result->exceptionCode
                            }
                        }
                            break;
                        case REG_ADC_TEMPERATURE0:{
                            uint16_t temperature0=0, temperature1=0;
                            temperature_get_value(&temperature0,&temperature1);
                            result->value = temperature0;
                        }
                            break;
                        case REG_ADC_TEMPERATURE1:{
                            uint16_t temperature0=0, temperature1=0;
                            temperature_get_value(&temperature0,&temperature1);
                            result->value = temperature1;
                            break;
                        }
                        default:
                            break;
                    }
                    
                    case MODBUS_HOLDING_REGISTER:
                        result->value = controller_read_holding_register(pmodel, args->index);
                        break;
                    
                default: 
                    break;
                
            }
            break;
            
        // Write register
        case MODBUS_REGQ_W:
            switch (args->type)
            {
                case MODBUS_COIL:
                    digout_update(coil2digout[args->index], args->value);
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
 
    if (!size)
    {
        // Pretend we're freeing the buffer
        buffer->data = NULL;
        return MODBUS_OK;
    }
    else
    {
        if (size > 256)
        {
            // Requested size is too big, return allocation error
            buffer->data = NULL;
            return MODBUS_ERROR_ALLOC;
        }
        else
        {
            // Return a pointer to one of the static buffers depending 
            // on the declared purpose of the buffer
            buffer->data = request;
            return MODBUS_OK;
        }
    }
}