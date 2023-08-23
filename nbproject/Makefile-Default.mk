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
ifeq "$(wildcard nbproject/Makefile-local-Default.mk)" "nbproject/Makefile-local-Default.mk"
include nbproject/Makefile-local-Default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=Default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/plane_RTOS.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/plane_RTOS.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=examples/driver_examples.c gcc/system_same54.c hal/src/hal_atomic.c hal/src/hal_cache.c hal/src/hal_delay.c hal/src/hal_gpio.c hal/src/hal_init.c hal/src/hal_io.c hal/src/hal_sleep.c hal/src/hal_usart_sync.c hal/utils/src/utils_assert.c hal/utils/src/utils_event.c hal/utils/src/utils_list.c hal/utils/src/utils_syscalls.c hpl/cmcc/hpl_cmcc.c hpl/core/hpl_core_m4.c hpl/core/hpl_init.c hpl/dmac/hpl_dmac.c hpl/gclk/hpl_gclk.c hpl/mclk/hpl_mclk.c hpl/osc32kctrl/hpl_osc32kctrl.c hpl/oscctrl/hpl_oscctrl.c hpl/pm/hpl_pm.c hpl/ramecc/hpl_ramecc.c hpl/sercom/hpl_sercom.c hpl/tcc/tcc_lite.c thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F/port.c thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/MemMang/heap_1.c thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/croutine.c thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/event_groups.c thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/list.c thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/queue.c thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/stream_buffer.c thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/tasks.c thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/timers.c thirdparty/RTOS/freertos/FreeRTOSV10.0.0/rtos_port.c main.c driver_init.c rtos_start.c atmel_start.c WiFi.c interrupts.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/examples/driver_examples.o ${OBJECTDIR}/gcc/system_same54.o ${OBJECTDIR}/hal/src/hal_atomic.o ${OBJECTDIR}/hal/src/hal_cache.o ${OBJECTDIR}/hal/src/hal_delay.o ${OBJECTDIR}/hal/src/hal_gpio.o ${OBJECTDIR}/hal/src/hal_init.o ${OBJECTDIR}/hal/src/hal_io.o ${OBJECTDIR}/hal/src/hal_sleep.o ${OBJECTDIR}/hal/src/hal_usart_sync.o ${OBJECTDIR}/hal/utils/src/utils_assert.o ${OBJECTDIR}/hal/utils/src/utils_event.o ${OBJECTDIR}/hal/utils/src/utils_list.o ${OBJECTDIR}/hal/utils/src/utils_syscalls.o ${OBJECTDIR}/hpl/cmcc/hpl_cmcc.o ${OBJECTDIR}/hpl/core/hpl_core_m4.o ${OBJECTDIR}/hpl/core/hpl_init.o ${OBJECTDIR}/hpl/dmac/hpl_dmac.o ${OBJECTDIR}/hpl/gclk/hpl_gclk.o ${OBJECTDIR}/hpl/mclk/hpl_mclk.o ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o ${OBJECTDIR}/hpl/pm/hpl_pm.o ${OBJECTDIR}/hpl/ramecc/hpl_ramecc.o ${OBJECTDIR}/hpl/sercom/hpl_sercom.o ${OBJECTDIR}/hpl/tcc/tcc_lite.o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F/port.o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/MemMang/heap_1.o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/croutine.o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/event_groups.o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/list.o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/queue.o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/stream_buffer.o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/tasks.o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/timers.o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/rtos_port.o ${OBJECTDIR}/main.o ${OBJECTDIR}/driver_init.o ${OBJECTDIR}/rtos_start.o ${OBJECTDIR}/atmel_start.o ${OBJECTDIR}/WiFi.o ${OBJECTDIR}/interrupts.o
POSSIBLE_DEPFILES=${OBJECTDIR}/examples/driver_examples.o.d ${OBJECTDIR}/gcc/system_same54.o.d ${OBJECTDIR}/hal/src/hal_atomic.o.d ${OBJECTDIR}/hal/src/hal_cache.o.d ${OBJECTDIR}/hal/src/hal_delay.o.d ${OBJECTDIR}/hal/src/hal_gpio.o.d ${OBJECTDIR}/hal/src/hal_init.o.d ${OBJECTDIR}/hal/src/hal_io.o.d ${OBJECTDIR}/hal/src/hal_sleep.o.d ${OBJECTDIR}/hal/src/hal_usart_sync.o.d ${OBJECTDIR}/hal/utils/src/utils_assert.o.d ${OBJECTDIR}/hal/utils/src/utils_event.o.d ${OBJECTDIR}/hal/utils/src/utils_list.o.d ${OBJECTDIR}/hal/utils/src/utils_syscalls.o.d ${OBJECTDIR}/hpl/cmcc/hpl_cmcc.o.d ${OBJECTDIR}/hpl/core/hpl_core_m4.o.d ${OBJECTDIR}/hpl/core/hpl_init.o.d ${OBJECTDIR}/hpl/dmac/hpl_dmac.o.d ${OBJECTDIR}/hpl/gclk/hpl_gclk.o.d ${OBJECTDIR}/hpl/mclk/hpl_mclk.o.d ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o.d ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o.d ${OBJECTDIR}/hpl/pm/hpl_pm.o.d ${OBJECTDIR}/hpl/ramecc/hpl_ramecc.o.d ${OBJECTDIR}/hpl/sercom/hpl_sercom.o.d ${OBJECTDIR}/hpl/tcc/tcc_lite.o.d ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F/port.o.d ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/MemMang/heap_1.o.d ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/croutine.o.d ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/event_groups.o.d ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/list.o.d ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/queue.o.d ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/stream_buffer.o.d ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/tasks.o.d ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/timers.o.d ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/rtos_port.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/driver_init.o.d ${OBJECTDIR}/rtos_start.o.d ${OBJECTDIR}/atmel_start.o.d ${OBJECTDIR}/WiFi.o.d ${OBJECTDIR}/interrupts.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/examples/driver_examples.o ${OBJECTDIR}/gcc/system_same54.o ${OBJECTDIR}/hal/src/hal_atomic.o ${OBJECTDIR}/hal/src/hal_cache.o ${OBJECTDIR}/hal/src/hal_delay.o ${OBJECTDIR}/hal/src/hal_gpio.o ${OBJECTDIR}/hal/src/hal_init.o ${OBJECTDIR}/hal/src/hal_io.o ${OBJECTDIR}/hal/src/hal_sleep.o ${OBJECTDIR}/hal/src/hal_usart_sync.o ${OBJECTDIR}/hal/utils/src/utils_assert.o ${OBJECTDIR}/hal/utils/src/utils_event.o ${OBJECTDIR}/hal/utils/src/utils_list.o ${OBJECTDIR}/hal/utils/src/utils_syscalls.o ${OBJECTDIR}/hpl/cmcc/hpl_cmcc.o ${OBJECTDIR}/hpl/core/hpl_core_m4.o ${OBJECTDIR}/hpl/core/hpl_init.o ${OBJECTDIR}/hpl/dmac/hpl_dmac.o ${OBJECTDIR}/hpl/gclk/hpl_gclk.o ${OBJECTDIR}/hpl/mclk/hpl_mclk.o ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o ${OBJECTDIR}/hpl/pm/hpl_pm.o ${OBJECTDIR}/hpl/ramecc/hpl_ramecc.o ${OBJECTDIR}/hpl/sercom/hpl_sercom.o ${OBJECTDIR}/hpl/tcc/tcc_lite.o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F/port.o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/MemMang/heap_1.o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/croutine.o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/event_groups.o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/list.o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/queue.o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/stream_buffer.o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/tasks.o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/timers.o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/rtos_port.o ${OBJECTDIR}/main.o ${OBJECTDIR}/driver_init.o ${OBJECTDIR}/rtos_start.o ${OBJECTDIR}/atmel_start.o ${OBJECTDIR}/WiFi.o ${OBJECTDIR}/interrupts.o

# Source Files
SOURCEFILES=examples/driver_examples.c gcc/system_same54.c hal/src/hal_atomic.c hal/src/hal_cache.c hal/src/hal_delay.c hal/src/hal_gpio.c hal/src/hal_init.c hal/src/hal_io.c hal/src/hal_sleep.c hal/src/hal_usart_sync.c hal/utils/src/utils_assert.c hal/utils/src/utils_event.c hal/utils/src/utils_list.c hal/utils/src/utils_syscalls.c hpl/cmcc/hpl_cmcc.c hpl/core/hpl_core_m4.c hpl/core/hpl_init.c hpl/dmac/hpl_dmac.c hpl/gclk/hpl_gclk.c hpl/mclk/hpl_mclk.c hpl/osc32kctrl/hpl_osc32kctrl.c hpl/oscctrl/hpl_oscctrl.c hpl/pm/hpl_pm.c hpl/ramecc/hpl_ramecc.c hpl/sercom/hpl_sercom.c hpl/tcc/tcc_lite.c thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F/port.c thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/MemMang/heap_1.c thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/croutine.c thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/event_groups.c thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/list.c thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/queue.c thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/stream_buffer.c thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/tasks.c thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/timers.c thirdparty/RTOS/freertos/FreeRTOSV10.0.0/rtos_port.c main.c driver_init.c rtos_start.c atmel_start.c WiFi.c interrupts.c

# Pack Options 
PACK_COMMON_OPTIONS=-I "${CMSIS_DIR}/CMSIS/Core/Include"



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
	${MAKE}  -f nbproject/Makefile-Default.mk ${DISTDIR}/plane_RTOS.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATSAME54P20A
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/examples/driver_examples.o: examples/driver_examples.c  .generated_files/flags/Default/b3ce68180a380f86c0ae2c775b1025a177a5de3c .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/examples" 
	@${RM} ${OBJECTDIR}/examples/driver_examples.o.d 
	@${RM} ${OBJECTDIR}/examples/driver_examples.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/examples/driver_examples.o.d" -o ${OBJECTDIR}/examples/driver_examples.o examples/driver_examples.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/gcc/system_same54.o: gcc/system_same54.c  .generated_files/flags/Default/62009d4f15c44273eb17873c991e1cf693397f93 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/gcc" 
	@${RM} ${OBJECTDIR}/gcc/system_same54.o.d 
	@${RM} ${OBJECTDIR}/gcc/system_same54.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/gcc/system_same54.o.d" -o ${OBJECTDIR}/gcc/system_same54.o gcc/system_same54.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hal/src/hal_atomic.o: hal/src/hal_atomic.c  .generated_files/flags/Default/946b1f0b45887514f4a3d31843e5fcdf2a6405d4 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_atomic.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_atomic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_atomic.o.d" -o ${OBJECTDIR}/hal/src/hal_atomic.o hal/src/hal_atomic.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hal/src/hal_cache.o: hal/src/hal_cache.c  .generated_files/flags/Default/81806cd2ab25fc1b861b5f15ac96a7baa7b988e8 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_cache.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_cache.o.d" -o ${OBJECTDIR}/hal/src/hal_cache.o hal/src/hal_cache.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hal/src/hal_delay.o: hal/src/hal_delay.c  .generated_files/flags/Default/f192335af361856235fdf32fc70a112014b7331d .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_delay.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_delay.o.d" -o ${OBJECTDIR}/hal/src/hal_delay.o hal/src/hal_delay.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hal/src/hal_gpio.o: hal/src/hal_gpio.c  .generated_files/flags/Default/7fbb9576f0e4505ca58a9a5158930b8311d5ab7a .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_gpio.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_gpio.o.d" -o ${OBJECTDIR}/hal/src/hal_gpio.o hal/src/hal_gpio.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hal/src/hal_init.o: hal/src/hal_init.c  .generated_files/flags/Default/922761e926d1c5fa8c2308dd834f432dc1b9fbfa .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_init.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_init.o.d" -o ${OBJECTDIR}/hal/src/hal_init.o hal/src/hal_init.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hal/src/hal_io.o: hal/src/hal_io.c  .generated_files/flags/Default/a423739ed6fd6a43d7eb79c9fb2b1de13f3150d5 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_io.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_io.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_io.o.d" -o ${OBJECTDIR}/hal/src/hal_io.o hal/src/hal_io.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hal/src/hal_sleep.o: hal/src/hal_sleep.c  .generated_files/flags/Default/43a66b059dbcbb459875bf86d0c3684bc049f02c .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_sleep.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_sleep.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_sleep.o.d" -o ${OBJECTDIR}/hal/src/hal_sleep.o hal/src/hal_sleep.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hal/src/hal_usart_sync.o: hal/src/hal_usart_sync.c  .generated_files/flags/Default/aaaa86a19efa71f12e421d93a51c673e84e70d89 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_usart_sync.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_usart_sync.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_usart_sync.o.d" -o ${OBJECTDIR}/hal/src/hal_usart_sync.o hal/src/hal_usart_sync.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hal/utils/src/utils_assert.o: hal/utils/src/utils_assert.c  .generated_files/flags/Default/29b150186971b7984ad6c4d4f2bcfe2053aff0f8 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_assert.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_assert.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_assert.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_assert.o hal/utils/src/utils_assert.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hal/utils/src/utils_event.o: hal/utils/src/utils_event.c  .generated_files/flags/Default/58876dbec8442af965bba342af6a9195970bef95 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_event.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_event.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_event.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_event.o hal/utils/src/utils_event.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hal/utils/src/utils_list.o: hal/utils/src/utils_list.c  .generated_files/flags/Default/9122c56b060b30a22defcfc98809a909df6820ec .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_list.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_list.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_list.o hal/utils/src/utils_list.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hal/utils/src/utils_syscalls.o: hal/utils/src/utils_syscalls.c  .generated_files/flags/Default/140aa88fd15ccd250ffa306b41a25b3d7d4ba2bc .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_syscalls.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_syscalls.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_syscalls.o hal/utils/src/utils_syscalls.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hpl/cmcc/hpl_cmcc.o: hpl/cmcc/hpl_cmcc.c  .generated_files/flags/Default/f6fed207a89ee4f0673026cfcd813b77fe770450 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hpl/cmcc" 
	@${RM} ${OBJECTDIR}/hpl/cmcc/hpl_cmcc.o.d 
	@${RM} ${OBJECTDIR}/hpl/cmcc/hpl_cmcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hpl/cmcc/hpl_cmcc.o.d" -o ${OBJECTDIR}/hpl/cmcc/hpl_cmcc.o hpl/cmcc/hpl_cmcc.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hpl/core/hpl_core_m4.o: hpl/core/hpl_core_m4.c  .generated_files/flags/Default/6e18708702cb12a7ee2df8bc1e99d29ffc69ee1f .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hpl/core" 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_core_m4.o.d 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_core_m4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hpl/core/hpl_core_m4.o.d" -o ${OBJECTDIR}/hpl/core/hpl_core_m4.o hpl/core/hpl_core_m4.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hpl/core/hpl_init.o: hpl/core/hpl_init.c  .generated_files/flags/Default/c9f5e855d427738418704d97a1d1e878b782ee6e .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hpl/core" 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_init.o.d 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hpl/core/hpl_init.o.d" -o ${OBJECTDIR}/hpl/core/hpl_init.o hpl/core/hpl_init.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hpl/dmac/hpl_dmac.o: hpl/dmac/hpl_dmac.c  .generated_files/flags/Default/466e3677a96ac5446f297f8ee62a76ccf1030620 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hpl/dmac" 
	@${RM} ${OBJECTDIR}/hpl/dmac/hpl_dmac.o.d 
	@${RM} ${OBJECTDIR}/hpl/dmac/hpl_dmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hpl/dmac/hpl_dmac.o.d" -o ${OBJECTDIR}/hpl/dmac/hpl_dmac.o hpl/dmac/hpl_dmac.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hpl/gclk/hpl_gclk.o: hpl/gclk/hpl_gclk.c  .generated_files/flags/Default/a08954549e2adf9741d7b8d43bc86d471f48fe7e .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hpl/gclk" 
	@${RM} ${OBJECTDIR}/hpl/gclk/hpl_gclk.o.d 
	@${RM} ${OBJECTDIR}/hpl/gclk/hpl_gclk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hpl/gclk/hpl_gclk.o.d" -o ${OBJECTDIR}/hpl/gclk/hpl_gclk.o hpl/gclk/hpl_gclk.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hpl/mclk/hpl_mclk.o: hpl/mclk/hpl_mclk.c  .generated_files/flags/Default/d18843e78bb0965cf1e590850ce8549d2d42f61b .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hpl/mclk" 
	@${RM} ${OBJECTDIR}/hpl/mclk/hpl_mclk.o.d 
	@${RM} ${OBJECTDIR}/hpl/mclk/hpl_mclk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hpl/mclk/hpl_mclk.o.d" -o ${OBJECTDIR}/hpl/mclk/hpl_mclk.o hpl/mclk/hpl_mclk.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o: hpl/osc32kctrl/hpl_osc32kctrl.c  .generated_files/flags/Default/ca403a8956b7cbbec56e9ce9bb7f73b9294f86a4 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hpl/osc32kctrl" 
	@${RM} ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o.d 
	@${RM} ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o.d" -o ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o hpl/osc32kctrl/hpl_osc32kctrl.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o: hpl/oscctrl/hpl_oscctrl.c  .generated_files/flags/Default/1a917a79eea587ed9c960fb258b5911e4a524e82 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hpl/oscctrl" 
	@${RM} ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o.d 
	@${RM} ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o.d" -o ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o hpl/oscctrl/hpl_oscctrl.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hpl/pm/hpl_pm.o: hpl/pm/hpl_pm.c  .generated_files/flags/Default/3ccbc4903baac7aa220af88dacb43ad2780699e8 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hpl/pm" 
	@${RM} ${OBJECTDIR}/hpl/pm/hpl_pm.o.d 
	@${RM} ${OBJECTDIR}/hpl/pm/hpl_pm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hpl/pm/hpl_pm.o.d" -o ${OBJECTDIR}/hpl/pm/hpl_pm.o hpl/pm/hpl_pm.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hpl/ramecc/hpl_ramecc.o: hpl/ramecc/hpl_ramecc.c  .generated_files/flags/Default/10e9bcfec540fcd40414ec991cd6de2840149d57 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hpl/ramecc" 
	@${RM} ${OBJECTDIR}/hpl/ramecc/hpl_ramecc.o.d 
	@${RM} ${OBJECTDIR}/hpl/ramecc/hpl_ramecc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hpl/ramecc/hpl_ramecc.o.d" -o ${OBJECTDIR}/hpl/ramecc/hpl_ramecc.o hpl/ramecc/hpl_ramecc.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hpl/sercom/hpl_sercom.o: hpl/sercom/hpl_sercom.c  .generated_files/flags/Default/1938d646b2cc95e072a4830e1017cdc396e63457 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hpl/sercom" 
	@${RM} ${OBJECTDIR}/hpl/sercom/hpl_sercom.o.d 
	@${RM} ${OBJECTDIR}/hpl/sercom/hpl_sercom.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hpl/sercom/hpl_sercom.o.d" -o ${OBJECTDIR}/hpl/sercom/hpl_sercom.o hpl/sercom/hpl_sercom.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hpl/tcc/tcc_lite.o: hpl/tcc/tcc_lite.c  .generated_files/flags/Default/2069e58bf85a1b539c862fc585d72110e30519bf .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hpl/tcc" 
	@${RM} ${OBJECTDIR}/hpl/tcc/tcc_lite.o.d 
	@${RM} ${OBJECTDIR}/hpl/tcc/tcc_lite.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hpl/tcc/tcc_lite.o.d" -o ${OBJECTDIR}/hpl/tcc/tcc_lite.o hpl/tcc/tcc_lite.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F/port.o: thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F/port.c  .generated_files/flags/Default/78c3ca67af64dd4da405918422fc928728839163 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F/port.o.d 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F/port.o.d" -o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F/port.o thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F/port.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/MemMang/heap_1.o: thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/MemMang/heap_1.c  .generated_files/flags/Default/4b1cc1da373b33253a3a1ed14b46f1766652d737 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/MemMang" 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/MemMang/heap_1.o.d 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/MemMang/heap_1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/MemMang/heap_1.o.d" -o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/MemMang/heap_1.o thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/MemMang/heap_1.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/croutine.o: thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/croutine.c  .generated_files/flags/Default/e01c6ce75dbb2e3ef6ad46726f5ee89e2a33adca .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source" 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/croutine.o.d 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/croutine.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/croutine.o.d" -o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/croutine.o thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/croutine.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/event_groups.o: thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/event_groups.c  .generated_files/flags/Default/7e07e87e56b5c165510292ac8c4b58249fd6e085 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source" 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/event_groups.o.d 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/event_groups.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/event_groups.o.d" -o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/event_groups.o thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/event_groups.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/list.o: thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/list.c  .generated_files/flags/Default/fdf0cd82784d08a9dc3f60ac52109167326632b8 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source" 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/list.o.d 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/list.o.d" -o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/list.o thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/list.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/queue.o: thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/queue.c  .generated_files/flags/Default/8c3ba288bb2e9b8d7c045bbb8f99da8a2770260a .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source" 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/queue.o.d 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/queue.o.d" -o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/queue.o thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/queue.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/stream_buffer.o: thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/stream_buffer.c  .generated_files/flags/Default/d7049672a50849b36317b0644b28a2ee44ef50a0 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source" 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/stream_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/stream_buffer.o.d" -o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/stream_buffer.o thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/stream_buffer.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/tasks.o: thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/tasks.c  .generated_files/flags/Default/cd7cc0b1e45fac1f35027830aed33f685e0af7eb .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source" 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/tasks.o.d 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/tasks.o.d" -o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/tasks.o thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/tasks.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/timers.o: thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/timers.c  .generated_files/flags/Default/d901919226d1388f0e023ce53edf2b74028b956d .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source" 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/timers.o.d 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/timers.o.d" -o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/timers.o thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/timers.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/rtos_port.o: thirdparty/RTOS/freertos/FreeRTOSV10.0.0/rtos_port.c  .generated_files/flags/Default/bc848b6c44055a19bf955bfb5a4ac16a53bce5b6 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0" 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/rtos_port.o.d 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/rtos_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/rtos_port.o.d" -o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/rtos_port.o thirdparty/RTOS/freertos/FreeRTOSV10.0.0/rtos_port.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/Default/b1861270b9a444d30cdad4d7ca24307df4a60e87 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/driver_init.o: driver_init.c  .generated_files/flags/Default/5ec8e1ec792b362fc04d6b9f6eb7713617e62a55 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/driver_init.o.d 
	@${RM} ${OBJECTDIR}/driver_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/driver_init.o.d" -o ${OBJECTDIR}/driver_init.o driver_init.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/rtos_start.o: rtos_start.c  .generated_files/flags/Default/59ebfbf0d20e16d5cba8f1fe765cf104eb5f6b61 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/rtos_start.o.d 
	@${RM} ${OBJECTDIR}/rtos_start.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/rtos_start.o.d" -o ${OBJECTDIR}/rtos_start.o rtos_start.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/atmel_start.o: atmel_start.c  .generated_files/flags/Default/dfe411eccd93f075c8209ead0350288c98cbef86 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/atmel_start.o.d 
	@${RM} ${OBJECTDIR}/atmel_start.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/atmel_start.o.d" -o ${OBJECTDIR}/atmel_start.o atmel_start.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/WiFi.o: WiFi.c  .generated_files/flags/Default/2fd14579f6bf8ce24ca9eac1e0dbd0056d664da1 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/WiFi.o.d 
	@${RM} ${OBJECTDIR}/WiFi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/WiFi.o.d" -o ${OBJECTDIR}/WiFi.o WiFi.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/interrupts.o: interrupts.c  .generated_files/flags/Default/c3f3f670e682619395783b2230e37afbe1271b1c .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/interrupts.o.d 
	@${RM} ${OBJECTDIR}/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/interrupts.o.d" -o ${OBJECTDIR}/interrupts.o interrupts.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/examples/driver_examples.o: examples/driver_examples.c  .generated_files/flags/Default/9851fffb1f844c1b283af9ab73d6dd56670cf98a .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/examples" 
	@${RM} ${OBJECTDIR}/examples/driver_examples.o.d 
	@${RM} ${OBJECTDIR}/examples/driver_examples.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/examples/driver_examples.o.d" -o ${OBJECTDIR}/examples/driver_examples.o examples/driver_examples.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/gcc/system_same54.o: gcc/system_same54.c  .generated_files/flags/Default/8c63ffb312dae713eb31d923d16f558913505116 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/gcc" 
	@${RM} ${OBJECTDIR}/gcc/system_same54.o.d 
	@${RM} ${OBJECTDIR}/gcc/system_same54.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/gcc/system_same54.o.d" -o ${OBJECTDIR}/gcc/system_same54.o gcc/system_same54.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hal/src/hal_atomic.o: hal/src/hal_atomic.c  .generated_files/flags/Default/825b311a5f796471c37fd3ad6311f8438a665b15 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_atomic.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_atomic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_atomic.o.d" -o ${OBJECTDIR}/hal/src/hal_atomic.o hal/src/hal_atomic.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hal/src/hal_cache.o: hal/src/hal_cache.c  .generated_files/flags/Default/5c0336be17f771d46dfafb7d07e9500c754d236a .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_cache.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_cache.o.d" -o ${OBJECTDIR}/hal/src/hal_cache.o hal/src/hal_cache.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hal/src/hal_delay.o: hal/src/hal_delay.c  .generated_files/flags/Default/8f968af1e14b32c62bed63b4127f7addf12d7c91 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_delay.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_delay.o.d" -o ${OBJECTDIR}/hal/src/hal_delay.o hal/src/hal_delay.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hal/src/hal_gpio.o: hal/src/hal_gpio.c  .generated_files/flags/Default/df427bb8b7570c87525d98bb5a47816249978a44 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_gpio.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_gpio.o.d" -o ${OBJECTDIR}/hal/src/hal_gpio.o hal/src/hal_gpio.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hal/src/hal_init.o: hal/src/hal_init.c  .generated_files/flags/Default/6ec40184aeb2e095ff32dc5ce9dfd7d00750d4f5 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_init.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_init.o.d" -o ${OBJECTDIR}/hal/src/hal_init.o hal/src/hal_init.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hal/src/hal_io.o: hal/src/hal_io.c  .generated_files/flags/Default/28985fb8fac2136f85f497fed86acba022f517bd .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_io.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_io.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_io.o.d" -o ${OBJECTDIR}/hal/src/hal_io.o hal/src/hal_io.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hal/src/hal_sleep.o: hal/src/hal_sleep.c  .generated_files/flags/Default/ed7c727e62ba16b5b0bdfa50ff91529c0a3eef25 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_sleep.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_sleep.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_sleep.o.d" -o ${OBJECTDIR}/hal/src/hal_sleep.o hal/src/hal_sleep.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hal/src/hal_usart_sync.o: hal/src/hal_usart_sync.c  .generated_files/flags/Default/c673321d5976d5e917aa5cc74aafe9c56b31dbf0 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_usart_sync.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_usart_sync.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_usart_sync.o.d" -o ${OBJECTDIR}/hal/src/hal_usart_sync.o hal/src/hal_usart_sync.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hal/utils/src/utils_assert.o: hal/utils/src/utils_assert.c  .generated_files/flags/Default/72903d58393003f6a400cc675cfe0367d6854b1e .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_assert.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_assert.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_assert.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_assert.o hal/utils/src/utils_assert.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hal/utils/src/utils_event.o: hal/utils/src/utils_event.c  .generated_files/flags/Default/273392411fee0777bd934880d855e44602890041 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_event.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_event.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_event.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_event.o hal/utils/src/utils_event.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hal/utils/src/utils_list.o: hal/utils/src/utils_list.c  .generated_files/flags/Default/8fb0edc1affb87e568f46d7921b2628528a1f30e .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_list.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_list.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_list.o hal/utils/src/utils_list.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hal/utils/src/utils_syscalls.o: hal/utils/src/utils_syscalls.c  .generated_files/flags/Default/2dd3dbee7ffd56cee088bf95052f11c48f4885e3 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_syscalls.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_syscalls.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_syscalls.o hal/utils/src/utils_syscalls.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hpl/cmcc/hpl_cmcc.o: hpl/cmcc/hpl_cmcc.c  .generated_files/flags/Default/db11974fd437fc57d40a3b4a08318bc877bad104 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hpl/cmcc" 
	@${RM} ${OBJECTDIR}/hpl/cmcc/hpl_cmcc.o.d 
	@${RM} ${OBJECTDIR}/hpl/cmcc/hpl_cmcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hpl/cmcc/hpl_cmcc.o.d" -o ${OBJECTDIR}/hpl/cmcc/hpl_cmcc.o hpl/cmcc/hpl_cmcc.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hpl/core/hpl_core_m4.o: hpl/core/hpl_core_m4.c  .generated_files/flags/Default/2332d24ada8f092cb102515897a425e04c0a6a9 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hpl/core" 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_core_m4.o.d 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_core_m4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hpl/core/hpl_core_m4.o.d" -o ${OBJECTDIR}/hpl/core/hpl_core_m4.o hpl/core/hpl_core_m4.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hpl/core/hpl_init.o: hpl/core/hpl_init.c  .generated_files/flags/Default/c16ca75ad161559d6f938ed231898a09855d9782 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hpl/core" 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_init.o.d 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hpl/core/hpl_init.o.d" -o ${OBJECTDIR}/hpl/core/hpl_init.o hpl/core/hpl_init.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hpl/dmac/hpl_dmac.o: hpl/dmac/hpl_dmac.c  .generated_files/flags/Default/b30505c4fdd3c372ad0b600e8af67080cfab945f .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hpl/dmac" 
	@${RM} ${OBJECTDIR}/hpl/dmac/hpl_dmac.o.d 
	@${RM} ${OBJECTDIR}/hpl/dmac/hpl_dmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hpl/dmac/hpl_dmac.o.d" -o ${OBJECTDIR}/hpl/dmac/hpl_dmac.o hpl/dmac/hpl_dmac.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hpl/gclk/hpl_gclk.o: hpl/gclk/hpl_gclk.c  .generated_files/flags/Default/af6a51df6625f3a2fa367655c9e213d8f5a355c8 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hpl/gclk" 
	@${RM} ${OBJECTDIR}/hpl/gclk/hpl_gclk.o.d 
	@${RM} ${OBJECTDIR}/hpl/gclk/hpl_gclk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hpl/gclk/hpl_gclk.o.d" -o ${OBJECTDIR}/hpl/gclk/hpl_gclk.o hpl/gclk/hpl_gclk.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hpl/mclk/hpl_mclk.o: hpl/mclk/hpl_mclk.c  .generated_files/flags/Default/7609fec933edca46aab74f0cb7010213b7ee9ad .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hpl/mclk" 
	@${RM} ${OBJECTDIR}/hpl/mclk/hpl_mclk.o.d 
	@${RM} ${OBJECTDIR}/hpl/mclk/hpl_mclk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hpl/mclk/hpl_mclk.o.d" -o ${OBJECTDIR}/hpl/mclk/hpl_mclk.o hpl/mclk/hpl_mclk.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o: hpl/osc32kctrl/hpl_osc32kctrl.c  .generated_files/flags/Default/8795ab69499add773f947d93f8bdf5bc8a9f8594 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hpl/osc32kctrl" 
	@${RM} ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o.d 
	@${RM} ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o.d" -o ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o hpl/osc32kctrl/hpl_osc32kctrl.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o: hpl/oscctrl/hpl_oscctrl.c  .generated_files/flags/Default/496196bd65e235a4216416cf25b5ad1988ff0d60 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hpl/oscctrl" 
	@${RM} ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o.d 
	@${RM} ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o.d" -o ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o hpl/oscctrl/hpl_oscctrl.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hpl/pm/hpl_pm.o: hpl/pm/hpl_pm.c  .generated_files/flags/Default/cddd03d8c81799b68bef2b6b576203e7c076f890 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hpl/pm" 
	@${RM} ${OBJECTDIR}/hpl/pm/hpl_pm.o.d 
	@${RM} ${OBJECTDIR}/hpl/pm/hpl_pm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hpl/pm/hpl_pm.o.d" -o ${OBJECTDIR}/hpl/pm/hpl_pm.o hpl/pm/hpl_pm.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hpl/ramecc/hpl_ramecc.o: hpl/ramecc/hpl_ramecc.c  .generated_files/flags/Default/b5e594d7ad836dcd72b67d2b7c9f35d80dbf50a9 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hpl/ramecc" 
	@${RM} ${OBJECTDIR}/hpl/ramecc/hpl_ramecc.o.d 
	@${RM} ${OBJECTDIR}/hpl/ramecc/hpl_ramecc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hpl/ramecc/hpl_ramecc.o.d" -o ${OBJECTDIR}/hpl/ramecc/hpl_ramecc.o hpl/ramecc/hpl_ramecc.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hpl/sercom/hpl_sercom.o: hpl/sercom/hpl_sercom.c  .generated_files/flags/Default/d056e1e12a2abf64070c382054bfeb44383ffe0a .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hpl/sercom" 
	@${RM} ${OBJECTDIR}/hpl/sercom/hpl_sercom.o.d 
	@${RM} ${OBJECTDIR}/hpl/sercom/hpl_sercom.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hpl/sercom/hpl_sercom.o.d" -o ${OBJECTDIR}/hpl/sercom/hpl_sercom.o hpl/sercom/hpl_sercom.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hpl/tcc/tcc_lite.o: hpl/tcc/tcc_lite.c  .generated_files/flags/Default/42e308d751230e365172fea085d0cffe481d27a .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hpl/tcc" 
	@${RM} ${OBJECTDIR}/hpl/tcc/tcc_lite.o.d 
	@${RM} ${OBJECTDIR}/hpl/tcc/tcc_lite.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hpl/tcc/tcc_lite.o.d" -o ${OBJECTDIR}/hpl/tcc/tcc_lite.o hpl/tcc/tcc_lite.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F/port.o: thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F/port.c  .generated_files/flags/Default/78e6d82663db7003d590340b01ba8bd40a9a84b3 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F/port.o.d 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F/port.o.d" -o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F/port.o thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F/port.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/MemMang/heap_1.o: thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/MemMang/heap_1.c  .generated_files/flags/Default/67ebed63b14ebd5e3d91c6c9223e601c989217e1 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/MemMang" 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/MemMang/heap_1.o.d 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/MemMang/heap_1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/MemMang/heap_1.o.d" -o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/MemMang/heap_1.o thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/MemMang/heap_1.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/croutine.o: thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/croutine.c  .generated_files/flags/Default/572f736d046cb42d86729c44a26095d99fc5ddf8 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source" 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/croutine.o.d 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/croutine.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/croutine.o.d" -o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/croutine.o thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/croutine.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/event_groups.o: thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/event_groups.c  .generated_files/flags/Default/55bee9b8cbab98eeeb2ef4220ba767a0821335a6 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source" 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/event_groups.o.d 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/event_groups.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/event_groups.o.d" -o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/event_groups.o thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/event_groups.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/list.o: thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/list.c  .generated_files/flags/Default/5c25f4d6093946a3d651d86653d37b1d5dc25261 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source" 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/list.o.d 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/list.o.d" -o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/list.o thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/list.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/queue.o: thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/queue.c  .generated_files/flags/Default/84ce4a5f28f18d88986ebfcfe90d9459701444a1 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source" 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/queue.o.d 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/queue.o.d" -o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/queue.o thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/queue.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/stream_buffer.o: thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/stream_buffer.c  .generated_files/flags/Default/a2c6506df049ba0913f011b215229b8646e671ec .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source" 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/stream_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/stream_buffer.o.d" -o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/stream_buffer.o thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/stream_buffer.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/tasks.o: thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/tasks.c  .generated_files/flags/Default/8240ee6cd90b93b290f2d658f317ae9971779715 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source" 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/tasks.o.d 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/tasks.o.d" -o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/tasks.o thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/tasks.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/timers.o: thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/timers.c  .generated_files/flags/Default/215289ba67fb9b3498201edb9bfd85b948f6644f .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source" 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/timers.o.d 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/timers.o.d" -o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/timers.o thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/timers.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/rtos_port.o: thirdparty/RTOS/freertos/FreeRTOSV10.0.0/rtos_port.c  .generated_files/flags/Default/584fc54844da17bf19391affd6c9813151a82b5c .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0" 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/rtos_port.o.d 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/rtos_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/rtos_port.o.d" -o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/rtos_port.o thirdparty/RTOS/freertos/FreeRTOSV10.0.0/rtos_port.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/Default/b086a504edb6b876b862163a8487ac4c79b03ab4 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/driver_init.o: driver_init.c  .generated_files/flags/Default/ce657a2197c826f4e12beb3d0d43938ca0be5396 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/driver_init.o.d 
	@${RM} ${OBJECTDIR}/driver_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/driver_init.o.d" -o ${OBJECTDIR}/driver_init.o driver_init.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/rtos_start.o: rtos_start.c  .generated_files/flags/Default/eb3ecef9362eaacd636c59a4167d478491cf3cf2 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/rtos_start.o.d 
	@${RM} ${OBJECTDIR}/rtos_start.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/rtos_start.o.d" -o ${OBJECTDIR}/rtos_start.o rtos_start.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/atmel_start.o: atmel_start.c  .generated_files/flags/Default/857672182cb7c71d2ef5ed5ea500891ab2e365 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/atmel_start.o.d 
	@${RM} ${OBJECTDIR}/atmel_start.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/atmel_start.o.d" -o ${OBJECTDIR}/atmel_start.o atmel_start.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/WiFi.o: WiFi.c  .generated_files/flags/Default/9b17789d73ff2ea97ff1926e12a6633c5e9df26c .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/WiFi.o.d 
	@${RM} ${OBJECTDIR}/WiFi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/WiFi.o.d" -o ${OBJECTDIR}/WiFi.o WiFi.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/interrupts.o: interrupts.c  .generated_files/flags/Default/c0d38c84de355d04987a8bd69382169fcb0a4364 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/interrupts.o.d 
	@${RM} ${OBJECTDIR}/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/interrupts.o.d" -o ${OBJECTDIR}/interrupts.o interrupts.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/plane_RTOS.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/plane_RTOS.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,-L"gcc/gcc",-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/plane_RTOS.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/plane_RTOS.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),-L"gcc/gcc",-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/plane_RTOS.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
