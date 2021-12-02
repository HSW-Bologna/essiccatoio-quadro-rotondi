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
SOURCEFILES_QUOTED_IF_SPACED=components/gel/gel/crc/crc16-ccitt.c components/gel/gel/crc/crc32.c components/gel/gel/debounce/debounce.c components/gel/gel/debounce/pulsecounter.c components/gel/gel/timer/stopwatch.c components/gel/gel/wearleveling/wearleveling.c components/I2C/i2c_common/i2c_common.c components/I2C/i2c_devices/eeprom/24LC16/24LC16.c components/I2C/i2c_devices/io/MCP23008/mcp23008.c components/I2C/i2c_ports/PIC/i2c_bitbang.c components/I2C/i2c_ports/PIC/i2c_driver.c components/lightmodbus-impl.c main/controller/modbus_server.c main/controller/controller.c main/model/model.c main/peripherals/system.c main/peripherals/timer.c main/peripherals/digin.c main/peripherals/digout.c main/peripherals/pwm.c main/peripherals/i2c_devices.c main/peripherals/uart_driver.c main/peripherals/gettoniera.c main/peripherals/pwoff.c main/main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o ${OBJECTDIR}/components/gel/gel/crc/crc32.o ${OBJECTDIR}/components/gel/gel/debounce/debounce.o ${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o ${OBJECTDIR}/components/gel/gel/timer/stopwatch.o ${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o ${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o ${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o ${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o ${OBJECTDIR}/components/lightmodbus-impl.o ${OBJECTDIR}/main/controller/modbus_server.o ${OBJECTDIR}/main/controller/controller.o ${OBJECTDIR}/main/model/model.o ${OBJECTDIR}/main/peripherals/system.o ${OBJECTDIR}/main/peripherals/timer.o ${OBJECTDIR}/main/peripherals/digin.o ${OBJECTDIR}/main/peripherals/digout.o ${OBJECTDIR}/main/peripherals/pwm.o ${OBJECTDIR}/main/peripherals/i2c_devices.o ${OBJECTDIR}/main/peripherals/uart_driver.o ${OBJECTDIR}/main/peripherals/gettoniera.o ${OBJECTDIR}/main/peripherals/pwoff.o ${OBJECTDIR}/main/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o.d ${OBJECTDIR}/components/gel/gel/crc/crc32.o.d ${OBJECTDIR}/components/gel/gel/debounce/debounce.o.d ${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o.d ${OBJECTDIR}/components/gel/gel/timer/stopwatch.o.d ${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o.d ${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o.d ${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o.d ${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o.d ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o.d ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o.d ${OBJECTDIR}/components/lightmodbus-impl.o.d ${OBJECTDIR}/main/controller/modbus_server.o.d ${OBJECTDIR}/main/controller/controller.o.d ${OBJECTDIR}/main/model/model.o.d ${OBJECTDIR}/main/peripherals/system.o.d ${OBJECTDIR}/main/peripherals/timer.o.d ${OBJECTDIR}/main/peripherals/digin.o.d ${OBJECTDIR}/main/peripherals/digout.o.d ${OBJECTDIR}/main/peripherals/pwm.o.d ${OBJECTDIR}/main/peripherals/i2c_devices.o.d ${OBJECTDIR}/main/peripherals/uart_driver.o.d ${OBJECTDIR}/main/peripherals/gettoniera.o.d ${OBJECTDIR}/main/peripherals/pwoff.o.d ${OBJECTDIR}/main/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o ${OBJECTDIR}/components/gel/gel/crc/crc32.o ${OBJECTDIR}/components/gel/gel/debounce/debounce.o ${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o ${OBJECTDIR}/components/gel/gel/timer/stopwatch.o ${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o ${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o ${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o ${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o ${OBJECTDIR}/components/lightmodbus-impl.o ${OBJECTDIR}/main/controller/modbus_server.o ${OBJECTDIR}/main/controller/controller.o ${OBJECTDIR}/main/model/model.o ${OBJECTDIR}/main/peripherals/system.o ${OBJECTDIR}/main/peripherals/timer.o ${OBJECTDIR}/main/peripherals/digin.o ${OBJECTDIR}/main/peripherals/digout.o ${OBJECTDIR}/main/peripherals/pwm.o ${OBJECTDIR}/main/peripherals/i2c_devices.o ${OBJECTDIR}/main/peripherals/uart_driver.o ${OBJECTDIR}/main/peripherals/gettoniera.o ${OBJECTDIR}/main/peripherals/pwoff.o ${OBJECTDIR}/main/main.o

# Source Files
SOURCEFILES=components/gel/gel/crc/crc16-ccitt.c components/gel/gel/crc/crc32.c components/gel/gel/debounce/debounce.c components/gel/gel/debounce/pulsecounter.c components/gel/gel/timer/stopwatch.c components/gel/gel/wearleveling/wearleveling.c components/I2C/i2c_common/i2c_common.c components/I2C/i2c_devices/eeprom/24LC16/24LC16.c components/I2C/i2c_devices/io/MCP23008/mcp23008.c components/I2C/i2c_ports/PIC/i2c_bitbang.c components/I2C/i2c_ports/PIC/i2c_driver.c components/lightmodbus-impl.c main/controller/modbus_server.c main/controller/controller.c main/model/model.c main/peripherals/system.c main/peripherals/timer.c main/peripherals/digin.c main/peripherals/digout.c main/peripherals/pwm.c main/peripherals/i2c_devices.c main/peripherals/uart_driver.c main/peripherals/gettoniera.c main/peripherals/pwoff.c main/main.c



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
${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o: components/gel/gel/crc/crc16-ccitt.c  .generated_files/flags/default/b74f259ed5d03700c12d547a08473849813e9c8a .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/crc" 
	@${RM} ${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/crc/crc16-ccitt.c  -o ${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/gel/gel/crc/crc32.o: components/gel/gel/crc/crc32.c  .generated_files/flags/default/46fa0e3d9f7a2a06522f0683dcef6178491f4ab6 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/crc" 
	@${RM} ${OBJECTDIR}/components/gel/gel/crc/crc32.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/crc/crc32.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/crc/crc32.c  -o ${OBJECTDIR}/components/gel/gel/crc/crc32.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/crc/crc32.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/gel/gel/debounce/debounce.o: components/gel/gel/debounce/debounce.c  .generated_files/flags/default/210e195c19bb66ed69902b217d07e6044b139d9c .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/debounce" 
	@${RM} ${OBJECTDIR}/components/gel/gel/debounce/debounce.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/debounce/debounce.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/debounce/debounce.c  -o ${OBJECTDIR}/components/gel/gel/debounce/debounce.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/debounce/debounce.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o: components/gel/gel/debounce/pulsecounter.c  .generated_files/flags/default/39429bc3754dd72eff0fce9dfe2239c07b59c2dd .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/debounce" 
	@${RM} ${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/debounce/pulsecounter.c  -o ${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/gel/gel/timer/stopwatch.o: components/gel/gel/timer/stopwatch.c  .generated_files/flags/default/3c040a51224212e8f9dcb47c18a1a0f7c817e9b8 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/timer" 
	@${RM} ${OBJECTDIR}/components/gel/gel/timer/stopwatch.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/timer/stopwatch.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/timer/stopwatch.c  -o ${OBJECTDIR}/components/gel/gel/timer/stopwatch.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/timer/stopwatch.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o: components/gel/gel/wearleveling/wearleveling.c  .generated_files/flags/default/dd61c6734330bdea8fd990a461f09ab74b0f13b .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/wearleveling" 
	@${RM} ${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/wearleveling/wearleveling.c  -o ${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o: components/I2C/i2c_common/i2c_common.c  .generated_files/flags/default/16395bc358517645d100577d92642200e3156e74 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components/I2C/i2c_common" 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o.d 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/I2C/i2c_common/i2c_common.c  -o ${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o: components/I2C/i2c_devices/eeprom/24LC16/24LC16.c  .generated_files/flags/default/c5106941a24549231abed62a933721e9a5dc5d84 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16" 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o.d 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/I2C/i2c_devices/eeprom/24LC16/24LC16.c  -o ${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o: components/I2C/i2c_devices/io/MCP23008/mcp23008.c  .generated_files/flags/default/be0c069126862d46b7f128494c03d0ae3e1fb01b .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008" 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o.d 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/I2C/i2c_devices/io/MCP23008/mcp23008.c  -o ${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o: components/I2C/i2c_ports/PIC/i2c_bitbang.c  .generated_files/flags/default/b5945a9ba029d3cc10788985e625af0c2405de1d .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components/I2C/i2c_ports/PIC" 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o.d 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/I2C/i2c_ports/PIC/i2c_bitbang.c  -o ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o: components/I2C/i2c_ports/PIC/i2c_driver.c  .generated_files/flags/default/b9a59d85828d7252286452d77b661804f09ce79c .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components/I2C/i2c_ports/PIC" 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o.d 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/I2C/i2c_ports/PIC/i2c_driver.c  -o ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/lightmodbus-impl.o: components/lightmodbus-impl.c  .generated_files/flags/default/83aa3b34378ba3a0b18b600736a9beb7729f7a90 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components" 
	@${RM} ${OBJECTDIR}/components/lightmodbus-impl.o.d 
	@${RM} ${OBJECTDIR}/components/lightmodbus-impl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/lightmodbus-impl.c  -o ${OBJECTDIR}/components/lightmodbus-impl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/lightmodbus-impl.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/controller/modbus_server.o: main/controller/modbus_server.c  .generated_files/flags/default/c57997de4e9e2dc1939684a385693ad28ff6a298 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/controller" 
	@${RM} ${OBJECTDIR}/main/controller/modbus_server.o.d 
	@${RM} ${OBJECTDIR}/main/controller/modbus_server.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/controller/modbus_server.c  -o ${OBJECTDIR}/main/controller/modbus_server.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/controller/modbus_server.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/controller/controller.o: main/controller/controller.c  .generated_files/flags/default/19bc318b7b19c453203044d63376d3da2d21cde0 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/controller" 
	@${RM} ${OBJECTDIR}/main/controller/controller.o.d 
	@${RM} ${OBJECTDIR}/main/controller/controller.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/controller/controller.c  -o ${OBJECTDIR}/main/controller/controller.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/controller/controller.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/model/model.o: main/model/model.c  .generated_files/flags/default/db0ba0b44f03c6a7a641ed53bb4305f19743ff22 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/model" 
	@${RM} ${OBJECTDIR}/main/model/model.o.d 
	@${RM} ${OBJECTDIR}/main/model/model.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/model/model.c  -o ${OBJECTDIR}/main/model/model.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/model/model.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/system.o: main/peripherals/system.c  .generated_files/flags/default/265c66819d89b7551ed4245343a61b7bb3b861c8 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/system.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/system.c  -o ${OBJECTDIR}/main/peripherals/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/system.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/timer.o: main/peripherals/timer.c  .generated_files/flags/default/462acc2a9326814c8bcbe84c983ec34d6b122c4a .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/timer.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/timer.c  -o ${OBJECTDIR}/main/peripherals/timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/timer.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/digin.o: main/peripherals/digin.c  .generated_files/flags/default/56a1f0058c052301e949c61994f404beed7ad99 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/digin.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/digin.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/digin.c  -o ${OBJECTDIR}/main/peripherals/digin.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/digin.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/digout.o: main/peripherals/digout.c  .generated_files/flags/default/541721d8077ce60344e8fc74121967230a9e835d .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/digout.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/digout.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/digout.c  -o ${OBJECTDIR}/main/peripherals/digout.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/digout.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/pwm.o: main/peripherals/pwm.c  .generated_files/flags/default/fee6d3b37de94b5fdd488d8d9ebc34022f9fea64 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/pwm.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/pwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/pwm.c  -o ${OBJECTDIR}/main/peripherals/pwm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/pwm.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/i2c_devices.o: main/peripherals/i2c_devices.c  .generated_files/flags/default/10b77d845897412c832b5388cbf82eb5b98d2ccc .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/i2c_devices.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/i2c_devices.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/i2c_devices.c  -o ${OBJECTDIR}/main/peripherals/i2c_devices.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/i2c_devices.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/uart_driver.o: main/peripherals/uart_driver.c  .generated_files/flags/default/909a3b959394a478e774f235ac1add11c97836 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/uart_driver.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/uart_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/uart_driver.c  -o ${OBJECTDIR}/main/peripherals/uart_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/uart_driver.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/gettoniera.o: main/peripherals/gettoniera.c  .generated_files/flags/default/5256de41125c580dfd457022f3528edbdf8008ac .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/gettoniera.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/gettoniera.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/gettoniera.c  -o ${OBJECTDIR}/main/peripherals/gettoniera.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/gettoniera.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/pwoff.o: main/peripherals/pwoff.c  .generated_files/flags/default/9eff7be8652b5cf7e0826cdd27d540f53c0d5b7f .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/pwoff.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/pwoff.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/pwoff.c  -o ${OBJECTDIR}/main/peripherals/pwoff.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/pwoff.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/main.o: main/main.c  .generated_files/flags/default/9e0e7233f336bab00882c6958f94ba6bead27ca9 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main" 
	@${RM} ${OBJECTDIR}/main/main.o.d 
	@${RM} ${OBJECTDIR}/main/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/main.c  -o ${OBJECTDIR}/main/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o: components/gel/gel/crc/crc16-ccitt.c  .generated_files/flags/default/880d28d5be6d036db7ff5d19a3caf95cf9d57c7b .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/crc" 
	@${RM} ${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/crc/crc16-ccitt.c  -o ${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/gel/gel/crc/crc32.o: components/gel/gel/crc/crc32.c  .generated_files/flags/default/fee89871bc608bdcd2d93e61449167c3b4df30b5 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/crc" 
	@${RM} ${OBJECTDIR}/components/gel/gel/crc/crc32.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/crc/crc32.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/crc/crc32.c  -o ${OBJECTDIR}/components/gel/gel/crc/crc32.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/crc/crc32.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/gel/gel/debounce/debounce.o: components/gel/gel/debounce/debounce.c  .generated_files/flags/default/ab0688bb21addb0eb27f5893df74a852a0504d35 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/debounce" 
	@${RM} ${OBJECTDIR}/components/gel/gel/debounce/debounce.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/debounce/debounce.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/debounce/debounce.c  -o ${OBJECTDIR}/components/gel/gel/debounce/debounce.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/debounce/debounce.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o: components/gel/gel/debounce/pulsecounter.c  .generated_files/flags/default/483924ed2946db322cdbe5d489fbcf03b71a3583 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/debounce" 
	@${RM} ${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/debounce/pulsecounter.c  -o ${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/gel/gel/timer/stopwatch.o: components/gel/gel/timer/stopwatch.c  .generated_files/flags/default/aad5ba123c040558715a376f6febc9ee03aa335b .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/timer" 
	@${RM} ${OBJECTDIR}/components/gel/gel/timer/stopwatch.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/timer/stopwatch.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/timer/stopwatch.c  -o ${OBJECTDIR}/components/gel/gel/timer/stopwatch.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/timer/stopwatch.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o: components/gel/gel/wearleveling/wearleveling.c  .generated_files/flags/default/17851a0cf00de324c3e4baa3677d9fba9877d08e .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/wearleveling" 
	@${RM} ${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/wearleveling/wearleveling.c  -o ${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o: components/I2C/i2c_common/i2c_common.c  .generated_files/flags/default/485394adeb93d2feb5485f2d0f56c5f5c7bd4d87 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components/I2C/i2c_common" 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o.d 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/I2C/i2c_common/i2c_common.c  -o ${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o: components/I2C/i2c_devices/eeprom/24LC16/24LC16.c  .generated_files/flags/default/737f424c7d53950355d7956f7b4c63bc2fbde818 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16" 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o.d 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/I2C/i2c_devices/eeprom/24LC16/24LC16.c  -o ${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o: components/I2C/i2c_devices/io/MCP23008/mcp23008.c  .generated_files/flags/default/bebad05a7bc0f041e95aaabf8d51e2f53b55a603 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008" 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o.d 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/I2C/i2c_devices/io/MCP23008/mcp23008.c  -o ${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o: components/I2C/i2c_ports/PIC/i2c_bitbang.c  .generated_files/flags/default/20b59511d955c6dc279cefe95c280b1f8c4f18d6 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components/I2C/i2c_ports/PIC" 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o.d 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/I2C/i2c_ports/PIC/i2c_bitbang.c  -o ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o: components/I2C/i2c_ports/PIC/i2c_driver.c  .generated_files/flags/default/558587d00c149f7bf247f6b937994af2fdb830ca .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components/I2C/i2c_ports/PIC" 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o.d 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/I2C/i2c_ports/PIC/i2c_driver.c  -o ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/lightmodbus-impl.o: components/lightmodbus-impl.c  .generated_files/flags/default/798cae702977a75fad857638aa1765b02731c59c .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/components" 
	@${RM} ${OBJECTDIR}/components/lightmodbus-impl.o.d 
	@${RM} ${OBJECTDIR}/components/lightmodbus-impl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/lightmodbus-impl.c  -o ${OBJECTDIR}/components/lightmodbus-impl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/lightmodbus-impl.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/controller/modbus_server.o: main/controller/modbus_server.c  .generated_files/flags/default/ce6531bfc0d3b0ab957370e610fc938fd667dc0d .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/controller" 
	@${RM} ${OBJECTDIR}/main/controller/modbus_server.o.d 
	@${RM} ${OBJECTDIR}/main/controller/modbus_server.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/controller/modbus_server.c  -o ${OBJECTDIR}/main/controller/modbus_server.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/controller/modbus_server.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/controller/controller.o: main/controller/controller.c  .generated_files/flags/default/c979233b69c94edcd371d30f5a89ed2402b86247 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/controller" 
	@${RM} ${OBJECTDIR}/main/controller/controller.o.d 
	@${RM} ${OBJECTDIR}/main/controller/controller.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/controller/controller.c  -o ${OBJECTDIR}/main/controller/controller.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/controller/controller.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/model/model.o: main/model/model.c  .generated_files/flags/default/54319c75290cb945451bf2df1e08d05263f11286 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/model" 
	@${RM} ${OBJECTDIR}/main/model/model.o.d 
	@${RM} ${OBJECTDIR}/main/model/model.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/model/model.c  -o ${OBJECTDIR}/main/model/model.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/model/model.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/system.o: main/peripherals/system.c  .generated_files/flags/default/b1e07c3870045aae6c9951aef850ee4cb94c941e .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/system.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/system.c  -o ${OBJECTDIR}/main/peripherals/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/system.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/timer.o: main/peripherals/timer.c  .generated_files/flags/default/2fd598bce79a00de032c568d3df9eeb204e1a966 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/timer.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/timer.c  -o ${OBJECTDIR}/main/peripherals/timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/timer.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/digin.o: main/peripherals/digin.c  .generated_files/flags/default/6fecd50f56a66711a9ddd8a7ac194e2472db605a .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/digin.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/digin.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/digin.c  -o ${OBJECTDIR}/main/peripherals/digin.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/digin.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/digout.o: main/peripherals/digout.c  .generated_files/flags/default/b964e3e4fd081f606eaebc756a272bebe935887 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/digout.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/digout.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/digout.c  -o ${OBJECTDIR}/main/peripherals/digout.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/digout.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/pwm.o: main/peripherals/pwm.c  .generated_files/flags/default/9481c4b1707a18a9a0209258fdde72d7e305c208 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/pwm.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/pwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/pwm.c  -o ${OBJECTDIR}/main/peripherals/pwm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/pwm.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/i2c_devices.o: main/peripherals/i2c_devices.c  .generated_files/flags/default/260694456f6c5b0d7df850a428481c0dbae18795 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/i2c_devices.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/i2c_devices.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/i2c_devices.c  -o ${OBJECTDIR}/main/peripherals/i2c_devices.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/i2c_devices.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/uart_driver.o: main/peripherals/uart_driver.c  .generated_files/flags/default/82b1b3af418d417f15b3bc2e5439c5a5ff55816c .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/uart_driver.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/uart_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/uart_driver.c  -o ${OBJECTDIR}/main/peripherals/uart_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/uart_driver.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/gettoniera.o: main/peripherals/gettoniera.c  .generated_files/flags/default/2d07c16cfd93897e9948ab80be544359f8e45595 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/gettoniera.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/gettoniera.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/gettoniera.c  -o ${OBJECTDIR}/main/peripherals/gettoniera.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/gettoniera.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/pwoff.o: main/peripherals/pwoff.c  .generated_files/flags/default/9effffbc49d606f727ca755cc9e21138495b3dab .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/pwoff.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/pwoff.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/pwoff.c  -o ${OBJECTDIR}/main/peripherals/pwoff.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/pwoff.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/main.o: main/main.c  .generated_files/flags/default/bd4fc5ffa082d837af5bfb16a97e16ef571d8860 .generated_files/flags/default/2db072753653b0b8fce8a71379649f41a47989a8
	@${MKDIR} "${OBJECTDIR}/main" 
	@${RM} ${OBJECTDIR}/main/main.o.d 
	@${RM} ${OBJECTDIR}/main/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/main.c  -o ${OBJECTDIR}/main/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/main.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
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
