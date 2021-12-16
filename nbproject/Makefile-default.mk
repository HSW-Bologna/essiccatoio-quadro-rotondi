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
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/EssiccatoioQuadro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/EssiccatoioQuadro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=components/gel/gel/crc/crc16-ccitt.c components/gel/gel/crc/crc32.c components/gel/gel/debounce/debounce.c components/gel/gel/debounce/pulsecounter.c components/gel/gel/timer/stopwatch.c components/gel/gel/wearleveling/wearleveling.c components/I2C/i2c_common/i2c_common.c components/I2C/i2c_devices/eeprom/24LC16/24LC16.c components/I2C/i2c_devices/io/MCP23008/mcp23008.c components/I2C/i2c_ports/PIC/i2c_bitbang.c components/I2C/i2c_ports/PIC/i2c_driver.c components/SPI/spi_common/spi_common.c components/SPI/spi_devices/adc/MCP3202/mcp3202.c components/SPI/spi_devices/io/MCP23S08/mcp23s08.c components/SPI/spi_devices/io/MCP23x17/mcp23x17.c components/lightmodbus-impl.c main/controller/modbus_server.c main/controller/controller.c main/model/model.c main/peripherals/system.c main/peripherals/timer.c main/peripherals/digin.c main/peripherals/digout.c main/peripherals/pwm.c main/peripherals/i2c_devices.c main/peripherals/gettoniera.c main/peripherals/pwoff.c main/spi.c main/peripherals/spi_devices.c main/peripherals/temperature.c main/peripherals/pressostato.c main/peripherals/sht3.c main/peripherals/led.c main/main.c main/controller/cycle.c main/peripherals/uart2_driver.c main/peripherals/uart1_driver.c main/controller/modbus_exp.c main/utils/assert.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o ${OBJECTDIR}/components/gel/gel/crc/crc32.o ${OBJECTDIR}/components/gel/gel/debounce/debounce.o ${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o ${OBJECTDIR}/components/gel/gel/timer/stopwatch.o ${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o ${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o ${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o ${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o ${OBJECTDIR}/components/SPI/spi_common/spi_common.o ${OBJECTDIR}/components/SPI/spi_devices/adc/MCP3202/mcp3202.o ${OBJECTDIR}/components/SPI/spi_devices/io/MCP23S08/mcp23s08.o ${OBJECTDIR}/components/SPI/spi_devices/io/MCP23x17/mcp23x17.o ${OBJECTDIR}/components/lightmodbus-impl.o ${OBJECTDIR}/main/controller/modbus_server.o ${OBJECTDIR}/main/controller/controller.o ${OBJECTDIR}/main/model/model.o ${OBJECTDIR}/main/peripherals/system.o ${OBJECTDIR}/main/peripherals/timer.o ${OBJECTDIR}/main/peripherals/digin.o ${OBJECTDIR}/main/peripherals/digout.o ${OBJECTDIR}/main/peripherals/pwm.o ${OBJECTDIR}/main/peripherals/i2c_devices.o ${OBJECTDIR}/main/peripherals/gettoniera.o ${OBJECTDIR}/main/peripherals/pwoff.o ${OBJECTDIR}/main/spi.o ${OBJECTDIR}/main/peripherals/spi_devices.o ${OBJECTDIR}/main/peripherals/temperature.o ${OBJECTDIR}/main/peripherals/pressostato.o ${OBJECTDIR}/main/peripherals/sht3.o ${OBJECTDIR}/main/peripherals/led.o ${OBJECTDIR}/main/main.o ${OBJECTDIR}/main/controller/cycle.o ${OBJECTDIR}/main/peripherals/uart2_driver.o ${OBJECTDIR}/main/peripherals/uart1_driver.o ${OBJECTDIR}/main/controller/modbus_exp.o ${OBJECTDIR}/main/utils/assert.o
POSSIBLE_DEPFILES=${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o.d ${OBJECTDIR}/components/gel/gel/crc/crc32.o.d ${OBJECTDIR}/components/gel/gel/debounce/debounce.o.d ${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o.d ${OBJECTDIR}/components/gel/gel/timer/stopwatch.o.d ${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o.d ${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o.d ${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o.d ${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o.d ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o.d ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o.d ${OBJECTDIR}/components/SPI/spi_common/spi_common.o.d ${OBJECTDIR}/components/SPI/spi_devices/adc/MCP3202/mcp3202.o.d ${OBJECTDIR}/components/SPI/spi_devices/io/MCP23S08/mcp23s08.o.d ${OBJECTDIR}/components/SPI/spi_devices/io/MCP23x17/mcp23x17.o.d ${OBJECTDIR}/components/lightmodbus-impl.o.d ${OBJECTDIR}/main/controller/modbus_server.o.d ${OBJECTDIR}/main/controller/controller.o.d ${OBJECTDIR}/main/model/model.o.d ${OBJECTDIR}/main/peripherals/system.o.d ${OBJECTDIR}/main/peripherals/timer.o.d ${OBJECTDIR}/main/peripherals/digin.o.d ${OBJECTDIR}/main/peripherals/digout.o.d ${OBJECTDIR}/main/peripherals/pwm.o.d ${OBJECTDIR}/main/peripherals/i2c_devices.o.d ${OBJECTDIR}/main/peripherals/gettoniera.o.d ${OBJECTDIR}/main/peripherals/pwoff.o.d ${OBJECTDIR}/main/spi.o.d ${OBJECTDIR}/main/peripherals/spi_devices.o.d ${OBJECTDIR}/main/peripherals/temperature.o.d ${OBJECTDIR}/main/peripherals/pressostato.o.d ${OBJECTDIR}/main/peripherals/sht3.o.d ${OBJECTDIR}/main/peripherals/led.o.d ${OBJECTDIR}/main/main.o.d ${OBJECTDIR}/main/controller/cycle.o.d ${OBJECTDIR}/main/peripherals/uart2_driver.o.d ${OBJECTDIR}/main/peripherals/uart1_driver.o.d ${OBJECTDIR}/main/controller/modbus_exp.o.d ${OBJECTDIR}/main/utils/assert.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o ${OBJECTDIR}/components/gel/gel/crc/crc32.o ${OBJECTDIR}/components/gel/gel/debounce/debounce.o ${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o ${OBJECTDIR}/components/gel/gel/timer/stopwatch.o ${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o ${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o ${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o ${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o ${OBJECTDIR}/components/SPI/spi_common/spi_common.o ${OBJECTDIR}/components/SPI/spi_devices/adc/MCP3202/mcp3202.o ${OBJECTDIR}/components/SPI/spi_devices/io/MCP23S08/mcp23s08.o ${OBJECTDIR}/components/SPI/spi_devices/io/MCP23x17/mcp23x17.o ${OBJECTDIR}/components/lightmodbus-impl.o ${OBJECTDIR}/main/controller/modbus_server.o ${OBJECTDIR}/main/controller/controller.o ${OBJECTDIR}/main/model/model.o ${OBJECTDIR}/main/peripherals/system.o ${OBJECTDIR}/main/peripherals/timer.o ${OBJECTDIR}/main/peripherals/digin.o ${OBJECTDIR}/main/peripherals/digout.o ${OBJECTDIR}/main/peripherals/pwm.o ${OBJECTDIR}/main/peripherals/i2c_devices.o ${OBJECTDIR}/main/peripherals/gettoniera.o ${OBJECTDIR}/main/peripherals/pwoff.o ${OBJECTDIR}/main/spi.o ${OBJECTDIR}/main/peripherals/spi_devices.o ${OBJECTDIR}/main/peripherals/temperature.o ${OBJECTDIR}/main/peripherals/pressostato.o ${OBJECTDIR}/main/peripherals/sht3.o ${OBJECTDIR}/main/peripherals/led.o ${OBJECTDIR}/main/main.o ${OBJECTDIR}/main/controller/cycle.o ${OBJECTDIR}/main/peripherals/uart2_driver.o ${OBJECTDIR}/main/peripherals/uart1_driver.o ${OBJECTDIR}/main/controller/modbus_exp.o ${OBJECTDIR}/main/utils/assert.o

# Source Files
SOURCEFILES=components/gel/gel/crc/crc16-ccitt.c components/gel/gel/crc/crc32.c components/gel/gel/debounce/debounce.c components/gel/gel/debounce/pulsecounter.c components/gel/gel/timer/stopwatch.c components/gel/gel/wearleveling/wearleveling.c components/I2C/i2c_common/i2c_common.c components/I2C/i2c_devices/eeprom/24LC16/24LC16.c components/I2C/i2c_devices/io/MCP23008/mcp23008.c components/I2C/i2c_ports/PIC/i2c_bitbang.c components/I2C/i2c_ports/PIC/i2c_driver.c components/SPI/spi_common/spi_common.c components/SPI/spi_devices/adc/MCP3202/mcp3202.c components/SPI/spi_devices/io/MCP23S08/mcp23s08.c components/SPI/spi_devices/io/MCP23x17/mcp23x17.c components/lightmodbus-impl.c main/controller/modbus_server.c main/controller/controller.c main/model/model.c main/peripherals/system.c main/peripherals/timer.c main/peripherals/digin.c main/peripherals/digout.c main/peripherals/pwm.c main/peripherals/i2c_devices.c main/peripherals/gettoniera.c main/peripherals/pwoff.c main/spi.c main/peripherals/spi_devices.c main/peripherals/temperature.c main/peripherals/pressostato.c main/peripherals/sht3.c main/peripherals/led.c main/main.c main/controller/cycle.c main/peripherals/uart2_driver.c main/peripherals/uart1_driver.c main/controller/modbus_exp.c main/utils/assert.c



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/EssiccatoioQuadro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ256GA705
MP_LINKER_FILE_OPTION=,--script=p24FJ256GA705.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o: components/gel/gel/crc/crc16-ccitt.c  .generated_files/flags/default/1fbd1029307cbfeed7309a64668cad65add15db6 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/crc" 
	@${RM} ${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/crc/crc16-ccitt.c  -o ${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/gel/gel/crc/crc32.o: components/gel/gel/crc/crc32.c  .generated_files/flags/default/89e39e36aec65e9800c7189d2a7f6f7df42b84cc .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/crc" 
	@${RM} ${OBJECTDIR}/components/gel/gel/crc/crc32.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/crc/crc32.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/crc/crc32.c  -o ${OBJECTDIR}/components/gel/gel/crc/crc32.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/crc/crc32.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/gel/gel/debounce/debounce.o: components/gel/gel/debounce/debounce.c  .generated_files/flags/default/3302f87d2d93209060e48b87c9af692f99eb3747 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/debounce" 
	@${RM} ${OBJECTDIR}/components/gel/gel/debounce/debounce.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/debounce/debounce.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/debounce/debounce.c  -o ${OBJECTDIR}/components/gel/gel/debounce/debounce.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/debounce/debounce.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o: components/gel/gel/debounce/pulsecounter.c  .generated_files/flags/default/27b685b2583a0801420933da704c86dc2c03dd42 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/debounce" 
	@${RM} ${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/debounce/pulsecounter.c  -o ${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/gel/gel/timer/stopwatch.o: components/gel/gel/timer/stopwatch.c  .generated_files/flags/default/1dda246257e7d03399d2681fc25d85d7262b6aa0 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/timer" 
	@${RM} ${OBJECTDIR}/components/gel/gel/timer/stopwatch.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/timer/stopwatch.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/timer/stopwatch.c  -o ${OBJECTDIR}/components/gel/gel/timer/stopwatch.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/timer/stopwatch.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o: components/gel/gel/wearleveling/wearleveling.c  .generated_files/flags/default/e94585a541cbd159a6bbd63457212b0fcc65658a .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/wearleveling" 
	@${RM} ${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/wearleveling/wearleveling.c  -o ${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o: components/I2C/i2c_common/i2c_common.c  .generated_files/flags/default/aa9acc9ab5070640ef6d996be3ee76ead39aad09 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components/I2C/i2c_common" 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o.d 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/I2C/i2c_common/i2c_common.c  -o ${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o: components/I2C/i2c_devices/eeprom/24LC16/24LC16.c  .generated_files/flags/default/6561bacb7885a7e9fa75806406c15ec03a945477 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16" 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o.d 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/I2C/i2c_devices/eeprom/24LC16/24LC16.c  -o ${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o: components/I2C/i2c_devices/io/MCP23008/mcp23008.c  .generated_files/flags/default/fb45359fba82f194c9abd3a70bde1105119dd24c .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008" 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o.d 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/I2C/i2c_devices/io/MCP23008/mcp23008.c  -o ${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o: components/I2C/i2c_ports/PIC/i2c_bitbang.c  .generated_files/flags/default/b8f840e967d656f9d5696c1bff1c20e48fd0c3fe .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components/I2C/i2c_ports/PIC" 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o.d 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/I2C/i2c_ports/PIC/i2c_bitbang.c  -o ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o: components/I2C/i2c_ports/PIC/i2c_driver.c  .generated_files/flags/default/6747f06683f4267f076d06f103c57e1603842386 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components/I2C/i2c_ports/PIC" 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o.d 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/I2C/i2c_ports/PIC/i2c_driver.c  -o ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/SPI/spi_common/spi_common.o: components/SPI/spi_common/spi_common.c  .generated_files/flags/default/69a1a061b495239ccc632ce9fa9de59c2a087312 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components/SPI/spi_common" 
	@${RM} ${OBJECTDIR}/components/SPI/spi_common/spi_common.o.d 
	@${RM} ${OBJECTDIR}/components/SPI/spi_common/spi_common.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/SPI/spi_common/spi_common.c  -o ${OBJECTDIR}/components/SPI/spi_common/spi_common.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/SPI/spi_common/spi_common.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/SPI/spi_devices/adc/MCP3202/mcp3202.o: components/SPI/spi_devices/adc/MCP3202/mcp3202.c  .generated_files/flags/default/631464acb71d11c5bd0f23d59d0f5baced77524b .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components/SPI/spi_devices/adc/MCP3202" 
	@${RM} ${OBJECTDIR}/components/SPI/spi_devices/adc/MCP3202/mcp3202.o.d 
	@${RM} ${OBJECTDIR}/components/SPI/spi_devices/adc/MCP3202/mcp3202.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/SPI/spi_devices/adc/MCP3202/mcp3202.c  -o ${OBJECTDIR}/components/SPI/spi_devices/adc/MCP3202/mcp3202.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/SPI/spi_devices/adc/MCP3202/mcp3202.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/SPI/spi_devices/io/MCP23S08/mcp23s08.o: components/SPI/spi_devices/io/MCP23S08/mcp23s08.c  .generated_files/flags/default/b88d7617e616f13c3e4f8660216e214100d51027 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components/SPI/spi_devices/io/MCP23S08" 
	@${RM} ${OBJECTDIR}/components/SPI/spi_devices/io/MCP23S08/mcp23s08.o.d 
	@${RM} ${OBJECTDIR}/components/SPI/spi_devices/io/MCP23S08/mcp23s08.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/SPI/spi_devices/io/MCP23S08/mcp23s08.c  -o ${OBJECTDIR}/components/SPI/spi_devices/io/MCP23S08/mcp23s08.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/SPI/spi_devices/io/MCP23S08/mcp23s08.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/SPI/spi_devices/io/MCP23x17/mcp23x17.o: components/SPI/spi_devices/io/MCP23x17/mcp23x17.c  .generated_files/flags/default/73c4599c0b2a7f91828e8c15dc5e4773843fd84a .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components/SPI/spi_devices/io/MCP23x17" 
	@${RM} ${OBJECTDIR}/components/SPI/spi_devices/io/MCP23x17/mcp23x17.o.d 
	@${RM} ${OBJECTDIR}/components/SPI/spi_devices/io/MCP23x17/mcp23x17.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/SPI/spi_devices/io/MCP23x17/mcp23x17.c  -o ${OBJECTDIR}/components/SPI/spi_devices/io/MCP23x17/mcp23x17.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/SPI/spi_devices/io/MCP23x17/mcp23x17.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/lightmodbus-impl.o: components/lightmodbus-impl.c  .generated_files/flags/default/2a1e6cde9d201386393e9bee4dfe292728fa80f .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components" 
	@${RM} ${OBJECTDIR}/components/lightmodbus-impl.o.d 
	@${RM} ${OBJECTDIR}/components/lightmodbus-impl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/lightmodbus-impl.c  -o ${OBJECTDIR}/components/lightmodbus-impl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/lightmodbus-impl.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/controller/modbus_server.o: main/controller/modbus_server.c  .generated_files/flags/default/9110b497d337cbe0f7488c45807081730563238c .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/controller" 
	@${RM} ${OBJECTDIR}/main/controller/modbus_server.o.d 
	@${RM} ${OBJECTDIR}/main/controller/modbus_server.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/controller/modbus_server.c  -o ${OBJECTDIR}/main/controller/modbus_server.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/controller/modbus_server.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/controller/controller.o: main/controller/controller.c  .generated_files/flags/default/7bc1730c67c6672108fb271b0051960fb1417604 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/controller" 
	@${RM} ${OBJECTDIR}/main/controller/controller.o.d 
	@${RM} ${OBJECTDIR}/main/controller/controller.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/controller/controller.c  -o ${OBJECTDIR}/main/controller/controller.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/controller/controller.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/model/model.o: main/model/model.c  .generated_files/flags/default/7bf52eddfe0365b88571b5b872d613ab61589ff9 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/model" 
	@${RM} ${OBJECTDIR}/main/model/model.o.d 
	@${RM} ${OBJECTDIR}/main/model/model.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/model/model.c  -o ${OBJECTDIR}/main/model/model.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/model/model.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/system.o: main/peripherals/system.c  .generated_files/flags/default/4fc67dc58a25f880214af0a70db99b0654d4cd3d .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/system.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/system.c  -o ${OBJECTDIR}/main/peripherals/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/system.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/timer.o: main/peripherals/timer.c  .generated_files/flags/default/1f9c37ff841b81a70021138c74218c88e929179 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/timer.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/timer.c  -o ${OBJECTDIR}/main/peripherals/timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/timer.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/digin.o: main/peripherals/digin.c  .generated_files/flags/default/784dd5f0becf63a6e4d3df4c423d101b814e6fff .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/digin.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/digin.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/digin.c  -o ${OBJECTDIR}/main/peripherals/digin.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/digin.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/digout.o: main/peripherals/digout.c  .generated_files/flags/default/3b74d6f8f317c0d1f08f2361a3444f7c48954d4a .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/digout.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/digout.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/digout.c  -o ${OBJECTDIR}/main/peripherals/digout.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/digout.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/pwm.o: main/peripherals/pwm.c  .generated_files/flags/default/af45ba13874f583ec8f938710ae2ac6a4634a4d0 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/pwm.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/pwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/pwm.c  -o ${OBJECTDIR}/main/peripherals/pwm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/pwm.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/i2c_devices.o: main/peripherals/i2c_devices.c  .generated_files/flags/default/52b952888d427f930f49eaed7b60174a035c598a .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/i2c_devices.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/i2c_devices.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/i2c_devices.c  -o ${OBJECTDIR}/main/peripherals/i2c_devices.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/i2c_devices.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/gettoniera.o: main/peripherals/gettoniera.c  .generated_files/flags/default/c5a52a10f82279e1f44562b4317290665710ca2a .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/gettoniera.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/gettoniera.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/gettoniera.c  -o ${OBJECTDIR}/main/peripherals/gettoniera.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/gettoniera.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/pwoff.o: main/peripherals/pwoff.c  .generated_files/flags/default/4613070dc42553245ae75420f0139663ff99be04 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/pwoff.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/pwoff.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/pwoff.c  -o ${OBJECTDIR}/main/peripherals/pwoff.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/pwoff.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/spi.o: main/spi.c  .generated_files/flags/default/a752c4fef28f1ad13673e68533cb7386711dd46d .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main" 
	@${RM} ${OBJECTDIR}/main/spi.o.d 
	@${RM} ${OBJECTDIR}/main/spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/spi.c  -o ${OBJECTDIR}/main/spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/spi.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/spi_devices.o: main/peripherals/spi_devices.c  .generated_files/flags/default/5cc72655203e03a95c4a6224b67a5dbcb386dfa4 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/spi_devices.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/spi_devices.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/spi_devices.c  -o ${OBJECTDIR}/main/peripherals/spi_devices.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/spi_devices.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/temperature.o: main/peripherals/temperature.c  .generated_files/flags/default/bf92e5686642b8b6be34f218b468df54fb35765b .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/temperature.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/temperature.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/temperature.c  -o ${OBJECTDIR}/main/peripherals/temperature.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/temperature.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/pressostato.o: main/peripherals/pressostato.c  .generated_files/flags/default/313cfebaac7e509942631d9efa5eb1a220cb4cf7 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/pressostato.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/pressostato.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/pressostato.c  -o ${OBJECTDIR}/main/peripherals/pressostato.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/pressostato.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/sht3.o: main/peripherals/sht3.c  .generated_files/flags/default/d16a4af13604da7532f1d76440e0b3ce3a91b419 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/sht3.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/sht3.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/sht3.c  -o ${OBJECTDIR}/main/peripherals/sht3.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/sht3.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/led.o: main/peripherals/led.c  .generated_files/flags/default/99920cba29e94afac3bef69d916858e763649ece .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/led.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/led.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/led.c  -o ${OBJECTDIR}/main/peripherals/led.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/led.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/main.o: main/main.c  .generated_files/flags/default/9b172744da258c8a6098a4341731a4a15137eb23 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main" 
	@${RM} ${OBJECTDIR}/main/main.o.d 
	@${RM} ${OBJECTDIR}/main/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/main.c  -o ${OBJECTDIR}/main/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/controller/cycle.o: main/controller/cycle.c  .generated_files/flags/default/bb9b969aa47aa58ac036d1dc8a3091fdecfa409f .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/controller" 
	@${RM} ${OBJECTDIR}/main/controller/cycle.o.d 
	@${RM} ${OBJECTDIR}/main/controller/cycle.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/controller/cycle.c  -o ${OBJECTDIR}/main/controller/cycle.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/controller/cycle.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/uart2_driver.o: main/peripherals/uart2_driver.c  .generated_files/flags/default/d6ab81e4688bd3fbaf15aa6be5d3183f5151f8ff .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/uart2_driver.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/uart2_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/uart2_driver.c  -o ${OBJECTDIR}/main/peripherals/uart2_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/uart2_driver.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/uart1_driver.o: main/peripherals/uart1_driver.c  .generated_files/flags/default/14650cad4dd55f52b7a935b3779916164192aacf .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/uart1_driver.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/uart1_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/uart1_driver.c  -o ${OBJECTDIR}/main/peripherals/uart1_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/uart1_driver.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/controller/modbus_exp.o: main/controller/modbus_exp.c  .generated_files/flags/default/3c10df93db0d6d95beec9672d0ec8a3abec63468 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/controller" 
	@${RM} ${OBJECTDIR}/main/controller/modbus_exp.o.d 
	@${RM} ${OBJECTDIR}/main/controller/modbus_exp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/controller/modbus_exp.c  -o ${OBJECTDIR}/main/controller/modbus_exp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/controller/modbus_exp.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/utils/assert.o: main/utils/assert.c  .generated_files/flags/default/7e3250031cdf5fc16903dbf4f940318997bb3bde .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/utils" 
	@${RM} ${OBJECTDIR}/main/utils/assert.o.d 
	@${RM} ${OBJECTDIR}/main/utils/assert.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/utils/assert.c  -o ${OBJECTDIR}/main/utils/assert.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/utils/assert.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o: components/gel/gel/crc/crc16-ccitt.c  .generated_files/flags/default/b7d80f63e8e5ad4395f7438cedc2c1325ff7a31b .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/crc" 
	@${RM} ${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/crc/crc16-ccitt.c  -o ${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/gel/gel/crc/crc32.o: components/gel/gel/crc/crc32.c  .generated_files/flags/default/d522f0e56632fc2f2ce4c266b410eec37c014c33 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/crc" 
	@${RM} ${OBJECTDIR}/components/gel/gel/crc/crc32.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/crc/crc32.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/crc/crc32.c  -o ${OBJECTDIR}/components/gel/gel/crc/crc32.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/crc/crc32.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/gel/gel/debounce/debounce.o: components/gel/gel/debounce/debounce.c  .generated_files/flags/default/22b419d9a8cfcb955a406a3d62d1d5839e59a528 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/debounce" 
	@${RM} ${OBJECTDIR}/components/gel/gel/debounce/debounce.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/debounce/debounce.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/debounce/debounce.c  -o ${OBJECTDIR}/components/gel/gel/debounce/debounce.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/debounce/debounce.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o: components/gel/gel/debounce/pulsecounter.c  .generated_files/flags/default/5ae6a607b89b43b46dcb6842291c3e4b86cc250c .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/debounce" 
	@${RM} ${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/debounce/pulsecounter.c  -o ${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/gel/gel/timer/stopwatch.o: components/gel/gel/timer/stopwatch.c  .generated_files/flags/default/93f8f71a75e2a1b4b05a0b9f9b670171904416 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/timer" 
	@${RM} ${OBJECTDIR}/components/gel/gel/timer/stopwatch.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/timer/stopwatch.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/timer/stopwatch.c  -o ${OBJECTDIR}/components/gel/gel/timer/stopwatch.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/timer/stopwatch.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o: components/gel/gel/wearleveling/wearleveling.c  .generated_files/flags/default/ec6896e805d30961d83c1e670f12a1f455e9928a .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/wearleveling" 
	@${RM} ${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/wearleveling/wearleveling.c  -o ${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o: components/I2C/i2c_common/i2c_common.c  .generated_files/flags/default/384b3157af592c881cbf107d63ccfb27272ce403 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components/I2C/i2c_common" 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o.d 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/I2C/i2c_common/i2c_common.c  -o ${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o: components/I2C/i2c_devices/eeprom/24LC16/24LC16.c  .generated_files/flags/default/b24613c10a92a728764ac3c30c0f9d38ac48dea9 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16" 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o.d 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/I2C/i2c_devices/eeprom/24LC16/24LC16.c  -o ${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o: components/I2C/i2c_devices/io/MCP23008/mcp23008.c  .generated_files/flags/default/da1cf5db98103f2068c2772fe9748f45ff0c730f .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008" 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o.d 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/I2C/i2c_devices/io/MCP23008/mcp23008.c  -o ${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o: components/I2C/i2c_ports/PIC/i2c_bitbang.c  .generated_files/flags/default/4646ce3c927bc94e2d53175f1ecb8fe3e39a2a7c .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components/I2C/i2c_ports/PIC" 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o.d 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/I2C/i2c_ports/PIC/i2c_bitbang.c  -o ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o: components/I2C/i2c_ports/PIC/i2c_driver.c  .generated_files/flags/default/3e63a769886b641a9892804521b9c62064de0821 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components/I2C/i2c_ports/PIC" 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o.d 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/I2C/i2c_ports/PIC/i2c_driver.c  -o ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/SPI/spi_common/spi_common.o: components/SPI/spi_common/spi_common.c  .generated_files/flags/default/a41a51e0213cc6cac66c1124757ff5311f64a64a .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components/SPI/spi_common" 
	@${RM} ${OBJECTDIR}/components/SPI/spi_common/spi_common.o.d 
	@${RM} ${OBJECTDIR}/components/SPI/spi_common/spi_common.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/SPI/spi_common/spi_common.c  -o ${OBJECTDIR}/components/SPI/spi_common/spi_common.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/SPI/spi_common/spi_common.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/SPI/spi_devices/adc/MCP3202/mcp3202.o: components/SPI/spi_devices/adc/MCP3202/mcp3202.c  .generated_files/flags/default/1158d64007093bc188b10a8bd08a06314a740aa9 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components/SPI/spi_devices/adc/MCP3202" 
	@${RM} ${OBJECTDIR}/components/SPI/spi_devices/adc/MCP3202/mcp3202.o.d 
	@${RM} ${OBJECTDIR}/components/SPI/spi_devices/adc/MCP3202/mcp3202.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/SPI/spi_devices/adc/MCP3202/mcp3202.c  -o ${OBJECTDIR}/components/SPI/spi_devices/adc/MCP3202/mcp3202.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/SPI/spi_devices/adc/MCP3202/mcp3202.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/SPI/spi_devices/io/MCP23S08/mcp23s08.o: components/SPI/spi_devices/io/MCP23S08/mcp23s08.c  .generated_files/flags/default/b9a813d8e9ca2c8eabe5065d36c8a2706463f614 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components/SPI/spi_devices/io/MCP23S08" 
	@${RM} ${OBJECTDIR}/components/SPI/spi_devices/io/MCP23S08/mcp23s08.o.d 
	@${RM} ${OBJECTDIR}/components/SPI/spi_devices/io/MCP23S08/mcp23s08.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/SPI/spi_devices/io/MCP23S08/mcp23s08.c  -o ${OBJECTDIR}/components/SPI/spi_devices/io/MCP23S08/mcp23s08.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/SPI/spi_devices/io/MCP23S08/mcp23s08.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/SPI/spi_devices/io/MCP23x17/mcp23x17.o: components/SPI/spi_devices/io/MCP23x17/mcp23x17.c  .generated_files/flags/default/b9b59d540dbc84e4f8f7a1f83dd515e43ae4f825 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components/SPI/spi_devices/io/MCP23x17" 
	@${RM} ${OBJECTDIR}/components/SPI/spi_devices/io/MCP23x17/mcp23x17.o.d 
	@${RM} ${OBJECTDIR}/components/SPI/spi_devices/io/MCP23x17/mcp23x17.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/SPI/spi_devices/io/MCP23x17/mcp23x17.c  -o ${OBJECTDIR}/components/SPI/spi_devices/io/MCP23x17/mcp23x17.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/SPI/spi_devices/io/MCP23x17/mcp23x17.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/lightmodbus-impl.o: components/lightmodbus-impl.c  .generated_files/flags/default/a54e8ed8d6c8c5c40658ec40354bd52a53896234 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components" 
	@${RM} ${OBJECTDIR}/components/lightmodbus-impl.o.d 
	@${RM} ${OBJECTDIR}/components/lightmodbus-impl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/lightmodbus-impl.c  -o ${OBJECTDIR}/components/lightmodbus-impl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/lightmodbus-impl.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/controller/modbus_server.o: main/controller/modbus_server.c  .generated_files/flags/default/5e82c94bb24ad23c4154bb3947fc20e632e4d2e2 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/controller" 
	@${RM} ${OBJECTDIR}/main/controller/modbus_server.o.d 
	@${RM} ${OBJECTDIR}/main/controller/modbus_server.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/controller/modbus_server.c  -o ${OBJECTDIR}/main/controller/modbus_server.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/controller/modbus_server.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/controller/controller.o: main/controller/controller.c  .generated_files/flags/default/654f01068ff9e640fa9e06d1285d89bee8ca2d46 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/controller" 
	@${RM} ${OBJECTDIR}/main/controller/controller.o.d 
	@${RM} ${OBJECTDIR}/main/controller/controller.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/controller/controller.c  -o ${OBJECTDIR}/main/controller/controller.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/controller/controller.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/model/model.o: main/model/model.c  .generated_files/flags/default/3ff6df9654394fc0bbe5e7f2c8522fdaa269a09c .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/model" 
	@${RM} ${OBJECTDIR}/main/model/model.o.d 
	@${RM} ${OBJECTDIR}/main/model/model.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/model/model.c  -o ${OBJECTDIR}/main/model/model.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/model/model.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/system.o: main/peripherals/system.c  .generated_files/flags/default/5aceafbfad2cda019b131135176b1e81d742c59f .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/system.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/system.c  -o ${OBJECTDIR}/main/peripherals/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/system.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/timer.o: main/peripherals/timer.c  .generated_files/flags/default/d85f57f7224d7ab7ba4c4c877fda743a4a4b6144 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/timer.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/timer.c  -o ${OBJECTDIR}/main/peripherals/timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/timer.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/digin.o: main/peripherals/digin.c  .generated_files/flags/default/5be889bf71ad7ad0956e9770a9c332910cb88949 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/digin.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/digin.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/digin.c  -o ${OBJECTDIR}/main/peripherals/digin.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/digin.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/digout.o: main/peripherals/digout.c  .generated_files/flags/default/fee427a05874c33cefc3e37e2ef69dcb46cfa9fd .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/digout.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/digout.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/digout.c  -o ${OBJECTDIR}/main/peripherals/digout.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/digout.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/pwm.o: main/peripherals/pwm.c  .generated_files/flags/default/c015c45e8c062211b2a6a6cfb3544a99c1efd68d .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/pwm.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/pwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/pwm.c  -o ${OBJECTDIR}/main/peripherals/pwm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/pwm.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/i2c_devices.o: main/peripherals/i2c_devices.c  .generated_files/flags/default/e5c6793307d76578fa8fe14521f4a31e397ed04e .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/i2c_devices.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/i2c_devices.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/i2c_devices.c  -o ${OBJECTDIR}/main/peripherals/i2c_devices.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/i2c_devices.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/gettoniera.o: main/peripherals/gettoniera.c  .generated_files/flags/default/6e247ef3cb85033a53f3855f4f3a09f50fe744ec .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/gettoniera.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/gettoniera.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/gettoniera.c  -o ${OBJECTDIR}/main/peripherals/gettoniera.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/gettoniera.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/pwoff.o: main/peripherals/pwoff.c  .generated_files/flags/default/ca070394e69ed563cffba312ea43e94a7f104768 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/pwoff.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/pwoff.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/pwoff.c  -o ${OBJECTDIR}/main/peripherals/pwoff.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/pwoff.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/spi.o: main/spi.c  .generated_files/flags/default/25e1867942c262ff4bdc66c27ec3ce5f376ab209 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main" 
	@${RM} ${OBJECTDIR}/main/spi.o.d 
	@${RM} ${OBJECTDIR}/main/spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/spi.c  -o ${OBJECTDIR}/main/spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/spi.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/spi_devices.o: main/peripherals/spi_devices.c  .generated_files/flags/default/3d46c97153a220a5d1a2b28e88e42f7a02843573 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/spi_devices.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/spi_devices.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/spi_devices.c  -o ${OBJECTDIR}/main/peripherals/spi_devices.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/spi_devices.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/temperature.o: main/peripherals/temperature.c  .generated_files/flags/default/9b31da769edcfa5dc0c0220c9436864e56221937 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/temperature.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/temperature.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/temperature.c  -o ${OBJECTDIR}/main/peripherals/temperature.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/temperature.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/pressostato.o: main/peripherals/pressostato.c  .generated_files/flags/default/f7ca7456ae8e7b2f433414e29e2208d08462deaf .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/pressostato.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/pressostato.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/pressostato.c  -o ${OBJECTDIR}/main/peripherals/pressostato.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/pressostato.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/sht3.o: main/peripherals/sht3.c  .generated_files/flags/default/e5eeb1deadc40e151b5a8dccb1e9769c8a120ccc .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/sht3.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/sht3.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/sht3.c  -o ${OBJECTDIR}/main/peripherals/sht3.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/sht3.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/led.o: main/peripherals/led.c  .generated_files/flags/default/aa76e2e461f91230e9e0b82d81de6e24311fa91 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/led.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/led.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/led.c  -o ${OBJECTDIR}/main/peripherals/led.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/led.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/main.o: main/main.c  .generated_files/flags/default/bb875ce2e3a41561259c5a07e7de298212af6124 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main" 
	@${RM} ${OBJECTDIR}/main/main.o.d 
	@${RM} ${OBJECTDIR}/main/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/main.c  -o ${OBJECTDIR}/main/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/main.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/controller/cycle.o: main/controller/cycle.c  .generated_files/flags/default/66940e9e76c20fd973b1287da9d44608b3e3f337 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/controller" 
	@${RM} ${OBJECTDIR}/main/controller/cycle.o.d 
	@${RM} ${OBJECTDIR}/main/controller/cycle.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/controller/cycle.c  -o ${OBJECTDIR}/main/controller/cycle.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/controller/cycle.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/uart2_driver.o: main/peripherals/uart2_driver.c  .generated_files/flags/default/142ce12d87d218f1c1141dea71fe30b92741d63e .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/uart2_driver.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/uart2_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/uart2_driver.c  -o ${OBJECTDIR}/main/peripherals/uart2_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/uart2_driver.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/uart1_driver.o: main/peripherals/uart1_driver.c  .generated_files/flags/default/50656542f032da6a425a8af415f0f599014526c2 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/uart1_driver.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/uart1_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/uart1_driver.c  -o ${OBJECTDIR}/main/peripherals/uart1_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/uart1_driver.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/controller/modbus_exp.o: main/controller/modbus_exp.c  .generated_files/flags/default/f8d2e2c787cf96b64feb1ec9d8467c14ad689351 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/controller" 
	@${RM} ${OBJECTDIR}/main/controller/modbus_exp.o.d 
	@${RM} ${OBJECTDIR}/main/controller/modbus_exp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/controller/modbus_exp.c  -o ${OBJECTDIR}/main/controller/modbus_exp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/controller/modbus_exp.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/utils/assert.o: main/utils/assert.c  .generated_files/flags/default/1c28b500033b6ca6eb26e7c371304f7085b0a533 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
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
dist/${CND_CONF}/${IMAGE_TYPE}/EssiccatoioQuadro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/EssiccatoioQuadro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x800:0x81B -mreserve=data@0x81C:0x81D -mreserve=data@0x81E:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x827 -mreserve=data@0x82A:0x84F   -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,--defsym=__MPLAB_DEBUGGER_ICD3=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/EssiccatoioQuadro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/EssiccatoioQuadro.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}/xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/EssiccatoioQuadro.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
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

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
