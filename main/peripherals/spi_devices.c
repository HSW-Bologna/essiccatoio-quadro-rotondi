#include "spi_common/spi_common.h"
#include "spi_devices/adc/MCP3202/mcp3202.h"
#include "spi_devices/io/MCP23S08/mcp23s08.h"
#include "spi_devices.h"
#include "spi.h"
#include "hardwareprofile.h"


spi_driver_t mcp3202_driver= {.spi_exchange=spi_master_exchange, .spi_cs_control=spi_control_cs1, .user_data=NULL};
spi_driver_t mcp23s08_driver = {.spi_exchange=spi_master_exchange, .spi_cs_control=spi_control_cs2, .user_data=NULL};
