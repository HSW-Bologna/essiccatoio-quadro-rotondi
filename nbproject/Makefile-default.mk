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
SOURCEFILES_QUOTED_IF_SPACED=components/gel/gel/debounce/debounce.c components/gel/gel/debounce/pulsecounter.c components/gel/gel/timer/stopwatch.c components/gel/gel/wearleveling/wearleveling.c components/I2C/i2c_common/i2c_common.c components/I2C/i2c_devices/eeprom/24LC16/24LC16.c components/I2C/i2c_devices/io/MCP23008/mcp23008.c components/I2C/i2c_ports/PIC/i2c_bitbang.c components/I2C/i2c_ports/PIC/i2c_driver.c components/lightmodbus-impl.c main/controller/modbus_server.c main/controller/controller.c main/model/model.c main/peripherals/system.c main/peripherals/timer.c main/peripherals/digin.c main/peripherals/digout.c main/peripherals/pwm.c main/peripherals/i2c_devices.c main/peripherals/uart_driver.c main/peripherals/gettoniera.c main/peripherals/pwoff.c main/main.c components/gel/gel/crc/crc16-ccitt.c components/gel/gel/crc/crc32.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/components/gel/gel/debounce/debounce.o ${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o ${OBJECTDIR}/components/gel/gel/timer/stopwatch.o ${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o ${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o ${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o ${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o ${OBJECTDIR}/components/lightmodbus-impl.o ${OBJECTDIR}/main/controller/modbus_server.o ${OBJECTDIR}/main/controller/controller.o ${OBJECTDIR}/main/model/model.o ${OBJECTDIR}/main/peripherals/system.o ${OBJECTDIR}/main/peripherals/timer.o ${OBJECTDIR}/main/peripherals/digin.o ${OBJECTDIR}/main/peripherals/digout.o ${OBJECTDIR}/main/peripherals/pwm.o ${OBJECTDIR}/main/peripherals/i2c_devices.o ${OBJECTDIR}/main/peripherals/uart_driver.o ${OBJECTDIR}/main/peripherals/gettoniera.o ${OBJECTDIR}/main/peripherals/pwoff.o ${OBJECTDIR}/main/main.o ${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o ${OBJECTDIR}/components/gel/gel/crc/crc32.o
POSSIBLE_DEPFILES=${OBJECTDIR}/components/gel/gel/debounce/debounce.o.d ${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o.d ${OBJECTDIR}/components/gel/gel/timer/stopwatch.o.d ${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o.d ${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o.d ${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o.d ${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o.d ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o.d ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o.d ${OBJECTDIR}/components/lightmodbus-impl.o.d ${OBJECTDIR}/main/controller/modbus_server.o.d ${OBJECTDIR}/main/controller/controller.o.d ${OBJECTDIR}/main/model/model.o.d ${OBJECTDIR}/main/peripherals/system.o.d ${OBJECTDIR}/main/peripherals/timer.o.d ${OBJECTDIR}/main/peripherals/digin.o.d ${OBJECTDIR}/main/peripherals/digout.o.d ${OBJECTDIR}/main/peripherals/pwm.o.d ${OBJECTDIR}/main/peripherals/i2c_devices.o.d ${OBJECTDIR}/main/peripherals/uart_driver.o.d ${OBJECTDIR}/main/peripherals/gettoniera.o.d ${OBJECTDIR}/main/peripherals/pwoff.o.d ${OBJECTDIR}/main/main.o.d ${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o.d ${OBJECTDIR}/components/gel/gel/crc/crc32.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/components/gel/gel/debounce/debounce.o ${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o ${OBJECTDIR}/components/gel/gel/timer/stopwatch.o ${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o ${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o ${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o ${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o ${OBJECTDIR}/components/lightmodbus-impl.o ${OBJECTDIR}/main/controller/modbus_server.o ${OBJECTDIR}/main/controller/controller.o ${OBJECTDIR}/main/model/model.o ${OBJECTDIR}/main/peripherals/system.o ${OBJECTDIR}/main/peripherals/timer.o ${OBJECTDIR}/main/peripherals/digin.o ${OBJECTDIR}/main/peripherals/digout.o ${OBJECTDIR}/main/peripherals/pwm.o ${OBJECTDIR}/main/peripherals/i2c_devices.o ${OBJECTDIR}/main/peripherals/uart_driver.o ${OBJECTDIR}/main/peripherals/gettoniera.o ${OBJECTDIR}/main/peripherals/pwoff.o ${OBJECTDIR}/main/main.o ${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o ${OBJECTDIR}/components/gel/gel/crc/crc32.o

# Source Files
SOURCEFILES=components/gel/gel/debounce/debounce.c components/gel/gel/debounce/pulsecounter.c components/gel/gel/timer/stopwatch.c components/gel/gel/wearleveling/wearleveling.c components/I2C/i2c_common/i2c_common.c components/I2C/i2c_devices/eeprom/24LC16/24LC16.c components/I2C/i2c_devices/io/MCP23008/mcp23008.c components/I2C/i2c_ports/PIC/i2c_bitbang.c components/I2C/i2c_ports/PIC/i2c_driver.c components/lightmodbus-impl.c main/controller/modbus_server.c main/controller/controller.c main/model/model.c main/peripherals/system.c main/peripherals/timer.c main/peripherals/digin.c main/peripherals/digout.c main/peripherals/pwm.c main/peripherals/i2c_devices.c main/peripherals/uart_driver.c main/peripherals/gettoniera.c main/peripherals/pwoff.c main/main.c components/gel/gel/crc/crc16-ccitt.c components/gel/gel/crc/crc32.c



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
${OBJECTDIR}/components/gel/gel/debounce/debounce.o: components/gel/gel/debounce/debounce.c  .generated_files/f6b7792103a97d14b70d5e2743a7b5c864ac6e42.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/debounce" 
	@${RM} ${OBJECTDIR}/components/gel/gel/debounce/debounce.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/debounce/debounce.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/debounce/debounce.c  -o ${OBJECTDIR}/components/gel/gel/debounce/debounce.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/debounce/debounce.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o: components/gel/gel/debounce/pulsecounter.c  .generated_files/1da9c076dd2b47e2f4062f1733ecc9487b8d3f7e.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/debounce" 
	@${RM} ${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/debounce/pulsecounter.c  -o ${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/gel/gel/timer/stopwatch.o: components/gel/gel/timer/stopwatch.c  .generated_files/a7a12ccb34252d285dd1426101d88abe4cf152d5.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/timer" 
	@${RM} ${OBJECTDIR}/components/gel/gel/timer/stopwatch.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/timer/stopwatch.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/timer/stopwatch.c  -o ${OBJECTDIR}/components/gel/gel/timer/stopwatch.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/timer/stopwatch.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o: components/gel/gel/wearleveling/wearleveling.c  .generated_files/9059fb2a20113a99dff9bcd612da19715b78e202.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/wearleveling" 
	@${RM} ${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/wearleveling/wearleveling.c  -o ${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o: components/I2C/i2c_common/i2c_common.c  .generated_files/567e8e116919e12bd5cf96a20daf1f408ae3aeaa.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components/I2C/i2c_common" 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o.d 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/I2C/i2c_common/i2c_common.c  -o ${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o: components/I2C/i2c_devices/eeprom/24LC16/24LC16.c  .generated_files/68b02abebab8af9af6f862af049ce9306fd7bfc4.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16" 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o.d 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/I2C/i2c_devices/eeprom/24LC16/24LC16.c  -o ${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o: components/I2C/i2c_devices/io/MCP23008/mcp23008.c  .generated_files/a0d8818954612aca603a9512f23de78e816099eb.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008" 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o.d 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/I2C/i2c_devices/io/MCP23008/mcp23008.c  -o ${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o: components/I2C/i2c_ports/PIC/i2c_bitbang.c  .generated_files/fd85fbda1637b38f04e865271aef79d848f196e1.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components/I2C/i2c_ports/PIC" 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o.d 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/I2C/i2c_ports/PIC/i2c_bitbang.c  -o ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o: components/I2C/i2c_ports/PIC/i2c_driver.c  .generated_files/b0d06433c858747233918f2f7ead8c88692964d4.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components/I2C/i2c_ports/PIC" 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o.d 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/I2C/i2c_ports/PIC/i2c_driver.c  -o ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/lightmodbus-impl.o: components/lightmodbus-impl.c  .generated_files/40a9eeaf8d2a448e1c195311fa14302d4b1cb3e5.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components" 
	@${RM} ${OBJECTDIR}/components/lightmodbus-impl.o.d 
	@${RM} ${OBJECTDIR}/components/lightmodbus-impl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/lightmodbus-impl.c  -o ${OBJECTDIR}/components/lightmodbus-impl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/lightmodbus-impl.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/controller/modbus_server.o: main/controller/modbus_server.c  .generated_files/e6abb823da04819ba920a8dc56ecc566a47a3d94.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/controller" 
	@${RM} ${OBJECTDIR}/main/controller/modbus_server.o.d 
	@${RM} ${OBJECTDIR}/main/controller/modbus_server.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/controller/modbus_server.c  -o ${OBJECTDIR}/main/controller/modbus_server.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/controller/modbus_server.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/controller/controller.o: main/controller/controller.c  .generated_files/7db3d57f63b5ff0b6ea32eee54c8d6fea4be1758.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/controller" 
	@${RM} ${OBJECTDIR}/main/controller/controller.o.d 
	@${RM} ${OBJECTDIR}/main/controller/controller.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/controller/controller.c  -o ${OBJECTDIR}/main/controller/controller.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/controller/controller.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/model/model.o: main/model/model.c  .generated_files/f3b9c9f2128c4cfe48fc2e897b7e8908c6737e82.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/model" 
	@${RM} ${OBJECTDIR}/main/model/model.o.d 
	@${RM} ${OBJECTDIR}/main/model/model.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/model/model.c  -o ${OBJECTDIR}/main/model/model.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/model/model.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/system.o: main/peripherals/system.c  .generated_files/39dc9e7489db54ae501e39d81631ae720f350cf9.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/system.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/system.c  -o ${OBJECTDIR}/main/peripherals/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/system.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/timer.o: main/peripherals/timer.c  .generated_files/27c16f9742f5cd5e30456755f5bd1ff5acf8c8d0.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/timer.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/timer.c  -o ${OBJECTDIR}/main/peripherals/timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/timer.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/digin.o: main/peripherals/digin.c  .generated_files/b08e23dab6f297607d314f6c278e477a0ed44ec9.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/digin.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/digin.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/digin.c  -o ${OBJECTDIR}/main/peripherals/digin.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/digin.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/digout.o: main/peripherals/digout.c  .generated_files/b13fc5363a35d543b8981461d8a69ec4151fa27e.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/digout.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/digout.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/digout.c  -o ${OBJECTDIR}/main/peripherals/digout.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/digout.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/pwm.o: main/peripherals/pwm.c  .generated_files/ee1f4ed259df40c3da71d2ee0724cedb05c8a236.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/pwm.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/pwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/pwm.c  -o ${OBJECTDIR}/main/peripherals/pwm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/pwm.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/i2c_devices.o: main/peripherals/i2c_devices.c  .generated_files/13b418d66e129b58233bbfa385314cce586b838f.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/i2c_devices.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/i2c_devices.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/i2c_devices.c  -o ${OBJECTDIR}/main/peripherals/i2c_devices.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/i2c_devices.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/uart_driver.o: main/peripherals/uart_driver.c  .generated_files/1019f33789090b581f4b919e314b40963faf1c73.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/uart_driver.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/uart_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/uart_driver.c  -o ${OBJECTDIR}/main/peripherals/uart_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/uart_driver.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/gettoniera.o: main/peripherals/gettoniera.c  .generated_files/d0a3e6aaf0ac028cdda15ffdb34683574a6fe46d.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/gettoniera.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/gettoniera.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/gettoniera.c  -o ${OBJECTDIR}/main/peripherals/gettoniera.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/gettoniera.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/pwoff.o: main/peripherals/pwoff.c  .generated_files/c9d9af7f87bfccdd85572b627dd3142c7a6b93dd.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/pwoff.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/pwoff.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/pwoff.c  -o ${OBJECTDIR}/main/peripherals/pwoff.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/pwoff.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/main.o: main/main.c  .generated_files/bfd3e215606cb0ae15b6822c8a8c155e019cbe47.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main" 
	@${RM} ${OBJECTDIR}/main/main.o.d 
	@${RM} ${OBJECTDIR}/main/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/main.c  -o ${OBJECTDIR}/main/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o: components/gel/gel/crc/crc16-ccitt.c  .generated_files/fba119bab19670b1a376e921a1c740bf25fa672f.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/crc" 
	@${RM} ${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/crc/crc16-ccitt.c  -o ${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/gel/gel/crc/crc32.o: components/gel/gel/crc/crc32.c  .generated_files/210caba86f7c7afce5d8381e56447fdbe66a11cb.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/crc" 
	@${RM} ${OBJECTDIR}/components/gel/gel/crc/crc32.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/crc/crc32.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/crc/crc32.c  -o ${OBJECTDIR}/components/gel/gel/crc/crc32.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/crc/crc32.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/components/gel/gel/debounce/debounce.o: components/gel/gel/debounce/debounce.c  .generated_files/279262b3a8da736430714bc8d15168d9a055cce9.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/debounce" 
	@${RM} ${OBJECTDIR}/components/gel/gel/debounce/debounce.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/debounce/debounce.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/debounce/debounce.c  -o ${OBJECTDIR}/components/gel/gel/debounce/debounce.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/debounce/debounce.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o: components/gel/gel/debounce/pulsecounter.c  .generated_files/482550d72bd8b13e2cc3fef881d6248e6f621ca8.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/debounce" 
	@${RM} ${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/debounce/pulsecounter.c  -o ${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/debounce/pulsecounter.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/gel/gel/timer/stopwatch.o: components/gel/gel/timer/stopwatch.c  .generated_files/372f441ae9ce86abbb0e90caff09615d0c44f9af.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/timer" 
	@${RM} ${OBJECTDIR}/components/gel/gel/timer/stopwatch.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/timer/stopwatch.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/timer/stopwatch.c  -o ${OBJECTDIR}/components/gel/gel/timer/stopwatch.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/timer/stopwatch.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o: components/gel/gel/wearleveling/wearleveling.c  .generated_files/91b9824953fd2f0f85a8b81193f9e08cde8d29ba.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/wearleveling" 
	@${RM} ${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/wearleveling/wearleveling.c  -o ${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/wearleveling/wearleveling.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o: components/I2C/i2c_common/i2c_common.c  .generated_files/3bce70b1c08c24af3226a25893f156c0361bf23e.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components/I2C/i2c_common" 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o.d 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/I2C/i2c_common/i2c_common.c  -o ${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/I2C/i2c_common/i2c_common.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o: components/I2C/i2c_devices/eeprom/24LC16/24LC16.c  .generated_files/e15e4b385ac7b28eb45da9dace7a782eed5ed822.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16" 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o.d 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/I2C/i2c_devices/eeprom/24LC16/24LC16.c  -o ${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/I2C/i2c_devices/eeprom/24LC16/24LC16.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o: components/I2C/i2c_devices/io/MCP23008/mcp23008.c  .generated_files/931ae85b422f915ac7ffab3f4bfeacf203a9aa7d.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008" 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o.d 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/I2C/i2c_devices/io/MCP23008/mcp23008.c  -o ${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/I2C/i2c_devices/io/MCP23008/mcp23008.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o: components/I2C/i2c_ports/PIC/i2c_bitbang.c  .generated_files/1d01c84738ad9e54176438645c3397e71c93084d.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components/I2C/i2c_ports/PIC" 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o.d 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/I2C/i2c_ports/PIC/i2c_bitbang.c  -o ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_bitbang.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o: components/I2C/i2c_ports/PIC/i2c_driver.c  .generated_files/68d9fc594c2367191055b193465abc4e55ae9ac6.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components/I2C/i2c_ports/PIC" 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o.d 
	@${RM} ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/I2C/i2c_ports/PIC/i2c_driver.c  -o ${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/I2C/i2c_ports/PIC/i2c_driver.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/lightmodbus-impl.o: components/lightmodbus-impl.c  .generated_files/318cce3bedb8af6c6f42ba0050b6a1051b579ced.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components" 
	@${RM} ${OBJECTDIR}/components/lightmodbus-impl.o.d 
	@${RM} ${OBJECTDIR}/components/lightmodbus-impl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/lightmodbus-impl.c  -o ${OBJECTDIR}/components/lightmodbus-impl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/lightmodbus-impl.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/controller/modbus_server.o: main/controller/modbus_server.c  .generated_files/217a9e6dfff398de0ba7d8eb1212842633164d4d.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/controller" 
	@${RM} ${OBJECTDIR}/main/controller/modbus_server.o.d 
	@${RM} ${OBJECTDIR}/main/controller/modbus_server.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/controller/modbus_server.c  -o ${OBJECTDIR}/main/controller/modbus_server.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/controller/modbus_server.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/controller/controller.o: main/controller/controller.c  .generated_files/962afb2f7d2537745f3d403c4ee127b9d3cae3ff.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/controller" 
	@${RM} ${OBJECTDIR}/main/controller/controller.o.d 
	@${RM} ${OBJECTDIR}/main/controller/controller.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/controller/controller.c  -o ${OBJECTDIR}/main/controller/controller.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/controller/controller.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/model/model.o: main/model/model.c  .generated_files/8d74fdce3cf57ffa4fe4e7fa22697502e0bb34e8.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/model" 
	@${RM} ${OBJECTDIR}/main/model/model.o.d 
	@${RM} ${OBJECTDIR}/main/model/model.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/model/model.c  -o ${OBJECTDIR}/main/model/model.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/model/model.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/system.o: main/peripherals/system.c  .generated_files/5b973fe7a651ab3ed6eb5c6249af7d6741623c10.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/system.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/system.c  -o ${OBJECTDIR}/main/peripherals/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/system.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/timer.o: main/peripherals/timer.c  .generated_files/f60b06346b8600ec288e4ca3fa959f4518073ed7.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/timer.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/timer.c  -o ${OBJECTDIR}/main/peripherals/timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/timer.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/digin.o: main/peripherals/digin.c  .generated_files/218742574f24c6aecc3fe660c581b21a9b4b4802.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/digin.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/digin.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/digin.c  -o ${OBJECTDIR}/main/peripherals/digin.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/digin.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/digout.o: main/peripherals/digout.c  .generated_files/7866fc2ee833f9ef2e3dc1c15d7c7a7188e65030.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/digout.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/digout.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/digout.c  -o ${OBJECTDIR}/main/peripherals/digout.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/digout.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/pwm.o: main/peripherals/pwm.c  .generated_files/6cde7adf179cb67463d526cb6f3586d05b319e0.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/pwm.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/pwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/pwm.c  -o ${OBJECTDIR}/main/peripherals/pwm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/pwm.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/i2c_devices.o: main/peripherals/i2c_devices.c  .generated_files/f7c84efb1275a5353fd1e0cf4b85375678f90791.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/i2c_devices.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/i2c_devices.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/i2c_devices.c  -o ${OBJECTDIR}/main/peripherals/i2c_devices.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/i2c_devices.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/uart_driver.o: main/peripherals/uart_driver.c  .generated_files/4bd077a8a49eea37ae37ea6003b3b00dcf06d1fe.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/uart_driver.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/uart_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/uart_driver.c  -o ${OBJECTDIR}/main/peripherals/uart_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/uart_driver.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/gettoniera.o: main/peripherals/gettoniera.c  .generated_files/de67b352a2c09d44fd615a008c08d006ad057b3e.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/gettoniera.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/gettoniera.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/gettoniera.c  -o ${OBJECTDIR}/main/peripherals/gettoniera.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/gettoniera.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/peripherals/pwoff.o: main/peripherals/pwoff.c  .generated_files/de1b73d501851158c79f0d165053f6225eea3095.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main/peripherals" 
	@${RM} ${OBJECTDIR}/main/peripherals/pwoff.o.d 
	@${RM} ${OBJECTDIR}/main/peripherals/pwoff.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/peripherals/pwoff.c  -o ${OBJECTDIR}/main/peripherals/pwoff.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/peripherals/pwoff.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main/main.o: main/main.c  .generated_files/72efdcb1efff508ca39e17d46c457ff86e807425.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/main" 
	@${RM} ${OBJECTDIR}/main/main.o.d 
	@${RM} ${OBJECTDIR}/main/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main/main.c  -o ${OBJECTDIR}/main/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main/main.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o: components/gel/gel/crc/crc16-ccitt.c  .generated_files/83951c75df013c28e58f85b94482c504b58d41ee.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/crc" 
	@${RM} ${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/crc/crc16-ccitt.c  -o ${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/crc/crc16-ccitt.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/components/gel/gel/crc/crc32.o: components/gel/gel/crc/crc32.c  .generated_files/e882c91dad2904e45ee7721f5622474724cfacdf.flag .generated_files/2456796d9ba880ede9281e332073398cdf981f3c.flag
	@${MKDIR} "${OBJECTDIR}/components/gel/gel/crc" 
	@${RM} ${OBJECTDIR}/components/gel/gel/crc/crc32.o.d 
	@${RM} ${OBJECTDIR}/components/gel/gel/crc/crc32.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  components/gel/gel/crc/crc32.c  -o ${OBJECTDIR}/components/gel/gel/crc/crc32.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/components/gel/gel/crc/crc32.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"components/gel" -I"main" -I"components/I2C" -I"main/peripherals" -I"main/controller" -I"main/config" -I"components/liblightmodbus/include" -DGEL_IGNORE_TIME_TYPECHECK -msmart-io=1 -Wall -msfr-warn=off   -std=c99  -mdfp="${DFP_DIR}/xc16"
	
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
