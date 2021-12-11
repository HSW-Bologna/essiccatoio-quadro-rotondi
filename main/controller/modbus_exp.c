/*
 * File:   modbus_exp.c
 * Author: Virginia
 *
 * Created on 11 dicembre 2021, 11.18
 */
#include "libconf.h"
#include "modbus_exp.h"
#include "peripherals/uart2_driver.h"
#include "hardwareprofile.h"
#include "lightmodbus/master.h"
#include <stdlib.h>
#include <stdint.h>
#include "utils/assert.h"
#include "gel/timer/timecheck.h"
#include "gel/serializer/serializer.h"
#include "timer.h"

#define MB_PORTNUM 1


#define MODBUS_TIMEOUT                20
#define RESPONSE_TIMEOUT              50
#define MODBUS_MAX_PACKET_SIZE        256
#define MODBUS_COMMUNICATION_ATTEMPTS 3

static ModbusMaster master;
static int waiting=0;
static int response_len=0;
static int rx_len=0;
static int comunication_err=0;
static uint8_t rx_buffer[256];
static unsigned long request_time=200;


//funzione write chiamata in digout 
//write coils 15

ModbusError masterExceptionCallback( uint8_t address, uint8_t function,
                                           ModbusExceptionCode code);
ModbusError masterDataCallback( const ModbusDataCallbackArgs *args);
LIGHTMODBUS_WARN_UNUSED ModbusError modbusStaticAllocator2(ModbusBuffer *buffer, uint16_t size, void *context);


void modbus_exp_init(void) {
    ModbusErrorInfo err;
    err = modbusMasterInit(
        &master,          
        masterDataCallback,                  // Callback for handling incoming data
        masterExceptionCallback,             // Exception callback (optional)
        modbusStaticAllocator2,          // Memory allocator used to allocate request
        modbusMasterDefaultFunctions,    // Set of supported functions
        modbusMasterDefaultFunctionCount // Number of supported functions
        );
 
    // Check for errors
    assert(modbusIsOk(err) && "modbusMasterInit() failed"); 
}

ModbusError masterDataCallback(const ModbusDataCallbackArgs *args)
{
    // Always return MODBUS_OK
    return MODBUS_OK;
}

ModbusError masterExceptionCallback( uint8_t address, uint8_t function,
                                           ModbusExceptionCode code) {
    return MODBUS_OK;
}

void modbus_exp_write_coils(uint8_t address, uint16_t status) {
    uint8_t buffer[2] = {0};
    serialize_uint16_le(buffer, status);
    
    ModbusErrorInfo err = modbusBuildRequest15RTU(&master, address, 0, 16, buffer);
    assert(modbusIsOk(err));
    uart2_sync_write(modbusMasterGetRequest(&master), modbusMasterGetRequestLength(&master));
    request_time=get_millis();
    waiting=1;
    response_len=8;
}

void modbus_exp_period_check(void) {
    ModbusErrorInfo err;
    if (waiting) {
        rx_len=uart2_read_rx_buffer(rx_buffer);
        if (rx_len>=response_len) {
            err     = modbusParseResponseRTU(&master, modbusMasterGetRequest(&master),
                                 modbusMasterGetRequestLength(&master), rx_buffer, rx_len);
            if (!modbusIsOk(err)) {
                comunication_err=1;
            }
            waiting=0;
            uart2_clean_rx_buffer();
        }
        if (is_expired(request_time,get_millis(),RESPONSE_TIMEOUT)) {
            waiting = 0;
            comunication_err=1;
            uart2_clean_rx_buffer();
        }
    }
}

LIGHTMODBUS_WARN_UNUSED ModbusError modbusStaticAllocator2(ModbusBuffer *buffer, uint16_t size, void *context) {
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
            // Return a pointer to our buffer
            buffer->data = request;
            return MODBUS_OK;
        }
    }
}