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
FINAL_IMAGE=${DISTDIR}/EssiccatoioQuadro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/EssiccatoioQuadro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=components/gel/gel/crc/crc16-ccitt.c components/gel/gel/crc/crc32.c components/gel/gel/debounce/debounce.c components/gel/gel/debounce/pulsecounter.c components/gel/gel/timer/stopwatch.c components/gel/gel/timer/timer.c components/gel/gel/wearleveling/wearleveling.c components/I2C/i2c_common/i2c_common.c components/I2C/i2c_devices/eeprom/24LC16/24LC16.c components/I2C/i2c_devices/io/MCP23008/mcp23008.c components/I2C/i2c_ports/PIC/i2c_bitbang.c components/I2C/i2c_ports/PIC/i2c_driver.c components/SPI/spi_common/spi_common.c components/SPI/spi_devices/adc/MCP3202/mcp3202.c components/SPI/spi_devices/io/MCP23S08/mcp23s08.c components/SPI/spi_devices/io/MCP23x17/mcp23x17.c components/lightmodbus-impl.c main/controller/modbus_server.c main/controller/controller.c main/controller/cycle.c main/controller/modbus_exp.c main/controller/cesto.c main/controller/alarms.c main/controller/ventilazione.c main/controller/riscaldamento.c main/controller/busy_signal.c main/model/model.c main/peripherals/system.c main/peripherals/timer.c main/peripherals/digin.c main/peripherals/digout.c main/peripherals/pwm.c main/peripherals/i2c_devices.c main/peripherals/gettoniera.c main/peripherals/pwoff.c main/spi.c main/peripherals/spi_devices.c main/peripherals/pressostato.c main/peripherals/sht3.c main/peripherals/led.c main/peripherals/uart2_driver.c main/peripherals/uart1_driver.c main/peripherals/ptc.c main/utils/assert.c main/main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o ${OBJECTDIR}/components/gel/gel/crc/crc32.o ${OBJECTDIR}/components/gel/gel/debounce/debounce.o ${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o ${OBJECTDIR}/components/gel/gel/timer/stopwatch.o ${OBJECTDIR}/components/gel/gel/timer/timer.o ${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o ${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o ${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o ${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o ${OBJECTDIR}/components/SPI/spi_common/spi_common.o ${OBJECTDIR}/components/SPI/spi_devices/adc/MCP3202/mcp3202.o ${OBJECTDIR}/components/SPI/spi_devices/io/MCP23S08/mcp23s08.o ${OBJECTDIR}/components/SPI/spi_devices/io/MCP23x17/mcp23x17.o ${OBJECTDIR}/components/lightmodbus-impl.o ${OBJECTDIR}/main/controller/modbus_server.o ${OBJECTDIR}/main/controller/controller.o ${OBJECTDIR}/main/controller/cycle.o ${OBJECTDIR}/main/controller/modbus_exp.o ${OBJECTDIR}/main/controller/cesto.o ${OBJECTDIR}/main/controller/alarms.o ${OBJECTDIR}/main/controller/ventilazione.o ${OBJECTDIR}/main/controller/riscaldamento.o ${OBJECTDIR}/main/controller/busy_signal.o ${OBJECTDIR}/main/model/model.o ${OBJECTDIR}/main/peripherals/system.o ${OBJECTDIR}/main/peripherals/timer.o ${OBJECTDIR}/main/peripherals/digin.o ${OBJECTDIR}/main/peripherals/digout.o ${OBJECTDIR}/main/peripherals/pwm.o ${OBJECTDIR}/main/peripherals/i2c_devices.o ${OBJECTDIR}/main/peripherals/gettoniera.o ${OBJECTDIR}/main/peripherals/pwoff.o ${OBJECTDIR}/main/spi.o ${OBJECTDIR}/main/peripherals/spi_devices.o ${OBJECTDIR}/main/peripherals/pressostato.o ${OBJECTDIR}/main/peripherals/sht3.o ${OBJECTDIR}/main/peripherals/led.o ${OBJECTDIR}/main/peripherals/uart2_driver.o ${OBJECTDIR}/main/peripherals/uart1_driver.o ${OBJECTDIR}/main/peripherals/ptc.o ${OBJECTDIR}/main/utils/assert.o ${OBJECTDIR}/main/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o.d ${OBJECTDIR}/components/gel/gel/crc/crc32.o.d ${OBJECTDIR}/components/gel/gel/debounce/debounce.o.d ${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o.d ${OBJECTDIR}/components/gel/gel/timer/stopwatch.o.d ${OBJECTDIR}/components/gel/gel/timer/timer.o.d ${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o.d ${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o.d ${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o.d ${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o.d ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o.d ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o.d ${OBJECTDIR}/components/SPI/spi_common/spi_common.o.d ${OBJECTDIR}/components/SPI/spi_devices/adc/MCP3202/mcp3202.o.d ${OBJECTDIR}/components/SPI/spi_devices/io/MCP23S08/mcp23s08.o.d ${OBJECTDIR}/components/SPI/spi_devices/io/MCP23x17/mcp23x17.o.d ${OBJECTDIR}/components/lightmodbus-impl.o.d ${OBJECTDIR}/main/controller/modbus_server.o.d ${OBJECTDIR}/main/controller/controller.o.d ${OBJECTDIR}/main/controller/cycle.o.d ${OBJECTDIR}/main/controller/modbus_exp.o.d ${OBJECTDIR}/main/controller/cesto.o.d ${OBJECTDIR}/main/controller/alarms.o.d ${OBJECTDIR}/main/controller/ventilazione.o.d ${OBJECTDIR}/main/controller/riscaldamento.o.d ${OBJECTDIR}/main/controller/busy_signal.o.d ${OBJECTDIR}/main/model/model.o.d ${OBJECTDIR}/main/peripherals/system.o.d ${OBJECTDIR}/main/peripherals/timer.o.d ${OBJECTDIR}/main/peripherals/digin.o.d ${OBJECTDIR}/main/peripherals/digout.o.d ${OBJECTDIR}/main/peripherals/pwm.o.d ${OBJECTDIR}/main/peripherals/i2c_devices.o.d ${OBJECTDIR}/main/peripherals/gettoniera.o.d ${OBJECTDIR}/main/peripherals/pwoff.o.d ${OBJECTDIR}/main/spi.o.d ${OBJECTDIR}/main/peripherals/spi_devices.o.d ${OBJECTDIR}/main/peripherals/pressostato.o.d ${OBJECTDIR}/main/peripherals/sht3.o.d ${OBJECTDIR}/main/peripherals/led.o.d ${OBJECTDIR}/main/peripherals/uart2_driver.o.d ${OBJECTDIR}/main/peripherals/uart1_driver.o.d ${OBJECTDIR}/main/peripherals/ptc.o.d ${OBJECTDIR}/main/utils/assert.o.d ${OBJECTDIR}/main/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o ${OBJECTDIR}/components/gel/gel/crc/crc32.o ${OBJECTDIR}/components/gel/gel/debounce/debounce.o ${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o ${OBJECTDIR}/components/gel/gel/timer/stopwatch.o ${OBJECTDIR}/components/gel/gel/timer/timer.o ${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o ${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o ${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o ${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o ${OBJECTDIR}/components/SPI/spi_common/spi_common.o ${OBJECTDIR}/components/SPI/spi_devices/adc/MCP3202/mcp3202.o ${OBJECTDIR}/components/SPI/spi_devices/io/MCP23S08/mcp23s08.o ${OBJECTDIR}/components/SPI/spi_devices/io/MCP23x17/mcp23x17.o ${OBJECTDIR}/components/lightmodbus-impl.o ${OBJECTDIR}/main/controller/modbus_server.o ${OBJECTDIR}/main/controller/controller.o ${OBJECTDIR}/main/controller/cycle.o ${OBJECTDIR}/main/controller/modbus_exp.o ${OBJECTDIR}/main/controller/cesto.o ${OBJECTDIR}/main/controller/alarms.o ${OBJECTDIR}/main/controller/ventilazione.o ${OBJECTDIR}/main/controller/riscaldamento.o ${OBJECTDIR}/main/controller/busy_signal.o ${OBJECTDIR}/main/model/model.o ${OBJECTDIR}/main/peripherals/system.o ${OBJECTDIR}/main/peripherals/timer.o ${OBJECTDIR}/main/peripherals/digin.o ${OBJECTDIR}/main/peripherals/digout.o ${OBJECTDIR}/main/peripherals/pwm.o ${OBJECTDIR}/main/peripherals/i2c_devices.o ${OBJECTDIR}/main/peripherals/gettoniera.o ${OBJECTDIR}/main/peripherals/pwoff.o ${OBJECTDIR}/main/spi.o ${OBJECTDIR}/main/peripherals/spi_devices.o ${OBJECTDIR}/main/peripherals/pressostato.o ${OBJECTDIR}/main/peripherals/sht3.o ${OBJECTDIR}/main/peripherals/led.o ${OBJECTDIR}/main/peripherals/uart2_driver.o ${OBJECTDIR}/main/peripherals/uart1_driver.o ${OBJECTDIR}/main/peripherals/ptc.o ${OBJECTDIR}/main/utils/assert.o ${OBJECTDIR}/main/main.o

# Source Files
SOURCEFILES=components/gel/gel/crc/crc16-ccitt.c components/gel/gel/crc/crc32.c components/gel/gel/debounce/debounce.c components/gel/gel/debounce/pulsecounter.c components/gel/gel/timer/stopwatch.c components/gel/gel/timer/timer.c components/gel/gel/wearleveling/wearleveling.c components/I2C/i2c_common/i2c_common.c components/I2C/i2c_devices/eeprom/24LC16/24LC16.c components/I2C/i2c_devices/io/MCP23008/mcp23008.c components/I2C/i2c_ports/PIC/i2c_bitbang.c components/I2C/i2c_ports/PIC/i2c_driver.c components/SPI/spi_common/spi_common.c components/SPI/spi_devices/adc/MCP3202/mcp3202.c components/SPI/spi_devices/io/MCP23S08/mcp23s08.c components/SPI/spi_devices/io/MCP23x17/mcp23x17.c components/lightmodbus-impl.c main/controller/modbus_server.c main/controller/controller.c main/controller/cycle.c main/controller/modbus_exp.c main/controller/cesto.c main/controller/alarms.c main/controller/ventilazione.c main/controller/riscaldamento.c main/controller/busy_signal.c main/model/model.c main/peripherals/system.c main/peripherals/timer.c main/peripherals/digin.c main/peripherals/digout.c main/peripherals/pwm.c main/peripherals/i2c_devices.c main/peripherals/gettoniera.c main/peripherals/pwoff.c main/spi.c main/peripherals/spi_devices.c main/peripherals/pressostato.c main/peripherals/sht3.c main/peripherals/led.c main/peripherals/uart2_driver.c main/peripherals/uart1_driver.c main/peripherals/ptc.c main/utils/assert.c main/main.c



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/EssiccatoioQuadro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ256GA705
MP_LINKER_FILE_OPTION=,--script=p24FJ256GA705.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o: components/gel/gel/crc/crc16-ccitt.c  .generated_files/flags/default/df305c390fec7a8c92bc021e93957612356b5f90 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/crc" 
	@${RM} ${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/crc/crc16-ccitt.c  -o ${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/gel/gel/crc/crc32.o: components/gel/gel/crc/crc32.c  .generated_files/flags/default/457e566934f08143c1cd68b410e974041b48ecb2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/crc" 
	@${RM} ${OBJECTDIR}/components/gel/gel/crc/crc32.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/crc/crc32.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/crc/crc32.c  -o ${OBJECTDIR}/components/gel/gel/crc/crc32.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/crc/crc32.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/gel/gel/debounce/debounce.o: components/gel/gel/debounce/debounce.c  .generated_files/flags/default/92e8dfe412162313d686a88b22b9e1d8c86f48cb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/debounce" 
	@${RM} ${OBJECTDIR}/components/gel/gel/debounce/debounce.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/debounce/debounce.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/debounce/debounce.c  -o ${OBJECTDIR}/components/gel/gel/debounce/debounce.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/debounce/debounce.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o: components/gel/gel/debounce/pulsecounter.c  .generated_files/flags/default/edcef3e82284153b02402f0e12d85b859c8c43a2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/debounce" 
	@${RM} ${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/debounce/pulsecounter.c  -o ${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/gel/gel/timer/stopwatch.o: components/gel/gel/timer/stopwatch.c  .generated_files/flags/default/92e7b1e5857bea7b52f586770911ad49a592120d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/timer" 
	@${RM} ${OBJECTDIR}/components/gel/gel/timer/stopwatch.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/timer/stopwatch.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/timer/stopwatch.c  -o ${OBJECTDIR}/components/gel/gel/timer/stopwatch.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/timer/stopwatch.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/gel/gel/timer/timer.o: components/gel/gel/timer/timer.c  .generated_files/flags/default/efe0d979eb11a1d8607b3a95ecba4157cfa9c323 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/timer" 
	@${RM} ${OBJECTDIR}/components/gel/gel/timer/timer.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/timer/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/timer/timer.c  -o ${OBJECTDIR}/components/gel/gel/timer/timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/timer/timer.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o: components/gel/gel/wearleveling/wearleveling.c  .generated_files/flags/default/9b7135719c62562d0c17549c8e24c60ea3de9211 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/wearleveling" 
	@${RM} ${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/wearleveling/wearleveling.c  -o ${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o: components/I2C/i2c_common/i2c_common.c  .generated_files/flags/default/ad080eadfdbf1de475f38c77c4e066cf201c3a20 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/components/I2C/i2c_common" 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o.d 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/I2C/i2c_common/i2c_common.c  -o ${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o: components/I2C/i2c_devices/eeprom/24LC16/24LC16.c  .generated_files/flags/default/3b43cd4f06e3ea4312a2709b2825be4d10b1db07 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16" 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o.d 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/I2C/i2c_devices/eeprom/24LC16/24LC16.c  -o ${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o: components/I2C/i2c_devices/io/MCP23008/mcp23008.c  .generated_files/flags/default/59dfe556ac85308c37255a95a44ac6bcc2c3fc47 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008" 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o.d 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/I2C/i2c_devices/io/MCP23008/mcp23008.c  -o ${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o: components/I2C/i2c_ports/PIC/i2c_bitbang.c  .generated_files/flags/default/2d019b749a3c384f5fef66e9837def3300123987 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/components/I2C/i2c_ports/PIC" 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o.d 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/I2C/i2c_ports/PIC/i2c_bitbang.c  -o ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o: components/I2C/i2c_ports/PIC/i2c_driver.c  .generated_files/flags/default/60ec3b24c97ce0b4340ea340e9c3194bddbfc7cd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/components/I2C/i2c_ports/PIC" 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o.d 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/I2C/i2c_ports/PIC/i2c_driver.c  -o ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/SPI/spi_common/spi_common.o: components/SPI/spi_common/spi_common.c  .generated_files/flags/default/1b03b275ff316e7138c2bc8d9d11f85d7dda85aa .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/components/SPI/spi_common" 
	@${RM} ${OBJECTDIR}/components/SPI/spi_common/spi_common.o.d 
	@${RM} ${OBJECTDIR}/components/SPI/spi_common/spi_common.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/SPI/spi_common/spi_common.c  -o ${OBJECTDIR}/components/SPI/spi_common/spi_common.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/SPI/spi_common/spi_common.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/SPI/spi_devices/adc/MCP3202/mcp3202.o: components/SPI/spi_devices/adc/MCP3202/mcp3202.c  .generated_files/flags/default/a4ecc21a9222664bcca7f8db3186c4ba41f86c17 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/components/SPI/spi_devices/adc/MCP3202" 
	@${RM} ${OBJECTDIR}/components/SPI/spi_devices/adc/MCP3202/mcp3202.o.d 
	@${RM} ${OBJECTDIR}/components/SPI/spi_devices/adc/MCP3202/mcp3202.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/SPI/spi_devices/adc/MCP3202/mcp3202.c  -o ${OBJECTDIR}/components/SPI/spi_devices/adc/MCP3202/mcp3202.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/SPI/spi_devices/adc/MCP3202/mcp3202.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/SPI/spi_devices/io/MCP23S08/mcp23s08.o: components/SPI/spi_devices/io/MCP23S08/mcp23s08.c  .generated_files/flags/default/57df6808255c4e007f52fb276886fc5686c569af .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/components/SPI/spi_devices/io/MCP23S08" 
	@${RM} ${OBJECTDIR}/components/SPI/spi_devices/io/MCP23S08/mcp23s08.o.d 
	@${RM} ${OBJECTDIR}/components/SPI/spi_devices/io/MCP23S08/mcp23s08.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/SPI/spi_devices/io/MCP23S08/mcp23s08.c  -o ${OBJECTDIR}/components/SPI/spi_devices/io/MCP23S08/mcp23s08.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/SPI/spi_devices/io/MCP23S08/mcp23s08.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/SPI/spi_devices/io/MCP23x17/mcp23x17.o: components/SPI/spi_devices/io/MCP23x17/mcp23x17.c  .generated_files/flags/default/532f85732c1e7859eaf6034f94024070fc615937 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/components/SPI/spi_devices/io/MCP23x17" 
	@${RM} ${OBJECTDIR}/components/SPI/spi_devices/io/MCP23x17/mcp23x17.o.d 
	@${RM} ${OBJECTDIR}/components/SPI/spi_devices/io/MCP23x17/mcp23x17.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/SPI/spi_devices/io/MCP23x17/mcp23x17.c  -o ${OBJECTDIR}/components/SPI/spi_devices/io/MCP23x17/mcp23x17.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/SPI/spi_devices/io/MCP23x17/mcp23x17.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/lightmodbus-impl.o: components/lightmodbus-impl.c  .generated_files/flags/default/63d6b0e01b3208f4962955a147b30184cd7a7497 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/components" 
	@${RM} ${OBJECTDIR}/components/lightmodbus-impl.o.d 
	@${RM} ${OBJECTDIR}/components/lightmodbus-impl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/lightmodbus-impl.c  -o ${OBJECTDIR}/components/lightmodbus-impl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/lightmodbus-impl.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/controller/modbus_server.o: main/controller/modbus_server.c  .generated_files/flags/default/e29f63314d2ac171a0c78080cb767ef044daa2c1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main/controller" 
	@${RM} ${OBJECTDIR}/main/controller/modbus_server.o.d 
	@${RM} ${OBJECTDIR}/main/controller/modbus_server.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/controller/modbus_server.c  -o ${OBJECTDIR}/main/controller/modbus_server.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/controller/modbus_server.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/controller/controller.o: main/controller/controller.c  .generated_files/flags/default/94e7d8080823b06b4b7f32e1060130b6d34a9e22 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main/controller" 
	@${RM} ${OBJECTDIR}/main/controller/controller.o.d 
	@${RM} ${OBJECTDIR}/main/controller/controller.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/controller/controller.c  -o ${OBJECTDIR}/main/controller/controller.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/controller/controller.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/controller/cycle.o: main/controller/cycle.c  .generated_files/flags/default/19483d594f73d989d3bf07bb7682dc32d71ed862 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main/controller" 
	@${RM} ${OBJECTDIR}/main/controller/cycle.o.d 
	@${RM} ${OBJECTDIR}/main/controller/cycle.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/controller/cycle.c  -o ${OBJECTDIR}/main/controller/cycle.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/controller/cycle.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/controller/modbus_exp.o: main/controller/modbus_exp.c  .generated_files/flags/default/c1d053c25096df88b0fda721b583d5a3919d6c4c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main/controller" 
	@${RM} ${OBJECTDIR}/main/controller/modbus_exp.o.d 
	@${RM} ${OBJECTDIR}/main/controller/modbus_exp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/controller/modbus_exp.c  -o ${OBJECTDIR}/main/controller/modbus_exp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/controller/modbus_exp.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/controller/cesto.o: main/controller/cesto.c  .generated_files/flags/default/f6dd31d0e373403d5179f0cde178e0f29ffaaceb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main/controller" 
	@${RM} ${OBJECTDIR}/main/controller/cesto.o.d 
	@${RM} ${OBJECTDIR}/main/controller/cesto.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/controller/cesto.c  -o ${OBJECTDIR}/main/controller/cesto.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/controller/cesto.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/controller/alarms.o: main/controller/alarms.c  .generated_files/flags/default/4e6069c9ef4da4a1e5410e3b15cc912388e03a5c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main/controller" 
	@${RM} ${OBJECTDIR}/main/controller/alarms.o.d 
	@${RM} ${OBJECTDIR}/main/controller/alarms.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/controller/alarms.c  -o ${OBJECTDIR}/main/controller/alarms.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/controller/alarms.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/controller/ventilazione.o: main/controller/ventilazione.c  .generated_files/flags/default/2bb0291991593b4e39a7aa8028d34f634c3b0229 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main/controller" 
	@${RM} ${OBJECTDIR}/main/controller/ventilazione.o.d 
	@${RM} ${OBJECTDIR}/main/controller/ventilazione.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/controller/ventilazione.c  -o ${OBJECTDIR}/main/controller/ventilazione.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/controller/ventilazione.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/controller/riscaldamento.o: main/controller/riscaldamento.c  .generated_files/flags/default/49145392e9776b89bf320f408879ddbe17cb071d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main/controller" 
	@${RM} ${OBJECTDIR}/main/controller/riscaldamento.o.d 
	@${RM} ${OBJECTDIR}/main/controller/riscaldamento.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/controller/riscaldamento.c  -o ${OBJECTDIR}/main/controller/riscaldamento.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/controller/riscaldamento.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/controller/busy_signal.o: main/controller/busy_signal.c  .generated_files/flags/default/360cf11fb3a960d321134373bda8831b0efbe70c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main/controller" 
	@${RM} ${OBJECTDIR}/main/controller/busy_signal.o.d 
	@${RM} ${OBJECTDIR}/main/controller/busy_signal.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/controller/busy_signal.c  -o ${OBJECTDIR}/main/controller/busy_signal.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/controller/busy_signal.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/model/model.o: main/model/model.c  .generated_files/flags/default/2e5e6b619e09e67fb6dd57d830e7187b3d359f52 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main/model" 
	@${RM} ${OBJECTDIR}/main/model/model.o.d 
	@${RM} ${OBJECTDIR}/main/model/model.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/model/model.c  -o ${OBJECTDIR}/main/model/model.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/model/model.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/system.o: main/peripherals/system.c  .generated_files/flags/default/560d9e7f9d8c6c5542e3bf436c9992d8004742a2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/system.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/system.c  -o ${OBJECTDIR}/main/peripherals/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/system.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/timer.o: main/peripherals/timer.c  .generated_files/flags/default/2406e3fa1acee6d18a287aa2bde0a8e0e689b64f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/timer.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/timer.c  -o ${OBJECTDIR}/main/peripherals/timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/timer.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/digin.o: main/peripherals/digin.c  .generated_files/flags/default/a68f7cb5781f96a28e67d5573dd93b517d8b9cb6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/digin.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/digin.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/digin.c  -o ${OBJECTDIR}/main/peripherals/digin.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/digin.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/digout.o: main/peripherals/digout.c  .generated_files/flags/default/cac2694904f3cc99c7ba877a8f5a0cb0957309b9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/digout.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/digout.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/digout.c  -o ${OBJECTDIR}/main/peripherals/digout.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/digout.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/pwm.o: main/peripherals/pwm.c  .generated_files/flags/default/89619d6354e273eae99d6bc4243d0c1d42ee1192 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/pwm.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/pwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/pwm.c  -o ${OBJECTDIR}/main/peripherals/pwm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/pwm.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/i2c_devices.o: main/peripherals/i2c_devices.c  .generated_files/flags/default/415fe35696a85bea6382ac17741253aa27df28b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/i2c_devices.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/i2c_devices.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/i2c_devices.c  -o ${OBJECTDIR}/main/peripherals/i2c_devices.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/i2c_devices.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/gettoniera.o: main/peripherals/gettoniera.c  .generated_files/flags/default/6967e9c935e507b112f4517637640000717f7f98 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/gettoniera.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/gettoniera.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/gettoniera.c  -o ${OBJECTDIR}/main/peripherals/gettoniera.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/gettoniera.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/pwoff.o: main/peripherals/pwoff.c  .generated_files/flags/default/53aaa3c2e21e66eaaec631d4d7aea5c44d0576fe .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/pwoff.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/pwoff.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/pwoff.c  -o ${OBJECTDIR}/main/peripherals/pwoff.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/pwoff.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/spi.o: main/spi.c  .generated_files/flags/default/59b75b0be80be14cc15e893511f8352ad63a041d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main" 
	@${RM} ${OBJECTDIR}/main/spi.o.d 
	@${RM} ${OBJECTDIR}/main/spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/spi.c  -o ${OBJECTDIR}/main/spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/spi.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/spi_devices.o: main/peripherals/spi_devices.c  .generated_files/flags/default/73b42667934413d297656fa37e913359a45ac380 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/spi_devices.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/spi_devices.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/spi_devices.c  -o ${OBJECTDIR}/main/peripherals/spi_devices.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/spi_devices.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/pressostato.o: main/peripherals/pressostato.c  .generated_files/flags/default/167401e2e99b8579c55262a7aed171f576f23c9d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/pressostato.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/pressostato.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/pressostato.c  -o ${OBJECTDIR}/main/peripherals/pressostato.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/pressostato.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/sht3.o: main/peripherals/sht3.c  .generated_files/flags/default/30d8b194f465adec021cdc7ec97ab69e94c2e11a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/sht3.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/sht3.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/sht3.c  -o ${OBJECTDIR}/main/peripherals/sht3.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/sht3.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/led.o: main/peripherals/led.c  .generated_files/flags/default/644b957a9671bacc4ec75779587bff01f91cdd42 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/led.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/led.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/led.c  -o ${OBJECTDIR}/main/peripherals/led.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/led.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/uart2_driver.o: main/peripherals/uart2_driver.c  .generated_files/flags/default/99761d4bcea52ee477a44460b28b8431cb538eea .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/uart2_driver.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/uart2_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/uart2_driver.c  -o ${OBJECTDIR}/main/peripherals/uart2_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/uart2_driver.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/uart1_driver.o: main/peripherals/uart1_driver.c  .generated_files/flags/default/332d409d86d1730f39df6acd13a71aeb7569d28e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/uart1_driver.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/uart1_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/uart1_driver.c  -o ${OBJECTDIR}/main/peripherals/uart1_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/uart1_driver.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/ptc.o: main/peripherals/ptc.c  .generated_files/flags/default/bf4a24e6d7991a72f7f2ae3b4907c394bbb3366c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/ptc.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/ptc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/ptc.c  -o ${OBJECTDIR}/main/peripherals/ptc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/ptc.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/utils/assert.o: main/utils/assert.c  .generated_files/flags/default/39f71d3cafdfdedfcf67364d09af43f07a58182b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main/utils" 
	@${RM} ${OBJECTDIR}/main/utils/assert.o.d 
	@${RM} ${OBJECTDIR}/main/utils/assert.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/utils/assert.c  -o ${OBJECTDIR}/main/utils/assert.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/utils/assert.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/main.o: main/main.c  .generated_files/flags/default/5d017b7bee0068b7b221764a4bac1d9189397051 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main" 
	@${RM} ${OBJECTDIR}/main/main.o.d 
	@${RM} ${OBJECTDIR}/main/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/main.c  -o ${OBJECTDIR}/main/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o: components/gel/gel/crc/crc16-ccitt.c  .generated_files/flags/default/b7d80f63e8e5ad4395f7438cedc2c1325ff7a31b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/crc" 
	@${RM} ${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/crc/crc16-ccitt.c  -o ${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/gel/gel/crc/crc32.o: components/gel/gel/crc/crc32.c  .generated_files/flags/default/d522f0e56632fc2f2ce4c266b410eec37c014c33 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/crc" 
	@${RM} ${OBJECTDIR}/components/gel/gel/crc/crc32.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/crc/crc32.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/crc/crc32.c  -o ${OBJECTDIR}/components/gel/gel/crc/crc32.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/crc/crc32.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/gel/gel/debounce/debounce.o: components/gel/gel/debounce/debounce.c  .generated_files/flags/default/22b419d9a8cfcb955a406a3d62d1d5839e59a528 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/debounce" 
	@${RM} ${OBJECTDIR}/components/gel/gel/debounce/debounce.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/debounce/debounce.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/debounce/debounce.c  -o ${OBJECTDIR}/components/gel/gel/debounce/debounce.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/debounce/debounce.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o: components/gel/gel/debounce/pulsecounter.c  .generated_files/flags/default/5ae6a607b89b43b46dcb6842291c3e4b86cc250c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/debounce" 
	@${RM} ${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/debounce/pulsecounter.c  -o ${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/gel/gel/timer/stopwatch.o: components/gel/gel/timer/stopwatch.c  .generated_files/flags/default/93f8f71a75e2a1b4b05a0b9f9b670171904416 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/timer" 
	@${RM} ${OBJECTDIR}/components/gel/gel/timer/stopwatch.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/timer/stopwatch.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/timer/stopwatch.c  -o ${OBJECTDIR}/components/gel/gel/timer/stopwatch.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/timer/stopwatch.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/gel/gel/timer/timer.o: components/gel/gel/timer/timer.c  .generated_files/flags/default/7fcf2db7ad3a74097392b7f0ffaa46c99a83654c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/timer" 
	@${RM} ${OBJECTDIR}/components/gel/gel/timer/timer.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/timer/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/timer/timer.c  -o ${OBJECTDIR}/components/gel/gel/timer/timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/timer/timer.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o: components/gel/gel/wearleveling/wearleveling.c  .generated_files/flags/default/ec6896e805d30961d83c1e670f12a1f455e9928a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/wearleveling" 
	@${RM} ${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/wearleveling/wearleveling.c  -o ${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o: components/I2C/i2c_common/i2c_common.c  .generated_files/flags/default/384b3157af592c881cbf107d63ccfb27272ce403 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/components/I2C/i2c_common" 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o.d 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/I2C/i2c_common/i2c_common.c  -o ${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o: components/I2C/i2c_devices/eeprom/24LC16/24LC16.c  .generated_files/flags/default/b24613c10a92a728764ac3c30c0f9d38ac48dea9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16" 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o.d 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/I2C/i2c_devices/eeprom/24LC16/24LC16.c  -o ${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o: components/I2C/i2c_devices/io/MCP23008/mcp23008.c  .generated_files/flags/default/da1cf5db98103f2068c2772fe9748f45ff0c730f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008" 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o.d 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/I2C/i2c_devices/io/MCP23008/mcp23008.c  -o ${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o: components/I2C/i2c_ports/PIC/i2c_bitbang.c  .generated_files/flags/default/4646ce3c927bc94e2d53175f1ecb8fe3e39a2a7c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/components/I2C/i2c_ports/PIC" 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o.d 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/I2C/i2c_ports/PIC/i2c_bitbang.c  -o ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o: components/I2C/i2c_ports/PIC/i2c_driver.c  .generated_files/flags/default/3e63a769886b641a9892804521b9c62064de0821 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/components/I2C/i2c_ports/PIC" 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o.d 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/I2C/i2c_ports/PIC/i2c_driver.c  -o ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/SPI/spi_common/spi_common.o: components/SPI/spi_common/spi_common.c  .generated_files/flags/default/a41a51e0213cc6cac66c1124757ff5311f64a64a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/components/SPI/spi_common" 
	@${RM} ${OBJECTDIR}/components/SPI/spi_common/spi_common.o.d 
	@${RM} ${OBJECTDIR}/components/SPI/spi_common/spi_common.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/SPI/spi_common/spi_common.c  -o ${OBJECTDIR}/components/SPI/spi_common/spi_common.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/SPI/spi_common/spi_common.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/SPI/spi_devices/adc/MCP3202/mcp3202.o: components/SPI/spi_devices/adc/MCP3202/mcp3202.c  .generated_files/flags/default/1158d64007093bc188b10a8bd08a06314a740aa9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/components/SPI/spi_devices/adc/MCP3202" 
	@${RM} ${OBJECTDIR}/components/SPI/spi_devices/adc/MCP3202/mcp3202.o.d 
	@${RM} ${OBJECTDIR}/components/SPI/spi_devices/adc/MCP3202/mcp3202.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/SPI/spi_devices/adc/MCP3202/mcp3202.c  -o ${OBJECTDIR}/components/SPI/spi_devices/adc/MCP3202/mcp3202.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/SPI/spi_devices/adc/MCP3202/mcp3202.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/SPI/spi_devices/io/MCP23S08/mcp23s08.o: components/SPI/spi_devices/io/MCP23S08/mcp23s08.c  .generated_files/flags/default/b9a813d8e9ca2c8eabe5065d36c8a2706463f614 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/components/SPI/spi_devices/io/MCP23S08" 
	@${RM} ${OBJECTDIR}/components/SPI/spi_devices/io/MCP23S08/mcp23s08.o.d 
	@${RM} ${OBJECTDIR}/components/SPI/spi_devices/io/MCP23S08/mcp23s08.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/SPI/spi_devices/io/MCP23S08/mcp23s08.c  -o ${OBJECTDIR}/components/SPI/spi_devices/io/MCP23S08/mcp23s08.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/SPI/spi_devices/io/MCP23S08/mcp23s08.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/SPI/spi_devices/io/MCP23x17/mcp23x17.o: components/SPI/spi_devices/io/MCP23x17/mcp23x17.c  .generated_files/flags/default/b9b59d540dbc84e4f8f7a1f83dd515e43ae4f825 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/components/SPI/spi_devices/io/MCP23x17" 
	@${RM} ${OBJECTDIR}/components/SPI/spi_devices/io/MCP23x17/mcp23x17.o.d 
	@${RM} ${OBJECTDIR}/components/SPI/spi_devices/io/MCP23x17/mcp23x17.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/SPI/spi_devices/io/MCP23x17/mcp23x17.c  -o ${OBJECTDIR}/components/SPI/spi_devices/io/MCP23x17/mcp23x17.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/SPI/spi_devices/io/MCP23x17/mcp23x17.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/lightmodbus-impl.o: components/lightmodbus-impl.c  .generated_files/flags/default/a54e8ed8d6c8c5c40658ec40354bd52a53896234 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/components" 
	@${RM} ${OBJECTDIR}/components/lightmodbus-impl.o.d 
	@${RM} ${OBJECTDIR}/components/lightmodbus-impl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/lightmodbus-impl.c  -o ${OBJECTDIR}/components/lightmodbus-impl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/lightmodbus-impl.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/controller/modbus_server.o: main/controller/modbus_server.c  .generated_files/flags/default/5e82c94bb24ad23c4154bb3947fc20e632e4d2e2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main/controller" 
	@${RM} ${OBJECTDIR}/main/controller/modbus_server.o.d 
	@${RM} ${OBJECTDIR}/main/controller/modbus_server.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/controller/modbus_server.c  -o ${OBJECTDIR}/main/controller/modbus_server.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/controller/modbus_server.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/controller/controller.o: main/controller/controller.c  .generated_files/flags/default/654f01068ff9e640fa9e06d1285d89bee8ca2d46 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main/controller" 
	@${RM} ${OBJECTDIR}/main/controller/controller.o.d 
	@${RM} ${OBJECTDIR}/main/controller/controller.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/controller/controller.c  -o ${OBJECTDIR}/main/controller/controller.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/controller/controller.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/controller/cycle.o: main/controller/cycle.c  .generated_files/flags/default/66940e9e76c20fd973b1287da9d44608b3e3f337 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main/controller" 
	@${RM} ${OBJECTDIR}/main/controller/cycle.o.d 
	@${RM} ${OBJECTDIR}/main/controller/cycle.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/controller/cycle.c  -o ${OBJECTDIR}/main/controller/cycle.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/controller/cycle.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/controller/modbus_exp.o: main/controller/modbus_exp.c  .generated_files/flags/default/f8d2e2c787cf96b64feb1ec9d8467c14ad689351 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main/controller" 
	@${RM} ${OBJECTDIR}/main/controller/modbus_exp.o.d 
	@${RM} ${OBJECTDIR}/main/controller/modbus_exp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/controller/modbus_exp.c  -o ${OBJECTDIR}/main/controller/modbus_exp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/controller/modbus_exp.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/controller/cesto.o: main/controller/cesto.c  .generated_files/flags/default/305064003e4dcabda730dca5d4ccbfc918596659 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main/controller" 
	@${RM} ${OBJECTDIR}/main/controller/cesto.o.d 
	@${RM} ${OBJECTDIR}/main/controller/cesto.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/controller/cesto.c  -o ${OBJECTDIR}/main/controller/cesto.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/controller/cesto.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/controller/alarms.o: main/controller/alarms.c  .generated_files/flags/default/d0693778b3ca38f52e5fb2c8cdf478cb22285dc9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main/controller" 
	@${RM} ${OBJECTDIR}/main/controller/alarms.o.d 
	@${RM} ${OBJECTDIR}/main/controller/alarms.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/controller/alarms.c  -o ${OBJECTDIR}/main/controller/alarms.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/controller/alarms.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/controller/ventilazione.o: main/controller/ventilazione.c  .generated_files/flags/default/fcbcca8faec6e261e88725244f931b820bfd1bc7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main/controller" 
	@${RM} ${OBJECTDIR}/main/controller/ventilazione.o.d 
	@${RM} ${OBJECTDIR}/main/controller/ventilazione.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/controller/ventilazione.c  -o ${OBJECTDIR}/main/controller/ventilazione.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/controller/ventilazione.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/controller/riscaldamento.o: main/controller/riscaldamento.c  .generated_files/flags/default/917e4ddfd09b7e12dce0fa7e85bbd57ca98990a1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main/controller" 
	@${RM} ${OBJECTDIR}/main/controller/riscaldamento.o.d 
	@${RM} ${OBJECTDIR}/main/controller/riscaldamento.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/controller/riscaldamento.c  -o ${OBJECTDIR}/main/controller/riscaldamento.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/controller/riscaldamento.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/controller/busy_signal.o: main/controller/busy_signal.c  .generated_files/flags/default/fb8af3dcbf62b949fc410b3876cb3956d56e25cf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main/controller" 
	@${RM} ${OBJECTDIR}/main/controller/busy_signal.o.d 
	@${RM} ${OBJECTDIR}/main/controller/busy_signal.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/controller/busy_signal.c  -o ${OBJECTDIR}/main/controller/busy_signal.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/controller/busy_signal.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/model/model.o: main/model/model.c  .generated_files/flags/default/3ff6df9654394fc0bbe5e7f2c8522fdaa269a09c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main/model" 
	@${RM} ${OBJECTDIR}/main/model/model.o.d 
	@${RM} ${OBJECTDIR}/main/model/model.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/model/model.c  -o ${OBJECTDIR}/main/model/model.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/model/model.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/system.o: main/peripherals/system.c  .generated_files/flags/default/5aceafbfad2cda019b131135176b1e81d742c59f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/system.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/system.c  -o ${OBJECTDIR}/main/peripherals/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/system.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/timer.o: main/peripherals/timer.c  .generated_files/flags/default/d85f57f7224d7ab7ba4c4c877fda743a4a4b6144 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/timer.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/timer.c  -o ${OBJECTDIR}/main/peripherals/timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/timer.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/digin.o: main/peripherals/digin.c  .generated_files/flags/default/5be889bf71ad7ad0956e9770a9c332910cb88949 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/digin.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/digin.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/digin.c  -o ${OBJECTDIR}/main/peripherals/digin.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/digin.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/digout.o: main/peripherals/digout.c  .generated_files/flags/default/fee427a05874c33cefc3e37e2ef69dcb46cfa9fd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/digout.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/digout.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/digout.c  -o ${OBJECTDIR}/main/peripherals/digout.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/digout.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/pwm.o: main/peripherals/pwm.c  .generated_files/flags/default/c015c45e8c062211b2a6a6cfb3544a99c1efd68d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/pwm.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/pwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/pwm.c  -o ${OBJECTDIR}/main/peripherals/pwm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/pwm.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/i2c_devices.o: main/peripherals/i2c_devices.c  .generated_files/flags/default/e5c6793307d76578fa8fe14521f4a31e397ed04e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/i2c_devices.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/i2c_devices.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/i2c_devices.c  -o ${OBJECTDIR}/main/peripherals/i2c_devices.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/i2c_devices.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/gettoniera.o: main/peripherals/gettoniera.c  .generated_files/flags/default/6e247ef3cb85033a53f3855f4f3a09f50fe744ec .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/gettoniera.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/gettoniera.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/gettoniera.c  -o ${OBJECTDIR}/main/peripherals/gettoniera.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/gettoniera.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/pwoff.o: main/peripherals/pwoff.c  .generated_files/flags/default/ca070394e69ed563cffba312ea43e94a7f104768 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/pwoff.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/pwoff.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/pwoff.c  -o ${OBJECTDIR}/main/peripherals/pwoff.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/pwoff.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/spi.o: main/spi.c  .generated_files/flags/default/25e1867942c262ff4bdc66c27ec3ce5f376ab209 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main" 
	@${RM} ${OBJECTDIR}/main/spi.o.d 
	@${RM} ${OBJECTDIR}/main/spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/spi.c  -o ${OBJECTDIR}/main/spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/spi.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/spi_devices.o: main/peripherals/spi_devices.c  .generated_files/flags/default/3d46c97153a220a5d1a2b28e88e42f7a02843573 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/spi_devices.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/spi_devices.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/spi_devices.c  -o ${OBJECTDIR}/main/peripherals/spi_devices.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/spi_devices.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/pressostato.o: main/peripherals/pressostato.c  .generated_files/flags/default/f7ca7456ae8e7b2f433414e29e2208d08462deaf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/pressostato.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/pressostato.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/pressostato.c  -o ${OBJECTDIR}/main/peripherals/pressostato.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/pressostato.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/sht3.o: main/peripherals/sht3.c  .generated_files/flags/default/e5eeb1deadc40e151b5a8dccb1e9769c8a120ccc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/sht3.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/sht3.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/sht3.c  -o ${OBJECTDIR}/main/peripherals/sht3.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/sht3.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/led.o: main/peripherals/led.c  .generated_files/flags/default/aa76e2e461f91230e9e0b82d81de6e24311fa91 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/led.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/led.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/led.c  -o ${OBJECTDIR}/main/peripherals/led.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/led.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/uart2_driver.o: main/peripherals/uart2_driver.c  .generated_files/flags/default/142ce12d87d218f1c1141dea71fe30b92741d63e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/uart2_driver.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/uart2_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/uart2_driver.c  -o ${OBJECTDIR}/main/peripherals/uart2_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/uart2_driver.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/uart1_driver.o: main/peripherals/uart1_driver.c  .generated_files/flags/default/50656542f032da6a425a8af415f0f599014526c2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/uart1_driver.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/uart1_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/uart1_driver.c  -o ${OBJECTDIR}/main/peripherals/uart1_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/uart1_driver.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/ptc.o: main/peripherals/ptc.c  .generated_files/flags/default/73de0ba468830f2b948045240631d632894271f2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/ptc.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/ptc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/ptc.c  -o ${OBJECTDIR}/main/peripherals/ptc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/ptc.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/utils/assert.o: main/utils/assert.c  .generated_files/flags/default/1c28b500033b6ca6eb26e7c371304f7085b0a533 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main/utils" 
	@${RM} ${OBJECTDIR}/main/utils/assert.o.d 
	@${RM} ${OBJECTDIR}/main/utils/assert.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/utils/assert.c  -o ${OBJECTDIR}/main/utils/assert.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/utils/assert.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/main.o: main/main.c  .generated_files/flags/default/bb875ce2e3a41561259c5a07e7de298212af6124 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/main" 
	@${RM} ${OBJECTDIR}/main/main.o.d 
	@${RM} ${OBJECTDIR}/main/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/main.c  -o ${OBJECTDIR}/main/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/main.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -I"components/SPI" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
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
${DISTDIR}/EssiccatoioQuadro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/EssiccatoioQuadro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x800:0x81B -mreserve=data@0x81C:0x81D -mreserve=data@0x81E:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x827 -mreserve=data@0x82A:0x84F   -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,--defsym=__MPLAB_DEBUGGER_PK3=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
${DISTDIR}/EssiccatoioQuadro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/EssiccatoioQuadro.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}/xc16-bin2hex ${DISTDIR}/EssiccatoioQuadro.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
