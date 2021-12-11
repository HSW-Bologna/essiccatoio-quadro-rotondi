#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/essiccatoio-quadro-rotondi.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/essiccatoio-quadro-rotondi.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS
SUB_IMAGE_ADDRESS_COMMAND=--image-address $(SUB_IMAGE_ADDRESS)
else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=components/gel/gel/crc/crc16-ccitt.c components/gel/gel/crc/crc32.c components/gel/gel/debounce/debounce.c components/gel/gel/debounce/pulsecounter.c components/gel/gel/timer/stopwatch.c components/gel/gel/wearleveling/wearleveling.c components/I2C/i2c_common/i2c_common.c components/I2C/i2c_devices/eeprom/24LC16/24LC16.c components/I2C/i2c_devices/io/MCP23008/mcp23008.c components/I2C/i2c_ports/PIC/i2c_bitbang.c components/I2C/i2c_ports/PIC/i2c_driver.c components/SPI/spi_common/spi_common.c components/SPI/spi_devices/adc/MCP3202/mcp3202.c components/SPI/spi_devices/io/MCP23S08/mcp23s08.c components/SPI/spi_devices/io/MCP23x17/mcp23x17.c components/lightmodbus-impl.c main/controller/modbus_server.c main/controller/controller.c main/model/model.c main/peripherals/system.c main/peripherals/timer.c main/peripherals/digin.c main/peripherals/digout.c main/peripherals/pwm.c main/peripherals/i2c_devices.c main/peripherals/gettoniera.c main/peripherals/pwoff.c main/spi.c main/peripherals/spi_devices.c main/peripherals/temperature.c main/peripherals/pressostato.c main/peripherals/sht3.c main/peripherals/led.c main/main.c main/peripherals/uart1_driver.c main/peripherals/uart2_driver.c main/controller/modbus_exp.c main/utils/assert.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o ${OBJECTDIR}/components/gel/gel/crc/crc32.o ${OBJECTDIR}/components/gel/gel/debounce/debounce.o ${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o ${OBJECTDIR}/components/gel/gel/timer/stopwatch.o ${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o ${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o ${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o ${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o ${OBJECTDIR}/components/SPI/spi_common/spi_common.o ${OBJECTDIR}/components/SPI/spi_devices/adc/MCP3202/mcp3202.o ${OBJECTDIR}/components/SPI/spi_devices/io/MCP23S08/mcp23s08.o ${OBJECTDIR}/components/SPI/spi_devices/io/MCP23x17/mcp23x17.o ${OBJECTDIR}/components/lightmodbus-impl.o ${OBJECTDIR}/main/controller/modbus_server.o ${OBJECTDIR}/main/controller/controller.o ${OBJECTDIR}/main/model/model.o ${OBJECTDIR}/main/peripherals/system.o ${OBJECTDIR}/main/peripherals/timer.o ${OBJECTDIR}/main/peripherals/digin.o ${OBJECTDIR}/main/peripherals/digout.o ${OBJECTDIR}/main/peripherals/pwm.o ${OBJECTDIR}/main/peripherals/i2c_devices.o ${OBJECTDIR}/main/peripherals/gettoniera.o ${OBJECTDIR}/main/peripherals/pwoff.o ${OBJECTDIR}/main/spi.o ${OBJECTDIR}/main/peripherals/spi_devices.o ${OBJECTDIR}/main/peripherals/temperature.o ${OBJECTDIR}/main/peripherals/pressostato.o ${OBJECTDIR}/main/peripherals/sht3.o ${OBJECTDIR}/main/peripherals/led.o ${OBJECTDIR}/main/main.o ${OBJECTDIR}/main/peripherals/uart1_driver.o ${OBJECTDIR}/main/peripherals/uart2_driver.o ${OBJECTDIR}/main/controller/modbus_exp.o ${OBJECTDIR}/main/utils/assert.o
POSSIBLE_DEPFILES=${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o.d ${OBJECTDIR}/components/gel/gel/crc/crc32.o.d ${OBJECTDIR}/components/gel/gel/debounce/debounce.o.d ${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o.d ${OBJECTDIR}/components/gel/gel/timer/stopwatch.o.d ${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o.d ${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o.d ${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o.d ${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o.d ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o.d ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o.d ${OBJECTDIR}/components/SPI/spi_common/spi_common.o.d ${OBJECTDIR}/components/SPI/spi_devices/adc/MCP3202/mcp3202.o.d ${OBJECTDIR}/components/SPI/spi_devices/io/MCP23S08/mcp23s08.o.d ${OBJECTDIR}/components/SPI/spi_devices/io/MCP23x17/mcp23x17.o.d ${OBJECTDIR}/components/lightmodbus-impl.o.d ${OBJECTDIR}/main/controller/modbus_server.o.d ${OBJECTDIR}/main/controller/controller.o.d ${OBJECTDIR}/main/model/model.o.d ${OBJECTDIR}/main/peripherals/system.o.d ${OBJECTDIR}/main/peripherals/timer.o.d ${OBJECTDIR}/main/peripherals/digin.o.d ${OBJECTDIR}/main/peripherals/digout.o.d ${OBJECTDIR}/main/peripherals/pwm.o.d ${OBJECTDIR}/main/peripherals/i2c_devices.o.d ${OBJECTDIR}/main/peripherals/gettoniera.o.d ${OBJECTDIR}/main/peripherals/pwoff.o.d ${OBJECTDIR}/main/spi.o.d ${OBJECTDIR}/main/peripherals/spi_devices.o.d ${OBJECTDIR}/main/peripherals/temperature.o.d ${OBJECTDIR}/main/peripherals/pressostato.o.d ${OBJECTDIR}/main/peripherals/sht3.o.d ${OBJECTDIR}/main/peripherals/led.o.d ${OBJECTDIR}/main/main.o.d ${OBJECTDIR}/main/peripherals/uart1_driver.o.d ${OBJECTDIR}/main/peripherals/uart2_driver.o.d ${OBJECTDIR}/main/controller/modbus_exp.o.d ${OBJECTDIR}/main/utils/assert.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o ${OBJECTDIR}/components/gel/gel/crc/crc32.o ${OBJECTDIR}/components/gel/gel/debounce/debounce.o ${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o ${OBJECTDIR}/components/gel/gel/timer/stopwatch.o ${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o ${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o ${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o ${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o ${OBJECTDIR}/components/SPI/spi_common/spi_common.o ${OBJECTDIR}/components/SPI/spi_devices/adc/MCP3202/mcp3202.o ${OBJECTDIR}/components/SPI/spi_devices/io/MCP23S08/mcp23s08.o ${OBJECTDIR}/components/SPI/spi_devices/io/MCP23x17/mcp23x17.o ${OBJECTDIR}/components/lightmodbus-impl.o ${OBJECTDIR}/main/controller/modbus_server.o ${OBJECTDIR}/main/controller/controller.o ${OBJECTDIR}/main/model/model.o ${OBJECTDIR}/main/peripherals/system.o ${OBJECTDIR}/main/peripherals/timer.o ${OBJECTDIR}/main/peripherals/digin.o ${OBJECTDIR}/main/peripherals/digout.o ${OBJECTDIR}/main/peripherals/pwm.o ${OBJECTDIR}/main/peripherals/i2c_devices.o ${OBJECTDIR}/main/peripherals/gettoniera.o ${OBJECTDIR}/main/peripherals/pwoff.o ${OBJECTDIR}/main/spi.o ${OBJECTDIR}/main/peripherals/spi_devices.o ${OBJECTDIR}/main/peripherals/temperature.o ${OBJECTDIR}/main/peripherals/pressostato.o ${OBJECTDIR}/main/peripherals/sht3.o ${OBJECTDIR}/main/peripherals/led.o ${OBJECTDIR}/main/main.o ${OBJECTDIR}/main/peripherals/uart1_driver.o ${OBJECTDIR}/main/peripherals/uart2_driver.o ${OBJECTDIR}/main/controller/modbus_exp.o ${OBJECTDIR}/main/utils/assert.o

# Source Files
SOURCEFILES=components/gel/gel/crc/crc16-ccitt.c components/gel/gel/crc/crc32.c components/gel/gel/debounce/debounce.c components/gel/gel/debounce/pulsecounter.c components/gel/gel/timer/stopwatch.c components/gel/gel/wearleveling/wearleveling.c components/I2C/i2c_common/i2c_common.c components/I2C/i2c_devices/eeprom/24LC16/24LC16.c components/I2C/i2c_devices/io/MCP23008/mcp23008.c components/I2C/i2c_ports/PIC/i2c_bitbang.c components/I2C/i2c_ports/PIC/i2c_driver.c components/SPI/spi_common/spi_common.c components/SPI/spi_devices/adc/MCP3202/mcp3202.c components/SPI/spi_devices/io/MCP23S08/mcp23s08.c components/SPI/spi_devices/io/MCP23x17/mcp23x17.c components/lightmodbus-impl.c main/controller/modbus_server.c main/controller/controller.c main/model/model.c main/peripherals/system.c main/peripherals/timer.c main/peripherals/digin.c main/peripherals/digout.c main/peripherals/pwm.c main/peripherals/i2c_devices.c main/peripherals/gettoniera.c main/peripherals/pwoff.c main/spi.c main/peripherals/spi_devices.c main/peripherals/temperature.c main/peripherals/pressostato.c main/peripherals/sht3.c main/peripherals/led.c main/main.c main/peripherals/uart1_driver.c main/peripherals/uart2_driver.c main/controller/modbus_exp.c main/utils/assert.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/essiccatoio-quadro-rotondi.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ256GA705
MP_LINKER_FILE_OPTION=,--script=p24FJ256GA705.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o: components/gel/gel/crc/crc16-ccitt.c  .generated_files/77b4801998130bc677a68e0adcc54852e8550bfc.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/crc" 
	@${RM} ${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/crc/crc16-ccitt.c  -o ${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/gel/gel/crc/crc32.o: components/gel/gel/crc/crc32.c  .generated_files/f8ab7499d18cb68c720d18344e5f3ee35cd9a9d4.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/crc" 
	@${RM} ${OBJECTDIR}/components/gel/gel/crc/crc32.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/crc/crc32.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/crc/crc32.c  -o ${OBJECTDIR}/components/gel/gel/crc/crc32.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/crc/crc32.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/gel/gel/debounce/debounce.o: components/gel/gel/debounce/debounce.c  .generated_files/97c7eb5c6c00fda83b3e2b3fca5ee0aed5adad1.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/debounce" 
	@${RM} ${OBJECTDIR}/components/gel/gel/debounce/debounce.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/debounce/debounce.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/debounce/debounce.c  -o ${OBJECTDIR}/components/gel/gel/debounce/debounce.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/debounce/debounce.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o: components/gel/gel/debounce/pulsecounter.c  .generated_files/2f5e886fc73ce075a8c52f1c78b348091f84f709.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/debounce" 
	@${RM} ${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/debounce/pulsecounter.c  -o ${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/gel/gel/timer/stopwatch.o: components/gel/gel/timer/stopwatch.c  .generated_files/7ac89f114d4b4af688db59366b60cb4a8b386fa7.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/timer" 
	@${RM} ${OBJECTDIR}/components/gel/gel/timer/stopwatch.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/timer/stopwatch.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/timer/stopwatch.c  -o ${OBJECTDIR}/components/gel/gel/timer/stopwatch.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/timer/stopwatch.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o: components/gel/gel/wearleveling/wearleveling.c  .generated_files/97999d0fd9fbe3658878209edea2e6cb2c7e439.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/wearleveling" 
	@${RM} ${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/wearleveling/wearleveling.c  -o ${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o: components/I2C/i2c_common/i2c_common.c  .generated_files/ace19df296deb8e036d6d489e0912ce15d981736.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components/I2C/i2c_common" 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o.d 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/I2C/i2c_common/i2c_common.c  -o ${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o: components/I2C/i2c_devices/eeprom/24LC16/24LC16.c  .generated_files/14e6136d1023abd938504d0c1a248bc041822b7b.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16" 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o.d 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/I2C/i2c_devices/eeprom/24LC16/24LC16.c  -o ${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o: components/I2C/i2c_devices/io/MCP23008/mcp23008.c  .generated_files/d2844ef5196bb9892686a19b65e337b5419e42cd.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008" 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o.d 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/I2C/i2c_devices/io/MCP23008/mcp23008.c  -o ${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o: components/I2C/i2c_ports/PIC/i2c_bitbang.c  .generated_files/7f2c7c2e40c5f5d67c3aa80d8dae46f2aa0518be.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components/I2C/i2c_ports/PIC" 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o.d 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/I2C/i2c_ports/PIC/i2c_bitbang.c  -o ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o: components/I2C/i2c_ports/PIC/i2c_driver.c  .generated_files/648e5475483c404d422308ec9173498bb105e8d5.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components/I2C/i2c_ports/PIC" 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o.d 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/I2C/i2c_ports/PIC/i2c_driver.c  -o ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/SPI/spi_common/spi_common.o: components/SPI/spi_common/spi_common.c  .generated_files/a110e433bc543621f0e3c7e07cf5cfb400563ad1.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components/SPI/spi_common" 
	@${RM} ${OBJECTDIR}/components/SPI/spi_common/spi_common.o.d 
	@${RM} ${OBJECTDIR}/components/SPI/spi_common/spi_common.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/SPI/spi_common/spi_common.c  -o ${OBJECTDIR}/components/SPI/spi_common/spi_common.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/SPI/spi_common/spi_common.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/SPI/spi_devices/adc/MCP3202/mcp3202.o: components/SPI/spi_devices/adc/MCP3202/mcp3202.c  .generated_files/9b0f9d30815055794251e6a0dd728fc1b45f3808.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components/SPI/spi_devices/adc/MCP3202" 
	@${RM} ${OBJECTDIR}/components/SPI/spi_devices/adc/MCP3202/mcp3202.o.d 
	@${RM} ${OBJECTDIR}/components/SPI/spi_devices/adc/MCP3202/mcp3202.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/SPI/spi_devices/adc/MCP3202/mcp3202.c  -o ${OBJECTDIR}/components/SPI/spi_devices/adc/MCP3202/mcp3202.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/SPI/spi_devices/adc/MCP3202/mcp3202.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/SPI/spi_devices/io/MCP23S08/mcp23s08.o: components/SPI/spi_devices/io/MCP23S08/mcp23s08.c  .generated_files/70bce3628c8da212a4f0acd746d51e04c2338cd0.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components/SPI/spi_devices/io/MCP23S08" 
	@${RM} ${OBJECTDIR}/components/SPI/spi_devices/io/MCP23S08/mcp23s08.o.d 
	@${RM} ${OBJECTDIR}/components/SPI/spi_devices/io/MCP23S08/mcp23s08.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/SPI/spi_devices/io/MCP23S08/mcp23s08.c  -o ${OBJECTDIR}/components/SPI/spi_devices/io/MCP23S08/mcp23s08.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/SPI/spi_devices/io/MCP23S08/mcp23s08.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/SPI/spi_devices/io/MCP23x17/mcp23x17.o: components/SPI/spi_devices/io/MCP23x17/mcp23x17.c  .generated_files/386aee2525174fb8ef0ee985f443cb9ddc60e19a.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components/SPI/spi_devices/io/MCP23x17" 
	@${RM} ${OBJECTDIR}/components/SPI/spi_devices/io/MCP23x17/mcp23x17.o.d 
	@${RM} ${OBJECTDIR}/components/SPI/spi_devices/io/MCP23x17/mcp23x17.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/SPI/spi_devices/io/MCP23x17/mcp23x17.c  -o ${OBJECTDIR}/components/SPI/spi_devices/io/MCP23x17/mcp23x17.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/SPI/spi_devices/io/MCP23x17/mcp23x17.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/lightmodbus-impl.o: components/lightmodbus-impl.c  .generated_files/267ae3d62962124183a99e0751af2a52df325aca.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components" 
	@${RM} ${OBJECTDIR}/components/lightmodbus-impl.o.d 
	@${RM} ${OBJECTDIR}/components/lightmodbus-impl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/lightmodbus-impl.c  -o ${OBJECTDIR}/components/lightmodbus-impl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/lightmodbus-impl.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/controller/modbus_server.o: main/controller/modbus_server.c  .generated_files/100897734e0f3fdd89ad762f20f878933f1c393d.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/controller" 
	@${RM} ${OBJECTDIR}/main/controller/modbus_server.o.d 
	@${RM} ${OBJECTDIR}/main/controller/modbus_server.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/controller/modbus_server.c  -o ${OBJECTDIR}/main/controller/modbus_server.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/controller/modbus_server.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/controller/controller.o: main/controller/controller.c  .generated_files/25fbf4f93b2f7958b6e3c63d69649266f223bc12.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/controller" 
	@${RM} ${OBJECTDIR}/main/controller/controller.o.d 
	@${RM} ${OBJECTDIR}/main/controller/controller.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/controller/controller.c  -o ${OBJECTDIR}/main/controller/controller.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/controller/controller.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/model/model.o: main/model/model.c  .generated_files/48fd138e960af0da66f28bf58914f2f862b315ad.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/model" 
	@${RM} ${OBJECTDIR}/main/model/model.o.d 
	@${RM} ${OBJECTDIR}/main/model/model.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/model/model.c  -o ${OBJECTDIR}/main/model/model.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/model/model.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/system.o: main/peripherals/system.c  .generated_files/fff19ecb48b2462745111c9fb0e2e8db0bec5c82.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/system.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/system.c  -o ${OBJECTDIR}/main/peripherals/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/system.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/timer.o: main/peripherals/timer.c  .generated_files/2b9bbab0ae944e04b4b3f295b58c322d5f414f2b.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/timer.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/timer.c  -o ${OBJECTDIR}/main/peripherals/timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/timer.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/digin.o: main/peripherals/digin.c  .generated_files/b159299664bd80ac0eccb885794061e76ef484e4.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/digin.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/digin.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/digin.c  -o ${OBJECTDIR}/main/peripherals/digin.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/digin.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/digout.o: main/peripherals/digout.c  .generated_files/f0393eebe1d024b87f54e25af9a44b445c368fc1.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/digout.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/digout.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/digout.c  -o ${OBJECTDIR}/main/peripherals/digout.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/digout.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/pwm.o: main/peripherals/pwm.c  .generated_files/992b424e2f8b4f0dec64f81687e3325d77b11653.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/pwm.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/pwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/pwm.c  -o ${OBJECTDIR}/main/peripherals/pwm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/pwm.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/i2c_devices.o: main/peripherals/i2c_devices.c  .generated_files/db200a3f28fc31b23384d2c72220a013b227617b.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/i2c_devices.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/i2c_devices.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/i2c_devices.c  -o ${OBJECTDIR}/main/peripherals/i2c_devices.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/i2c_devices.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/gettoniera.o: main/peripherals/gettoniera.c  .generated_files/68a4b6c829290b7efb8a5c099f687bfcddea5d0.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/gettoniera.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/gettoniera.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/gettoniera.c  -o ${OBJECTDIR}/main/peripherals/gettoniera.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/gettoniera.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/pwoff.o: main/peripherals/pwoff.c  .generated_files/745d7e7c2210bd42425db81c4c4396afff3f5bd5.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/pwoff.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/pwoff.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/pwoff.c  -o ${OBJECTDIR}/main/peripherals/pwoff.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/pwoff.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/spi.o: main/spi.c  .generated_files/43501acafcb6da3e7ff1bea93da68400f97c5c95.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main" 
	@${RM} ${OBJECTDIR}/main/spi.o.d 
	@${RM} ${OBJECTDIR}/main/spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/spi.c  -o ${OBJECTDIR}/main/spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/spi.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/spi_devices.o: main/peripherals/spi_devices.c  .generated_files/320d3488e5ef8e0ffc59b9b4b0af6c8ec7769c81.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/spi_devices.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/spi_devices.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/spi_devices.c  -o ${OBJECTDIR}/main/peripherals/spi_devices.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/spi_devices.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/temperature.o: main/peripherals/temperature.c  .generated_files/d407e2648503e7e4e2d03d9d55eb4b610dd91e37.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/temperature.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/temperature.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/temperature.c  -o ${OBJECTDIR}/main/peripherals/temperature.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/temperature.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/pressostato.o: main/peripherals/pressostato.c  .generated_files/d908b37ee266042ea1088039504e1da8c111d40b.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/pressostato.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/pressostato.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/pressostato.c  -o ${OBJECTDIR}/main/peripherals/pressostato.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/pressostato.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/sht3.o: main/peripherals/sht3.c  .generated_files/76a90a53bd2e7b82f6d165e24124a84fb7d24bf4.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/sht3.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/sht3.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/sht3.c  -o ${OBJECTDIR}/main/peripherals/sht3.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/sht3.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/led.o: main/peripherals/led.c  .generated_files/eecd80d8ac298cad06648077d9757920546e1326.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/led.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/led.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/led.c  -o ${OBJECTDIR}/main/peripherals/led.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/led.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/main.o: main/main.c  .generated_files/96e4d5679700e5360926a22148fc5f158385b470.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main" 
	@${RM} ${OBJECTDIR}/main/main.o.d 
	@${RM} ${OBJECTDIR}/main/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/main.c  -o ${OBJECTDIR}/main/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/uart1_driver.o: main/peripherals/uart1_driver.c  .generated_files/3ad323f7d4629318471670f7fd71dafc3de85add.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/uart1_driver.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/uart1_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/uart1_driver.c  -o ${OBJECTDIR}/main/peripherals/uart1_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/uart1_driver.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/uart2_driver.o: main/peripherals/uart2_driver.c  .generated_files/1bf16c8e113275ccf0312cb5199acf4b6a7e5dd9.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/uart2_driver.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/uart2_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/uart2_driver.c  -o ${OBJECTDIR}/main/peripherals/uart2_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/uart2_driver.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/controller/modbus_exp.o: main/controller/modbus_exp.c  .generated_files/e93ca087a52249f497c4949e7789333c5390ee8f.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/controller" 
	@${RM} ${OBJECTDIR}/main/controller/modbus_exp.o.d 
	@${RM} ${OBJECTDIR}/main/controller/modbus_exp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/controller/modbus_exp.c  -o ${OBJECTDIR}/main/controller/modbus_exp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/controller/modbus_exp.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/utils/assert.o: main/utils/assert.c  .generated_files/7b1951a5d68164551181f607bc0071825fa8f7ea.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/utils" 
	@${RM} ${OBJECTDIR}/main/utils/assert.o.d 
	@${RM} ${OBJECTDIR}/main/utils/assert.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/utils/assert.c  -o ${OBJECTDIR}/main/utils/assert.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/utils/assert.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o: components/gel/gel/crc/crc16-ccitt.c  .generated_files/198789e694d1581101daa00fb257e144a9036dc4.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/crc" 
	@${RM} ${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/crc/crc16-ccitt.c  -o ${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/gel/gel/crc/crc32.o: components/gel/gel/crc/crc32.c  .generated_files/5941b105111fbc575098349d355dfab901b5e2b4.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/crc" 
	@${RM} ${OBJECTDIR}/components/gel/gel/crc/crc32.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/crc/crc32.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/crc/crc32.c  -o ${OBJECTDIR}/components/gel/gel/crc/crc32.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/crc/crc32.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/gel/gel/debounce/debounce.o: components/gel/gel/debounce/debounce.c  .generated_files/40226963e25c9295695c8c1614a28f2e414546ff.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/debounce" 
	@${RM} ${OBJECTDIR}/components/gel/gel/debounce/debounce.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/debounce/debounce.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/debounce/debounce.c  -o ${OBJECTDIR}/components/gel/gel/debounce/debounce.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/debounce/debounce.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o: components/gel/gel/debounce/pulsecounter.c  .generated_files/4abccde81adeb8d7db014198237b672a2c074a5.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/debounce" 
	@${RM} ${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/debounce/pulsecounter.c  -o ${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/gel/gel/timer/stopwatch.o: components/gel/gel/timer/stopwatch.c  .generated_files/2a3304886c33a53753e74aa467bea144853106b.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/timer" 
	@${RM} ${OBJECTDIR}/components/gel/gel/timer/stopwatch.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/timer/stopwatch.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/timer/stopwatch.c  -o ${OBJECTDIR}/components/gel/gel/timer/stopwatch.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/timer/stopwatch.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o: components/gel/gel/wearleveling/wearleveling.c  .generated_files/56619a93f6c5033850e13e06dc03f137ed65cc2f.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/wearleveling" 
	@${RM} ${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/wearleveling/wearleveling.c  -o ${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o: components/I2C/i2c_common/i2c_common.c  .generated_files/cccd4cedaf1861ae1ec18cc96cc7c3903bd8fff8.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components/I2C/i2c_common" 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o.d 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/I2C/i2c_common/i2c_common.c  -o ${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o: components/I2C/i2c_devices/eeprom/24LC16/24LC16.c  .generated_files/c9270add2c7f42a9b44bec902190a4462bc5b885.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16" 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o.d 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/I2C/i2c_devices/eeprom/24LC16/24LC16.c  -o ${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o: components/I2C/i2c_devices/io/MCP23008/mcp23008.c  .generated_files/b80f93eb4715e43cc69b053ab3faa80471148c64.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008" 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o.d 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/I2C/i2c_devices/io/MCP23008/mcp23008.c  -o ${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o: components/I2C/i2c_ports/PIC/i2c_bitbang.c  .generated_files/7170c7cc5711093a3414a1c13164349ac4bb735d.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components/I2C/i2c_ports/PIC" 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o.d 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/I2C/i2c_ports/PIC/i2c_bitbang.c  -o ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o: components/I2C/i2c_ports/PIC/i2c_driver.c  .generated_files/81e5e9b43a03eb95b320a778d48d29915cd285d2.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components/I2C/i2c_ports/PIC" 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o.d 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/I2C/i2c_ports/PIC/i2c_driver.c  -o ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/SPI/spi_common/spi_common.o: components/SPI/spi_common/spi_common.c  .generated_files/835da4eeb240426ee1bc7a6240ad0771ca08b06.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components/SPI/spi_common" 
	@${RM} ${OBJECTDIR}/components/SPI/spi_common/spi_common.o.d 
	@${RM} ${OBJECTDIR}/components/SPI/spi_common/spi_common.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/SPI/spi_common/spi_common.c  -o ${OBJECTDIR}/components/SPI/spi_common/spi_common.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/SPI/spi_common/spi_common.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/SPI/spi_devices/adc/MCP3202/mcp3202.o: components/SPI/spi_devices/adc/MCP3202/mcp3202.c  .generated_files/70b5ffb401f60784ad76afc4b665b5675f611cac.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components/SPI/spi_devices/adc/MCP3202" 
	@${RM} ${OBJECTDIR}/components/SPI/spi_devices/adc/MCP3202/mcp3202.o.d 
	@${RM} ${OBJECTDIR}/components/SPI/spi_devices/adc/MCP3202/mcp3202.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/SPI/spi_devices/adc/MCP3202/mcp3202.c  -o ${OBJECTDIR}/components/SPI/spi_devices/adc/MCP3202/mcp3202.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/SPI/spi_devices/adc/MCP3202/mcp3202.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/SPI/spi_devices/io/MCP23S08/mcp23s08.o: components/SPI/spi_devices/io/MCP23S08/mcp23s08.c  .generated_files/ad1e857a32d887c7b68a2818b8d00fb47eb6e3ad.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components/SPI/spi_devices/io/MCP23S08" 
	@${RM} ${OBJECTDIR}/components/SPI/spi_devices/io/MCP23S08/mcp23s08.o.d 
	@${RM} ${OBJECTDIR}/components/SPI/spi_devices/io/MCP23S08/mcp23s08.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/SPI/spi_devices/io/MCP23S08/mcp23s08.c  -o ${OBJECTDIR}/components/SPI/spi_devices/io/MCP23S08/mcp23s08.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/SPI/spi_devices/io/MCP23S08/mcp23s08.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/SPI/spi_devices/io/MCP23x17/mcp23x17.o: components/SPI/spi_devices/io/MCP23x17/mcp23x17.c  .generated_files/b3c6bd0c1bbc1b50d2eeb471d8255c152046d860.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components/SPI/spi_devices/io/MCP23x17" 
	@${RM} ${OBJECTDIR}/components/SPI/spi_devices/io/MCP23x17/mcp23x17.o.d 
	@${RM} ${OBJECTDIR}/components/SPI/spi_devices/io/MCP23x17/mcp23x17.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/SPI/spi_devices/io/MCP23x17/mcp23x17.c  -o ${OBJECTDIR}/components/SPI/spi_devices/io/MCP23x17/mcp23x17.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/SPI/spi_devices/io/MCP23x17/mcp23x17.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/lightmodbus-impl.o: components/lightmodbus-impl.c  .generated_files/33b51bdfc5a24c3953d4e9df55630e46bbb78ba0.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components" 
	@${RM} ${OBJECTDIR}/components/lightmodbus-impl.o.d 
	@${RM} ${OBJECTDIR}/components/lightmodbus-impl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/lightmodbus-impl.c  -o ${OBJECTDIR}/components/lightmodbus-impl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/lightmodbus-impl.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/controller/modbus_server.o: main/controller/modbus_server.c  .generated_files/f9acf10e5140ecd84d4a47dd09dc5bbf5d8270a5.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/controller" 
	@${RM} ${OBJECTDIR}/main/controller/modbus_server.o.d 
	@${RM} ${OBJECTDIR}/main/controller/modbus_server.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/controller/modbus_server.c  -o ${OBJECTDIR}/main/controller/modbus_server.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/controller/modbus_server.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/controller/controller.o: main/controller/controller.c  .generated_files/f31716fb6a0bdcb208e123d8b0cd3f0e3a1c61a3.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/controller" 
	@${RM} ${OBJECTDIR}/main/controller/controller.o.d 
	@${RM} ${OBJECTDIR}/main/controller/controller.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/controller/controller.c  -o ${OBJECTDIR}/main/controller/controller.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/controller/controller.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/model/model.o: main/model/model.c  .generated_files/702a4cc915516d8e35195db77b32b548150ba766.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/model" 
	@${RM} ${OBJECTDIR}/main/model/model.o.d 
	@${RM} ${OBJECTDIR}/main/model/model.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/model/model.c  -o ${OBJECTDIR}/main/model/model.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/model/model.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/system.o: main/peripherals/system.c  .generated_files/2328657dfbb4144ca47dadca2a9e4c4d1cc509cf.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/system.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/system.c  -o ${OBJECTDIR}/main/peripherals/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/system.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/timer.o: main/peripherals/timer.c  .generated_files/b11dea8aec39a1bb78f20c4860cfc312a3b637a4.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/timer.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/timer.c  -o ${OBJECTDIR}/main/peripherals/timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/timer.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/digin.o: main/peripherals/digin.c  .generated_files/b8fc1fb201adee4670455fc9c72e02d74eb8411d.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/digin.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/digin.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/digin.c  -o ${OBJECTDIR}/main/peripherals/digin.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/digin.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/digout.o: main/peripherals/digout.c  .generated_files/48d36742b5c76261622597e5dc2a902c0868ab11.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/digout.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/digout.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/digout.c  -o ${OBJECTDIR}/main/peripherals/digout.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/digout.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/pwm.o: main/peripherals/pwm.c  .generated_files/91d01fa1723f17c89c7ee96291ffcd23072cbe88.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/pwm.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/pwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/pwm.c  -o ${OBJECTDIR}/main/peripherals/pwm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/pwm.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/i2c_devices.o: main/peripherals/i2c_devices.c  .generated_files/d3ad07282b167e15ed16a65cb05284ed1c108a70.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/i2c_devices.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/i2c_devices.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/i2c_devices.c  -o ${OBJECTDIR}/main/peripherals/i2c_devices.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/i2c_devices.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/gettoniera.o: main/peripherals/gettoniera.c  .generated_files/dc5537f83fbf2a80a11db6008221aad0e200cd58.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/gettoniera.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/gettoniera.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/gettoniera.c  -o ${OBJECTDIR}/main/peripherals/gettoniera.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/gettoniera.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/pwoff.o: main/peripherals/pwoff.c  .generated_files/898d8c50284c88583494e4b940a13cd267023c40.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/pwoff.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/pwoff.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/pwoff.c  -o ${OBJECTDIR}/main/peripherals/pwoff.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/pwoff.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/spi.o: main/spi.c  .generated_files/9a33a62a0a144fc5882957adee56bd7075d482e6.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main" 
	@${RM} ${OBJECTDIR}/main/spi.o.d 
	@${RM} ${OBJECTDIR}/main/spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/spi.c  -o ${OBJECTDIR}/main/spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/spi.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/spi_devices.o: main/peripherals/spi_devices.c  .generated_files/22294e64831a0ff452e1d0da23a762aff857d429.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/spi_devices.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/spi_devices.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/spi_devices.c  -o ${OBJECTDIR}/main/peripherals/spi_devices.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/spi_devices.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/temperature.o: main/peripherals/temperature.c  .generated_files/16467ce4b2c3107dcb3de1b44a5556c707c73be2.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/temperature.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/temperature.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/temperature.c  -o ${OBJECTDIR}/main/peripherals/temperature.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/temperature.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/pressostato.o: main/peripherals/pressostato.c  .generated_files/b73c0fb88459f68706c08cbdd4eff34bcbca297.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/pressostato.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/pressostato.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/pressostato.c  -o ${OBJECTDIR}/main/peripherals/pressostato.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/pressostato.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/sht3.o: main/peripherals/sht3.c  .generated_files/4f4f678aace5ce86db83264541fd619fc3cf982a.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/sht3.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/sht3.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/sht3.c  -o ${OBJECTDIR}/main/peripherals/sht3.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/sht3.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/led.o: main/peripherals/led.c  .generated_files/a8d2d646f14cb3bb5291f3ed9e6f0f85ad9ad79f.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/led.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/led.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/led.c  -o ${OBJECTDIR}/main/peripherals/led.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/led.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/main.o: main/main.c  .generated_files/ad047c961ab19101a43304a8f260f17775c8f866.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main" 
	@${RM} ${OBJECTDIR}/main/main.o.d 
	@${RM} ${OBJECTDIR}/main/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/main.c  -o ${OBJECTDIR}/main/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/main.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/uart1_driver.o: main/peripherals/uart1_driver.c  .generated_files/f6b9b6071432d531157e20fa78e72afd018e4964.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/uart1_driver.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/uart1_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/uart1_driver.c  -o ${OBJECTDIR}/main/peripherals/uart1_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/uart1_driver.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/uart2_driver.o: main/peripherals/uart2_driver.c  .generated_files/72bc609239ba4abcae78928f8ece6c9058fd8a79.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/uart2_driver.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/uart2_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/uart2_driver.c  -o ${OBJECTDIR}/main/peripherals/uart2_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/uart2_driver.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/controller/modbus_exp.o: main/controller/modbus_exp.c  .generated_files/b11bbdd928a6e9979d6de74fb498409194dc54f9.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/controller" 
	@${RM} ${OBJECTDIR}/main/controller/modbus_exp.o.d 
	@${RM} ${OBJECTDIR}/main/controller/modbus_exp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/controller/modbus_exp.c  -o ${OBJECTDIR}/main/controller/modbus_exp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/controller/modbus_exp.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/utils/assert.o: main/utils/assert.c  .generated_files/d2666af711b4ef1f46eeba35c25bef81f18fef19.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/utils" 
	@${RM} ${OBJECTDIR}/main/utils/assert.o.d 
	@${RM} ${OBJECTDIR}/main/utils/assert.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/utils/assert.c  -o ${OBJECTDIR}/main/utils/assert.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/utils/assert.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/essiccatoio-quadro-rotondi.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/essiccatoio-quadro-rotondi.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x800:0x81B -mreserve=data@0x81C:0x81D -mreserve=data@0x81E:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x827 -mreserve=data@0x82A:0x84F   -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,--defsym=__MPLAB_DEBUGGER_ICD3=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/essiccatoio-quadro-rotondi.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/essiccatoio-quadro-rotondi.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/essiccatoio-quadro-rotondi.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
