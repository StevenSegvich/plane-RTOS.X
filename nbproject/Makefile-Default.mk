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
FINAL_IMAGE=${DISTDIR}/plane-RTOS.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/plane-RTOS.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
	${MAKE}  -f nbproject/Makefile-Default.mk ${DISTDIR}/plane-RTOS.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/examples/driver_examples.o: examples/driver_examples.c  .generated_files/flags/Default/917d230f766046dd31cc658f50eb0c2165bc442f .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/examples" 
	@${RM} ${OBJECTDIR}/examples/driver_examples.o.d 
	@${RM} ${OBJECTDIR}/examples/driver_examples.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/examples/driver_examples.o.d" -o ${OBJECTDIR}/examples/driver_examples.o examples/driver_examples.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/gcc/system_same54.o: gcc/system_same54.c  .generated_files/flags/Default/f6674a07bd377f6dd811ef2b0ed8ec4fe16b76c9 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/gcc" 
	@${RM} ${OBJECTDIR}/gcc/system_same54.o.d 
	@${RM} ${OBJECTDIR}/gcc/system_same54.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/gcc/system_same54.o.d" -o ${OBJECTDIR}/gcc/system_same54.o gcc/system_same54.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hal/src/hal_atomic.o: hal/src/hal_atomic.c  .generated_files/flags/Default/92180909f193a258f9cab74c3da364fd4479a949 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_atomic.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_atomic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_atomic.o.d" -o ${OBJECTDIR}/hal/src/hal_atomic.o hal/src/hal_atomic.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hal/src/hal_cache.o: hal/src/hal_cache.c  .generated_files/flags/Default/cdd18b3b412d6ffc34b6455218c7aba2fcdc7a2f .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_cache.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_cache.o.d" -o ${OBJECTDIR}/hal/src/hal_cache.o hal/src/hal_cache.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hal/src/hal_delay.o: hal/src/hal_delay.c  .generated_files/flags/Default/912a13b6048b8def8667522c990fac2cf50bf708 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_delay.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_delay.o.d" -o ${OBJECTDIR}/hal/src/hal_delay.o hal/src/hal_delay.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hal/src/hal_gpio.o: hal/src/hal_gpio.c  .generated_files/flags/Default/912089b5a8464be9be94fb63e3a64b29497afc12 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_gpio.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_gpio.o.d" -o ${OBJECTDIR}/hal/src/hal_gpio.o hal/src/hal_gpio.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hal/src/hal_init.o: hal/src/hal_init.c  .generated_files/flags/Default/dc0dd15c5bd2aebe40fa548be1a8d38af70754e3 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_init.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_init.o.d" -o ${OBJECTDIR}/hal/src/hal_init.o hal/src/hal_init.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hal/src/hal_io.o: hal/src/hal_io.c  .generated_files/flags/Default/269f8bddf1a73117d17cc764bfcfef8eb11886d2 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_io.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_io.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_io.o.d" -o ${OBJECTDIR}/hal/src/hal_io.o hal/src/hal_io.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hal/src/hal_sleep.o: hal/src/hal_sleep.c  .generated_files/flags/Default/36f17759568d8377098377c6144dbfb24f8b06cc .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_sleep.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_sleep.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_sleep.o.d" -o ${OBJECTDIR}/hal/src/hal_sleep.o hal/src/hal_sleep.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hal/src/hal_usart_sync.o: hal/src/hal_usart_sync.c  .generated_files/flags/Default/c294ea00159caadf628c53a049e17ddc0902c470 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_usart_sync.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_usart_sync.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_usart_sync.o.d" -o ${OBJECTDIR}/hal/src/hal_usart_sync.o hal/src/hal_usart_sync.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hal/utils/src/utils_assert.o: hal/utils/src/utils_assert.c  .generated_files/flags/Default/249e604a98ce2f21ca3754cba51c06f5cc976caa .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_assert.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_assert.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_assert.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_assert.o hal/utils/src/utils_assert.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hal/utils/src/utils_event.o: hal/utils/src/utils_event.c  .generated_files/flags/Default/a30c83ba35e7770cd7a532dd15a791e0020e7838 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_event.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_event.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_event.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_event.o hal/utils/src/utils_event.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hal/utils/src/utils_list.o: hal/utils/src/utils_list.c  .generated_files/flags/Default/1ccf2ccd737e6dcbc16f2ce726473cf2b581f736 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_list.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_list.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_list.o hal/utils/src/utils_list.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hal/utils/src/utils_syscalls.o: hal/utils/src/utils_syscalls.c  .generated_files/flags/Default/3a29fe12f21a7d2c689afd0d98c801d0fbedb73e .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_syscalls.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_syscalls.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_syscalls.o hal/utils/src/utils_syscalls.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hpl/cmcc/hpl_cmcc.o: hpl/cmcc/hpl_cmcc.c  .generated_files/flags/Default/455e2b30a7d8899701e60f5bbdbf965f43621b12 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hpl/cmcc" 
	@${RM} ${OBJECTDIR}/hpl/cmcc/hpl_cmcc.o.d 
	@${RM} ${OBJECTDIR}/hpl/cmcc/hpl_cmcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hpl/cmcc/hpl_cmcc.o.d" -o ${OBJECTDIR}/hpl/cmcc/hpl_cmcc.o hpl/cmcc/hpl_cmcc.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hpl/core/hpl_core_m4.o: hpl/core/hpl_core_m4.c  .generated_files/flags/Default/c7a6c8cbfbfe281b12958142ec5fddd7456e644d .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hpl/core" 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_core_m4.o.d 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_core_m4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hpl/core/hpl_core_m4.o.d" -o ${OBJECTDIR}/hpl/core/hpl_core_m4.o hpl/core/hpl_core_m4.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hpl/core/hpl_init.o: hpl/core/hpl_init.c  .generated_files/flags/Default/ac32eb8f506e368c17455174cdaee81b3060b56b .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hpl/core" 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_init.o.d 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hpl/core/hpl_init.o.d" -o ${OBJECTDIR}/hpl/core/hpl_init.o hpl/core/hpl_init.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hpl/dmac/hpl_dmac.o: hpl/dmac/hpl_dmac.c  .generated_files/flags/Default/1013627dce1484d8ca2d49a3a244fdd5216a7fc6 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hpl/dmac" 
	@${RM} ${OBJECTDIR}/hpl/dmac/hpl_dmac.o.d 
	@${RM} ${OBJECTDIR}/hpl/dmac/hpl_dmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hpl/dmac/hpl_dmac.o.d" -o ${OBJECTDIR}/hpl/dmac/hpl_dmac.o hpl/dmac/hpl_dmac.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hpl/gclk/hpl_gclk.o: hpl/gclk/hpl_gclk.c  .generated_files/flags/Default/764bd1bc7ed8e1b99a2875f698ad14cb88c2fd09 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hpl/gclk" 
	@${RM} ${OBJECTDIR}/hpl/gclk/hpl_gclk.o.d 
	@${RM} ${OBJECTDIR}/hpl/gclk/hpl_gclk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hpl/gclk/hpl_gclk.o.d" -o ${OBJECTDIR}/hpl/gclk/hpl_gclk.o hpl/gclk/hpl_gclk.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hpl/mclk/hpl_mclk.o: hpl/mclk/hpl_mclk.c  .generated_files/flags/Default/7e072cde8d0c8534849d6891c8177153fb69ff90 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hpl/mclk" 
	@${RM} ${OBJECTDIR}/hpl/mclk/hpl_mclk.o.d 
	@${RM} ${OBJECTDIR}/hpl/mclk/hpl_mclk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hpl/mclk/hpl_mclk.o.d" -o ${OBJECTDIR}/hpl/mclk/hpl_mclk.o hpl/mclk/hpl_mclk.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o: hpl/osc32kctrl/hpl_osc32kctrl.c  .generated_files/flags/Default/51f977bc0b2f5e20a80f877c101404951f20214e .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hpl/osc32kctrl" 
	@${RM} ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o.d 
	@${RM} ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o.d" -o ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o hpl/osc32kctrl/hpl_osc32kctrl.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o: hpl/oscctrl/hpl_oscctrl.c  .generated_files/flags/Default/19f15ed5e576feb7525328233c3b45346be3e1e7 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hpl/oscctrl" 
	@${RM} ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o.d 
	@${RM} ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o.d" -o ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o hpl/oscctrl/hpl_oscctrl.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hpl/pm/hpl_pm.o: hpl/pm/hpl_pm.c  .generated_files/flags/Default/c5efe22cfcf81ac3340084a662250fd308dd9f99 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hpl/pm" 
	@${RM} ${OBJECTDIR}/hpl/pm/hpl_pm.o.d 
	@${RM} ${OBJECTDIR}/hpl/pm/hpl_pm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hpl/pm/hpl_pm.o.d" -o ${OBJECTDIR}/hpl/pm/hpl_pm.o hpl/pm/hpl_pm.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hpl/ramecc/hpl_ramecc.o: hpl/ramecc/hpl_ramecc.c  .generated_files/flags/Default/f1b9dcf3a421109bc5b24b67b5e02e4d3514d92 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hpl/ramecc" 
	@${RM} ${OBJECTDIR}/hpl/ramecc/hpl_ramecc.o.d 
	@${RM} ${OBJECTDIR}/hpl/ramecc/hpl_ramecc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hpl/ramecc/hpl_ramecc.o.d" -o ${OBJECTDIR}/hpl/ramecc/hpl_ramecc.o hpl/ramecc/hpl_ramecc.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hpl/sercom/hpl_sercom.o: hpl/sercom/hpl_sercom.c  .generated_files/flags/Default/438e815f2cc1741fd971ed1e1a8bbd98c850f6ec .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hpl/sercom" 
	@${RM} ${OBJECTDIR}/hpl/sercom/hpl_sercom.o.d 
	@${RM} ${OBJECTDIR}/hpl/sercom/hpl_sercom.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hpl/sercom/hpl_sercom.o.d" -o ${OBJECTDIR}/hpl/sercom/hpl_sercom.o hpl/sercom/hpl_sercom.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hpl/tcc/tcc_lite.o: hpl/tcc/tcc_lite.c  .generated_files/flags/Default/fc4a96a5f3b8b557d3597c92b50782606c2bc94d .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hpl/tcc" 
	@${RM} ${OBJECTDIR}/hpl/tcc/tcc_lite.o.d 
	@${RM} ${OBJECTDIR}/hpl/tcc/tcc_lite.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hpl/tcc/tcc_lite.o.d" -o ${OBJECTDIR}/hpl/tcc/tcc_lite.o hpl/tcc/tcc_lite.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F/port.o: thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F/port.c  .generated_files/flags/Default/432b05cb1ce5e899b03f17d0016ffbb4628c0dc6 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F/port.o.d 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F/port.o.d" -o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F/port.o thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F/port.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/MemMang/heap_1.o: thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/MemMang/heap_1.c  .generated_files/flags/Default/40bbf770c9330429df1e0aa46a1d5a5a972245e0 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/MemMang" 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/MemMang/heap_1.o.d 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/MemMang/heap_1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/MemMang/heap_1.o.d" -o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/MemMang/heap_1.o thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/MemMang/heap_1.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/croutine.o: thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/croutine.c  .generated_files/flags/Default/65bb2ac0dcbdd7efb2e8c84c81f97caf06c07daa .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source" 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/croutine.o.d 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/croutine.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/croutine.o.d" -o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/croutine.o thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/croutine.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/event_groups.o: thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/event_groups.c  .generated_files/flags/Default/67fe78c5e94866d03bdeea73f4a51fcaecc16939 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source" 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/event_groups.o.d 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/event_groups.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/event_groups.o.d" -o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/event_groups.o thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/event_groups.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/list.o: thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/list.c  .generated_files/flags/Default/605dfa231fd68d7fdbb4d0d37a04ac07e2a418c2 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source" 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/list.o.d 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/list.o.d" -o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/list.o thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/list.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/queue.o: thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/queue.c  .generated_files/flags/Default/a0fdecd81e20df023d44623c6f6cde12eb08215c .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source" 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/queue.o.d 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/queue.o.d" -o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/queue.o thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/queue.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/stream_buffer.o: thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/stream_buffer.c  .generated_files/flags/Default/80925f69c833d172932861c783e019614028193d .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source" 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/stream_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/stream_buffer.o.d" -o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/stream_buffer.o thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/stream_buffer.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/tasks.o: thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/tasks.c  .generated_files/flags/Default/4ab5c1fc85bff337f7d8b0634c55f2c1d0991d7c .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source" 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/tasks.o.d 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/tasks.o.d" -o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/tasks.o thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/tasks.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/timers.o: thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/timers.c  .generated_files/flags/Default/59670aee8563a837555cade409b4e86235119bd4 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source" 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/timers.o.d 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/timers.o.d" -o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/timers.o thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/timers.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/rtos_port.o: thirdparty/RTOS/freertos/FreeRTOSV10.0.0/rtos_port.c  .generated_files/flags/Default/b3776516ba2b221fd5fdce030e9e0101450e041 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0" 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/rtos_port.o.d 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/rtos_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/rtos_port.o.d" -o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/rtos_port.o thirdparty/RTOS/freertos/FreeRTOSV10.0.0/rtos_port.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/Default/bd3630dae6d734ebe6277467a977fe19494e75d2 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/driver_init.o: driver_init.c  .generated_files/flags/Default/2616bed6e3af3bf05e3e9af00b94aa0291087c17 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/driver_init.o.d 
	@${RM} ${OBJECTDIR}/driver_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/driver_init.o.d" -o ${OBJECTDIR}/driver_init.o driver_init.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/rtos_start.o: rtos_start.c  .generated_files/flags/Default/4f296a7b762479fc470ede8fe7e601883257ccaf .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/rtos_start.o.d 
	@${RM} ${OBJECTDIR}/rtos_start.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/rtos_start.o.d" -o ${OBJECTDIR}/rtos_start.o rtos_start.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/atmel_start.o: atmel_start.c  .generated_files/flags/Default/a194e13dda740a37b33e4e86e3462b2b5dd9298 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/atmel_start.o.d 
	@${RM} ${OBJECTDIR}/atmel_start.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/atmel_start.o.d" -o ${OBJECTDIR}/atmel_start.o atmel_start.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/WiFi.o: WiFi.c  .generated_files/flags/Default/e4e9752d3828b6954b932304ccdcebee14100e41 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/WiFi.o.d 
	@${RM} ${OBJECTDIR}/WiFi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/WiFi.o.d" -o ${OBJECTDIR}/WiFi.o WiFi.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/interrupts.o: interrupts.c  .generated_files/flags/Default/4009eaa5f0938140ac407904d5ab7ce88541a9eb .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/interrupts.o.d 
	@${RM} ${OBJECTDIR}/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/interrupts.o.d" -o ${OBJECTDIR}/interrupts.o interrupts.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/examples/driver_examples.o: examples/driver_examples.c  .generated_files/flags/Default/c46d61f642df434d2e454d3115cdc4b5d5bea3f5 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/examples" 
	@${RM} ${OBJECTDIR}/examples/driver_examples.o.d 
	@${RM} ${OBJECTDIR}/examples/driver_examples.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/examples/driver_examples.o.d" -o ${OBJECTDIR}/examples/driver_examples.o examples/driver_examples.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/gcc/system_same54.o: gcc/system_same54.c  .generated_files/flags/Default/a5e4a20af2caa1e9eeff0f43145ddec68a371a7f .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/gcc" 
	@${RM} ${OBJECTDIR}/gcc/system_same54.o.d 
	@${RM} ${OBJECTDIR}/gcc/system_same54.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/gcc/system_same54.o.d" -o ${OBJECTDIR}/gcc/system_same54.o gcc/system_same54.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hal/src/hal_atomic.o: hal/src/hal_atomic.c  .generated_files/flags/Default/63a7bdd08b0e234a69e17156c5b2bd0cdbe35a7f .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_atomic.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_atomic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_atomic.o.d" -o ${OBJECTDIR}/hal/src/hal_atomic.o hal/src/hal_atomic.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hal/src/hal_cache.o: hal/src/hal_cache.c  .generated_files/flags/Default/180db03daa436d67d81c555f6c1b0f2232c4f1ac .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_cache.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_cache.o.d" -o ${OBJECTDIR}/hal/src/hal_cache.o hal/src/hal_cache.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hal/src/hal_delay.o: hal/src/hal_delay.c  .generated_files/flags/Default/c11cf3917e05beb8e63a6a2b8960ed62088331fa .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_delay.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_delay.o.d" -o ${OBJECTDIR}/hal/src/hal_delay.o hal/src/hal_delay.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hal/src/hal_gpio.o: hal/src/hal_gpio.c  .generated_files/flags/Default/1ceed7f4dde2f20bb51e7f839b68a981e596b23 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_gpio.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_gpio.o.d" -o ${OBJECTDIR}/hal/src/hal_gpio.o hal/src/hal_gpio.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hal/src/hal_init.o: hal/src/hal_init.c  .generated_files/flags/Default/39b2e4b6d23d479448e8386040bf9ecdabfe04bf .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_init.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_init.o.d" -o ${OBJECTDIR}/hal/src/hal_init.o hal/src/hal_init.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hal/src/hal_io.o: hal/src/hal_io.c  .generated_files/flags/Default/db1dfcf05841ae8c75ca1697f467485d9d1fc064 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_io.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_io.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_io.o.d" -o ${OBJECTDIR}/hal/src/hal_io.o hal/src/hal_io.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hal/src/hal_sleep.o: hal/src/hal_sleep.c  .generated_files/flags/Default/9368c35b457351c3d4f77fe031e3562a2d2b696 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_sleep.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_sleep.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_sleep.o.d" -o ${OBJECTDIR}/hal/src/hal_sleep.o hal/src/hal_sleep.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hal/src/hal_usart_sync.o: hal/src/hal_usart_sync.c  .generated_files/flags/Default/3a16ab0f278f66c15329d66dda45c02ab6cdd7e .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_usart_sync.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_usart_sync.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_usart_sync.o.d" -o ${OBJECTDIR}/hal/src/hal_usart_sync.o hal/src/hal_usart_sync.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hal/utils/src/utils_assert.o: hal/utils/src/utils_assert.c  .generated_files/flags/Default/70b6ae49272135c35c86a49f69c0d9a5a6ac869a .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_assert.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_assert.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_assert.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_assert.o hal/utils/src/utils_assert.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hal/utils/src/utils_event.o: hal/utils/src/utils_event.c  .generated_files/flags/Default/feb89784c360c30a4c7438ae33f5b256d594d74b .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_event.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_event.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_event.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_event.o hal/utils/src/utils_event.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hal/utils/src/utils_list.o: hal/utils/src/utils_list.c  .generated_files/flags/Default/6a0b14ca7d22a5779364cfdd74abb90f6c0ead00 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_list.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_list.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_list.o hal/utils/src/utils_list.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hal/utils/src/utils_syscalls.o: hal/utils/src/utils_syscalls.c  .generated_files/flags/Default/be3ecff739b3f049193b57632ae57005178d959c .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_syscalls.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_syscalls.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_syscalls.o hal/utils/src/utils_syscalls.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hpl/cmcc/hpl_cmcc.o: hpl/cmcc/hpl_cmcc.c  .generated_files/flags/Default/d498e59faafb54978782f9e14acfc35ba4843048 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hpl/cmcc" 
	@${RM} ${OBJECTDIR}/hpl/cmcc/hpl_cmcc.o.d 
	@${RM} ${OBJECTDIR}/hpl/cmcc/hpl_cmcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hpl/cmcc/hpl_cmcc.o.d" -o ${OBJECTDIR}/hpl/cmcc/hpl_cmcc.o hpl/cmcc/hpl_cmcc.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hpl/core/hpl_core_m4.o: hpl/core/hpl_core_m4.c  .generated_files/flags/Default/8355adc490c59416b1af0f697555ec05c0ff07b2 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hpl/core" 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_core_m4.o.d 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_core_m4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hpl/core/hpl_core_m4.o.d" -o ${OBJECTDIR}/hpl/core/hpl_core_m4.o hpl/core/hpl_core_m4.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hpl/core/hpl_init.o: hpl/core/hpl_init.c  .generated_files/flags/Default/6821f996069f4ccebef9e69e607dc4e31735e63b .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hpl/core" 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_init.o.d 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hpl/core/hpl_init.o.d" -o ${OBJECTDIR}/hpl/core/hpl_init.o hpl/core/hpl_init.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hpl/dmac/hpl_dmac.o: hpl/dmac/hpl_dmac.c  .generated_files/flags/Default/9d7a052c131e80219b695c7b57df32bbd802fdf7 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hpl/dmac" 
	@${RM} ${OBJECTDIR}/hpl/dmac/hpl_dmac.o.d 
	@${RM} ${OBJECTDIR}/hpl/dmac/hpl_dmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hpl/dmac/hpl_dmac.o.d" -o ${OBJECTDIR}/hpl/dmac/hpl_dmac.o hpl/dmac/hpl_dmac.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hpl/gclk/hpl_gclk.o: hpl/gclk/hpl_gclk.c  .generated_files/flags/Default/a00720adde890a9844fd48e3410c65041e18dd1f .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hpl/gclk" 
	@${RM} ${OBJECTDIR}/hpl/gclk/hpl_gclk.o.d 
	@${RM} ${OBJECTDIR}/hpl/gclk/hpl_gclk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hpl/gclk/hpl_gclk.o.d" -o ${OBJECTDIR}/hpl/gclk/hpl_gclk.o hpl/gclk/hpl_gclk.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hpl/mclk/hpl_mclk.o: hpl/mclk/hpl_mclk.c  .generated_files/flags/Default/852d167966ca947b336871a6e0abfaaf13886d1a .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hpl/mclk" 
	@${RM} ${OBJECTDIR}/hpl/mclk/hpl_mclk.o.d 
	@${RM} ${OBJECTDIR}/hpl/mclk/hpl_mclk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hpl/mclk/hpl_mclk.o.d" -o ${OBJECTDIR}/hpl/mclk/hpl_mclk.o hpl/mclk/hpl_mclk.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o: hpl/osc32kctrl/hpl_osc32kctrl.c  .generated_files/flags/Default/739d9dd3f78886f15690659f7fb27932412891c7 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hpl/osc32kctrl" 
	@${RM} ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o.d 
	@${RM} ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o.d" -o ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o hpl/osc32kctrl/hpl_osc32kctrl.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o: hpl/oscctrl/hpl_oscctrl.c  .generated_files/flags/Default/98f50de266663555c3952e4d6a49202d7c7de6e1 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hpl/oscctrl" 
	@${RM} ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o.d 
	@${RM} ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o.d" -o ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o hpl/oscctrl/hpl_oscctrl.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hpl/pm/hpl_pm.o: hpl/pm/hpl_pm.c  .generated_files/flags/Default/eae920012ab31fa654ed849a5c93ae9646d2c354 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hpl/pm" 
	@${RM} ${OBJECTDIR}/hpl/pm/hpl_pm.o.d 
	@${RM} ${OBJECTDIR}/hpl/pm/hpl_pm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hpl/pm/hpl_pm.o.d" -o ${OBJECTDIR}/hpl/pm/hpl_pm.o hpl/pm/hpl_pm.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hpl/ramecc/hpl_ramecc.o: hpl/ramecc/hpl_ramecc.c  .generated_files/flags/Default/dd832f3d1c6df514fb797c07bce2026235a52fe5 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hpl/ramecc" 
	@${RM} ${OBJECTDIR}/hpl/ramecc/hpl_ramecc.o.d 
	@${RM} ${OBJECTDIR}/hpl/ramecc/hpl_ramecc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hpl/ramecc/hpl_ramecc.o.d" -o ${OBJECTDIR}/hpl/ramecc/hpl_ramecc.o hpl/ramecc/hpl_ramecc.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hpl/sercom/hpl_sercom.o: hpl/sercom/hpl_sercom.c  .generated_files/flags/Default/dced1ae09fb9cff1c2ea26e1f67d67f57cf49820 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hpl/sercom" 
	@${RM} ${OBJECTDIR}/hpl/sercom/hpl_sercom.o.d 
	@${RM} ${OBJECTDIR}/hpl/sercom/hpl_sercom.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hpl/sercom/hpl_sercom.o.d" -o ${OBJECTDIR}/hpl/sercom/hpl_sercom.o hpl/sercom/hpl_sercom.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/hpl/tcc/tcc_lite.o: hpl/tcc/tcc_lite.c  .generated_files/flags/Default/3ad0079cf0a2af7d9294eec85279fe7be3e222d2 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hpl/tcc" 
	@${RM} ${OBJECTDIR}/hpl/tcc/tcc_lite.o.d 
	@${RM} ${OBJECTDIR}/hpl/tcc/tcc_lite.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/hpl/tcc/tcc_lite.o.d" -o ${OBJECTDIR}/hpl/tcc/tcc_lite.o hpl/tcc/tcc_lite.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F/port.o: thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F/port.c  .generated_files/flags/Default/aeb518b260c7b0e06bf89a6a2d54497745bc7a49 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F/port.o.d 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F/port.o.d" -o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F/port.o thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F/port.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/MemMang/heap_1.o: thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/MemMang/heap_1.c  .generated_files/flags/Default/9a682019fc95da8db000b80adf1999eb64eda4cb .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/MemMang" 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/MemMang/heap_1.o.d 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/MemMang/heap_1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/MemMang/heap_1.o.d" -o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/MemMang/heap_1.o thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/MemMang/heap_1.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/croutine.o: thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/croutine.c  .generated_files/flags/Default/a6d4d2dac7eeebd11291ad7341a1af7ab19d9943 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source" 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/croutine.o.d 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/croutine.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/croutine.o.d" -o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/croutine.o thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/croutine.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/event_groups.o: thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/event_groups.c  .generated_files/flags/Default/c6ebb31e415717b2151ac14b1b01202325b49146 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source" 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/event_groups.o.d 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/event_groups.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/event_groups.o.d" -o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/event_groups.o thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/event_groups.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/list.o: thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/list.c  .generated_files/flags/Default/61060ffed242c6e1888e9941fadd229d4d845721 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source" 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/list.o.d 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/list.o.d" -o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/list.o thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/list.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/queue.o: thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/queue.c  .generated_files/flags/Default/ca20c7dda34c9540c2f9e8dbb28676c3b35cf21c .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source" 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/queue.o.d 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/queue.o.d" -o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/queue.o thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/queue.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/stream_buffer.o: thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/stream_buffer.c  .generated_files/flags/Default/7e22594a132ce1933d442061eec1cd322418b5ad .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source" 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/stream_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/stream_buffer.o.d" -o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/stream_buffer.o thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/stream_buffer.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/tasks.o: thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/tasks.c  .generated_files/flags/Default/d7b0346b097786562ac53ae2b32769a087aa930c .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source" 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/tasks.o.d 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/tasks.o.d" -o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/tasks.o thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/tasks.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/timers.o: thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/timers.c  .generated_files/flags/Default/4808c65784dad001a4ef7c0527dbed060e4948ad .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source" 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/timers.o.d 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/timers.o.d" -o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/timers.o thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/timers.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/rtos_port.o: thirdparty/RTOS/freertos/FreeRTOSV10.0.0/rtos_port.c  .generated_files/flags/Default/1f57db85d94f123bc91e9a52caae243dc23e2ab0 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0" 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/rtos_port.o.d 
	@${RM} ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/rtos_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/rtos_port.o.d" -o ${OBJECTDIR}/thirdparty/RTOS/freertos/FreeRTOSV10.0.0/rtos_port.o thirdparty/RTOS/freertos/FreeRTOSV10.0.0/rtos_port.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/Default/5be7cb9fdc23a1574a0f0f3e0d22e47f80cc9d69 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/driver_init.o: driver_init.c  .generated_files/flags/Default/2c55d2c5d19c0928c57d3c683a8666eb38f7e76c .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/driver_init.o.d 
	@${RM} ${OBJECTDIR}/driver_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/driver_init.o.d" -o ${OBJECTDIR}/driver_init.o driver_init.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/rtos_start.o: rtos_start.c  .generated_files/flags/Default/dcc603f81d8b51dcf2085375568688c91e4b101a .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/rtos_start.o.d 
	@${RM} ${OBJECTDIR}/rtos_start.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/rtos_start.o.d" -o ${OBJECTDIR}/rtos_start.o rtos_start.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/atmel_start.o: atmel_start.c  .generated_files/flags/Default/8ee87e136ac14d38dd4489c7b89b91013b14b16 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/atmel_start.o.d 
	@${RM} ${OBJECTDIR}/atmel_start.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/atmel_start.o.d" -o ${OBJECTDIR}/atmel_start.o atmel_start.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/WiFi.o: WiFi.c  .generated_files/flags/Default/d1291076b68afdb8237f6ae08f1edd4081cbc2ca .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/WiFi.o.d 
	@${RM} ${OBJECTDIR}/WiFi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/cmcc" -I"hpl/core" -I"hpl/dmac" -I"hpl/gclk" -I"hpl/mclk" -I"hpl/osc32kctrl" -I"hpl/oscctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/ramecc" -I"hpl/sercom" -I"hpl/tcc" -I"hri" -I"thirdparty/RTOS" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/include" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/Source/portable/GCC/ARM_CM4F" -I"thirdparty/RTOS/freertos/FreeRTOSV10.0.0/module_config" -I"CMSIS/Core/Include" -I"include" -I"./." -MP -MMD -MF "${OBJECTDIR}/WiFi.o.d" -o ${OBJECTDIR}/WiFi.o WiFi.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/interrupts.o: interrupts.c  .generated_files/flags/Default/8c487b11a8bcd5d849dbb49a61cbffb213cb33dd .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
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
${DISTDIR}/plane-RTOS.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/plane-RTOS.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,-L"gcc/gcc",-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/plane-RTOS.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/plane-RTOS.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),-L"gcc/gcc",-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/plane-RTOS.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
