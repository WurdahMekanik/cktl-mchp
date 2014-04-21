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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/cktl-mchp.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/cktl-mchp.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=C:/Users/agutowski/Documents/MPLABXProjects/cktl-mchp/cktl-mchp.X/system_config.c C:/Users/agutowski/Documents/MPLABXProjects/cktl-mchp/cktl-mchp.X/system_init.c C:/Users/agutowski/Documents/MPLABXProjects/cktl-mchp/cktl-mchp.X/system_interrupt.c C:/Users/agutowski/Documents/MPLABXProjects/cktl-mchp/cktl-mchp.X/system_tasks.c src/main.c app.c C:/microchip/harmony/v0_80b/framework/driver/usart/src/dynamic/drv_usart.c C:/microchip/harmony/v0_80b/framework/driver/usart/src/dynamic/drv_usart_buffer_queue.c C:/microchip/harmony/v0_80b/framework/driver/usart/src/dynamic/drv_usart_buffer_queue_dma.c C:/microchip/harmony/v0_80b/framework/driver/usart/src/dynamic/drv_usart_byte_model.c C:/microchip/harmony/v0_80b/framework/driver/usart/src/dynamic/drv_usart_read_write.c C:/microchip/harmony/v0_80b/framework/system/common/src/sys_buffer.c C:/microchip/harmony/v0_80b/framework/system/common/src/sys_queue.c C:/microchip/harmony/v0_80b/framework/system/int/src/sys_int_pic32.c C:/microchip/harmony/v0_80b/framework/system/ports/src/sys_ports.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/101256063/system_config.o ${OBJECTDIR}/_ext/101256063/system_init.o ${OBJECTDIR}/_ext/101256063/system_interrupt.o ${OBJECTDIR}/_ext/101256063/system_tasks.o ${OBJECTDIR}/src/main.o ${OBJECTDIR}/app.o ${OBJECTDIR}/_ext/1625524266/drv_usart.o ${OBJECTDIR}/_ext/1625524266/drv_usart_buffer_queue.o ${OBJECTDIR}/_ext/1625524266/drv_usart_buffer_queue_dma.o ${OBJECTDIR}/_ext/1625524266/drv_usart_byte_model.o ${OBJECTDIR}/_ext/1625524266/drv_usart_read_write.o ${OBJECTDIR}/_ext/418214457/sys_buffer.o ${OBJECTDIR}/_ext/418214457/sys_queue.o ${OBJECTDIR}/_ext/711377899/sys_int_pic32.o ${OBJECTDIR}/_ext/1386648370/sys_ports.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/101256063/system_config.o.d ${OBJECTDIR}/_ext/101256063/system_init.o.d ${OBJECTDIR}/_ext/101256063/system_interrupt.o.d ${OBJECTDIR}/_ext/101256063/system_tasks.o.d ${OBJECTDIR}/src/main.o.d ${OBJECTDIR}/app.o.d ${OBJECTDIR}/_ext/1625524266/drv_usart.o.d ${OBJECTDIR}/_ext/1625524266/drv_usart_buffer_queue.o.d ${OBJECTDIR}/_ext/1625524266/drv_usart_buffer_queue_dma.o.d ${OBJECTDIR}/_ext/1625524266/drv_usart_byte_model.o.d ${OBJECTDIR}/_ext/1625524266/drv_usart_read_write.o.d ${OBJECTDIR}/_ext/418214457/sys_buffer.o.d ${OBJECTDIR}/_ext/418214457/sys_queue.o.d ${OBJECTDIR}/_ext/711377899/sys_int_pic32.o.d ${OBJECTDIR}/_ext/1386648370/sys_ports.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/101256063/system_config.o ${OBJECTDIR}/_ext/101256063/system_init.o ${OBJECTDIR}/_ext/101256063/system_interrupt.o ${OBJECTDIR}/_ext/101256063/system_tasks.o ${OBJECTDIR}/src/main.o ${OBJECTDIR}/app.o ${OBJECTDIR}/_ext/1625524266/drv_usart.o ${OBJECTDIR}/_ext/1625524266/drv_usart_buffer_queue.o ${OBJECTDIR}/_ext/1625524266/drv_usart_buffer_queue_dma.o ${OBJECTDIR}/_ext/1625524266/drv_usart_byte_model.o ${OBJECTDIR}/_ext/1625524266/drv_usart_read_write.o ${OBJECTDIR}/_ext/418214457/sys_buffer.o ${OBJECTDIR}/_ext/418214457/sys_queue.o ${OBJECTDIR}/_ext/711377899/sys_int_pic32.o ${OBJECTDIR}/_ext/1386648370/sys_ports.o

# Source Files
SOURCEFILES=C:/Users/agutowski/Documents/MPLABXProjects/cktl-mchp/cktl-mchp.X/system_config.c C:/Users/agutowski/Documents/MPLABXProjects/cktl-mchp/cktl-mchp.X/system_init.c C:/Users/agutowski/Documents/MPLABXProjects/cktl-mchp/cktl-mchp.X/system_interrupt.c C:/Users/agutowski/Documents/MPLABXProjects/cktl-mchp/cktl-mchp.X/system_tasks.c src/main.c app.c C:/microchip/harmony/v0_80b/framework/driver/usart/src/dynamic/drv_usart.c C:/microchip/harmony/v0_80b/framework/driver/usart/src/dynamic/drv_usart_buffer_queue.c C:/microchip/harmony/v0_80b/framework/driver/usart/src/dynamic/drv_usart_buffer_queue_dma.c C:/microchip/harmony/v0_80b/framework/driver/usart/src/dynamic/drv_usart_byte_model.c C:/microchip/harmony/v0_80b/framework/driver/usart/src/dynamic/drv_usart_read_write.c C:/microchip/harmony/v0_80b/framework/system/common/src/sys_buffer.c C:/microchip/harmony/v0_80b/framework/system/common/src/sys_queue.c C:/microchip/harmony/v0_80b/framework/system/int/src/sys_int_pic32.c C:/microchip/harmony/v0_80b/framework/system/ports/src/sys_ports.c


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
	${MAKE} ${MAKE_OPTIONS} -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/cktl-mchp.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MZ2048ECM144
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
${OBJECTDIR}/_ext/101256063/system_config.o: C:/Users/agutowski/Documents/MPLABXProjects/cktl-mchp/cktl-mchp.X/system_config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/101256063 
	@${RM} ${OBJECTDIR}/_ext/101256063/system_config.o.d 
	@${RM} ${OBJECTDIR}/_ext/101256063/system_config.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/101256063/system_config.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"." -I"../../../../../../microchip/harmony/v0_80b/framework/peripheral" -I"../../../../../../microchip/harmony/v0_80b/framework/driver" -I"../../../../../../microchip/harmony/v0_80b/bsp" -I"../../../../../../microchip/harmony/v0_80b/framework" -I"../../../../../../microchip/harmony/v0_80b/framework/system" -I"../../../../../../microchip/harmony/v0_80b" -I"src/sysconfig" -I"src" -MMD -MF "${OBJECTDIR}/_ext/101256063/system_config.o.d" -o ${OBJECTDIR}/_ext/101256063/system_config.o C:/Users/agutowski/Documents/MPLABXProjects/cktl-mchp/cktl-mchp.X/system_config.c   
	
${OBJECTDIR}/_ext/101256063/system_init.o: C:/Users/agutowski/Documents/MPLABXProjects/cktl-mchp/cktl-mchp.X/system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/101256063 
	@${RM} ${OBJECTDIR}/_ext/101256063/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/101256063/system_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/101256063/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"." -I"../../../../../../microchip/harmony/v0_80b/framework/peripheral" -I"../../../../../../microchip/harmony/v0_80b/framework/driver" -I"../../../../../../microchip/harmony/v0_80b/bsp" -I"../../../../../../microchip/harmony/v0_80b/framework" -I"../../../../../../microchip/harmony/v0_80b/framework/system" -I"../../../../../../microchip/harmony/v0_80b" -I"src/sysconfig" -I"src" -MMD -MF "${OBJECTDIR}/_ext/101256063/system_init.o.d" -o ${OBJECTDIR}/_ext/101256063/system_init.o C:/Users/agutowski/Documents/MPLABXProjects/cktl-mchp/cktl-mchp.X/system_init.c   
	
${OBJECTDIR}/_ext/101256063/system_interrupt.o: C:/Users/agutowski/Documents/MPLABXProjects/cktl-mchp/cktl-mchp.X/system_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/101256063 
	@${RM} ${OBJECTDIR}/_ext/101256063/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/101256063/system_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/101256063/system_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"." -I"../../../../../../microchip/harmony/v0_80b/framework/peripheral" -I"../../../../../../microchip/harmony/v0_80b/framework/driver" -I"../../../../../../microchip/harmony/v0_80b/bsp" -I"../../../../../../microchip/harmony/v0_80b/framework" -I"../../../../../../microchip/harmony/v0_80b/framework/system" -I"../../../../../../microchip/harmony/v0_80b" -I"src/sysconfig" -I"src" -MMD -MF "${OBJECTDIR}/_ext/101256063/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/101256063/system_interrupt.o C:/Users/agutowski/Documents/MPLABXProjects/cktl-mchp/cktl-mchp.X/system_interrupt.c   
	
${OBJECTDIR}/_ext/101256063/system_tasks.o: C:/Users/agutowski/Documents/MPLABXProjects/cktl-mchp/cktl-mchp.X/system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/101256063 
	@${RM} ${OBJECTDIR}/_ext/101256063/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/101256063/system_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/101256063/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"." -I"../../../../../../microchip/harmony/v0_80b/framework/peripheral" -I"../../../../../../microchip/harmony/v0_80b/framework/driver" -I"../../../../../../microchip/harmony/v0_80b/bsp" -I"../../../../../../microchip/harmony/v0_80b/framework" -I"../../../../../../microchip/harmony/v0_80b/framework/system" -I"../../../../../../microchip/harmony/v0_80b" -I"src/sysconfig" -I"src" -MMD -MF "${OBJECTDIR}/_ext/101256063/system_tasks.o.d" -o ${OBJECTDIR}/_ext/101256063/system_tasks.o C:/Users/agutowski/Documents/MPLABXProjects/cktl-mchp/cktl-mchp.X/system_tasks.c   
	
${OBJECTDIR}/src/main.o: src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src 
	@${RM} ${OBJECTDIR}/src/main.o.d 
	@${RM} ${OBJECTDIR}/src/main.o 
	@${FIXDEPS} "${OBJECTDIR}/src/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"." -I"../../../../../../microchip/harmony/v0_80b/framework/peripheral" -I"../../../../../../microchip/harmony/v0_80b/framework/driver" -I"../../../../../../microchip/harmony/v0_80b/bsp" -I"../../../../../../microchip/harmony/v0_80b/framework" -I"../../../../../../microchip/harmony/v0_80b/framework/system" -I"../../../../../../microchip/harmony/v0_80b" -I"src/sysconfig" -I"src" -MMD -MF "${OBJECTDIR}/src/main.o.d" -o ${OBJECTDIR}/src/main.o src/main.c   
	
${OBJECTDIR}/app.o: app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/app.o.d 
	@${RM} ${OBJECTDIR}/app.o 
	@${FIXDEPS} "${OBJECTDIR}/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"." -I"../../../../../../microchip/harmony/v0_80b/framework/peripheral" -I"../../../../../../microchip/harmony/v0_80b/framework/driver" -I"../../../../../../microchip/harmony/v0_80b/bsp" -I"../../../../../../microchip/harmony/v0_80b/framework" -I"../../../../../../microchip/harmony/v0_80b/framework/system" -I"../../../../../../microchip/harmony/v0_80b" -I"src/sysconfig" -I"src" -MMD -MF "${OBJECTDIR}/app.o.d" -o ${OBJECTDIR}/app.o app.c   
	
${OBJECTDIR}/_ext/1625524266/drv_usart.o: C:/microchip/harmony/v0_80b/framework/driver/usart/src/dynamic/drv_usart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1625524266 
	@${RM} ${OBJECTDIR}/_ext/1625524266/drv_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1625524266/drv_usart.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1625524266/drv_usart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"." -I"../../../../../../microchip/harmony/v0_80b/framework/peripheral" -I"../../../../../../microchip/harmony/v0_80b/framework/driver" -I"../../../../../../microchip/harmony/v0_80b/bsp" -I"../../../../../../microchip/harmony/v0_80b/framework" -I"../../../../../../microchip/harmony/v0_80b/framework/system" -I"../../../../../../microchip/harmony/v0_80b" -I"src/sysconfig" -I"src" -MMD -MF "${OBJECTDIR}/_ext/1625524266/drv_usart.o.d" -o ${OBJECTDIR}/_ext/1625524266/drv_usart.o C:/microchip/harmony/v0_80b/framework/driver/usart/src/dynamic/drv_usart.c   
	
${OBJECTDIR}/_ext/1625524266/drv_usart_buffer_queue.o: C:/microchip/harmony/v0_80b/framework/driver/usart/src/dynamic/drv_usart_buffer_queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1625524266 
	@${RM} ${OBJECTDIR}/_ext/1625524266/drv_usart_buffer_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1625524266/drv_usart_buffer_queue.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1625524266/drv_usart_buffer_queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"." -I"../../../../../../microchip/harmony/v0_80b/framework/peripheral" -I"../../../../../../microchip/harmony/v0_80b/framework/driver" -I"../../../../../../microchip/harmony/v0_80b/bsp" -I"../../../../../../microchip/harmony/v0_80b/framework" -I"../../../../../../microchip/harmony/v0_80b/framework/system" -I"../../../../../../microchip/harmony/v0_80b" -I"src/sysconfig" -I"src" -MMD -MF "${OBJECTDIR}/_ext/1625524266/drv_usart_buffer_queue.o.d" -o ${OBJECTDIR}/_ext/1625524266/drv_usart_buffer_queue.o C:/microchip/harmony/v0_80b/framework/driver/usart/src/dynamic/drv_usart_buffer_queue.c   
	
${OBJECTDIR}/_ext/1625524266/drv_usart_buffer_queue_dma.o: C:/microchip/harmony/v0_80b/framework/driver/usart/src/dynamic/drv_usart_buffer_queue_dma.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1625524266 
	@${RM} ${OBJECTDIR}/_ext/1625524266/drv_usart_buffer_queue_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/1625524266/drv_usart_buffer_queue_dma.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1625524266/drv_usart_buffer_queue_dma.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"." -I"../../../../../../microchip/harmony/v0_80b/framework/peripheral" -I"../../../../../../microchip/harmony/v0_80b/framework/driver" -I"../../../../../../microchip/harmony/v0_80b/bsp" -I"../../../../../../microchip/harmony/v0_80b/framework" -I"../../../../../../microchip/harmony/v0_80b/framework/system" -I"../../../../../../microchip/harmony/v0_80b" -I"src/sysconfig" -I"src" -MMD -MF "${OBJECTDIR}/_ext/1625524266/drv_usart_buffer_queue_dma.o.d" -o ${OBJECTDIR}/_ext/1625524266/drv_usart_buffer_queue_dma.o C:/microchip/harmony/v0_80b/framework/driver/usart/src/dynamic/drv_usart_buffer_queue_dma.c   
	
${OBJECTDIR}/_ext/1625524266/drv_usart_byte_model.o: C:/microchip/harmony/v0_80b/framework/driver/usart/src/dynamic/drv_usart_byte_model.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1625524266 
	@${RM} ${OBJECTDIR}/_ext/1625524266/drv_usart_byte_model.o.d 
	@${RM} ${OBJECTDIR}/_ext/1625524266/drv_usart_byte_model.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1625524266/drv_usart_byte_model.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"." -I"../../../../../../microchip/harmony/v0_80b/framework/peripheral" -I"../../../../../../microchip/harmony/v0_80b/framework/driver" -I"../../../../../../microchip/harmony/v0_80b/bsp" -I"../../../../../../microchip/harmony/v0_80b/framework" -I"../../../../../../microchip/harmony/v0_80b/framework/system" -I"../../../../../../microchip/harmony/v0_80b" -I"src/sysconfig" -I"src" -MMD -MF "${OBJECTDIR}/_ext/1625524266/drv_usart_byte_model.o.d" -o ${OBJECTDIR}/_ext/1625524266/drv_usart_byte_model.o C:/microchip/harmony/v0_80b/framework/driver/usart/src/dynamic/drv_usart_byte_model.c   
	
${OBJECTDIR}/_ext/1625524266/drv_usart_read_write.o: C:/microchip/harmony/v0_80b/framework/driver/usart/src/dynamic/drv_usart_read_write.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1625524266 
	@${RM} ${OBJECTDIR}/_ext/1625524266/drv_usart_read_write.o.d 
	@${RM} ${OBJECTDIR}/_ext/1625524266/drv_usart_read_write.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1625524266/drv_usart_read_write.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"." -I"../../../../../../microchip/harmony/v0_80b/framework/peripheral" -I"../../../../../../microchip/harmony/v0_80b/framework/driver" -I"../../../../../../microchip/harmony/v0_80b/bsp" -I"../../../../../../microchip/harmony/v0_80b/framework" -I"../../../../../../microchip/harmony/v0_80b/framework/system" -I"../../../../../../microchip/harmony/v0_80b" -I"src/sysconfig" -I"src" -MMD -MF "${OBJECTDIR}/_ext/1625524266/drv_usart_read_write.o.d" -o ${OBJECTDIR}/_ext/1625524266/drv_usart_read_write.o C:/microchip/harmony/v0_80b/framework/driver/usart/src/dynamic/drv_usart_read_write.c   
	
${OBJECTDIR}/_ext/418214457/sys_buffer.o: C:/microchip/harmony/v0_80b/framework/system/common/src/sys_buffer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/418214457 
	@${RM} ${OBJECTDIR}/_ext/418214457/sys_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/418214457/sys_buffer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/418214457/sys_buffer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"." -I"../../../../../../microchip/harmony/v0_80b/framework/peripheral" -I"../../../../../../microchip/harmony/v0_80b/framework/driver" -I"../../../../../../microchip/harmony/v0_80b/bsp" -I"../../../../../../microchip/harmony/v0_80b/framework" -I"../../../../../../microchip/harmony/v0_80b/framework/system" -I"../../../../../../microchip/harmony/v0_80b" -I"src/sysconfig" -I"src" -MMD -MF "${OBJECTDIR}/_ext/418214457/sys_buffer.o.d" -o ${OBJECTDIR}/_ext/418214457/sys_buffer.o C:/microchip/harmony/v0_80b/framework/system/common/src/sys_buffer.c   
	
${OBJECTDIR}/_ext/418214457/sys_queue.o: C:/microchip/harmony/v0_80b/framework/system/common/src/sys_queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/418214457 
	@${RM} ${OBJECTDIR}/_ext/418214457/sys_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/418214457/sys_queue.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/418214457/sys_queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"." -I"../../../../../../microchip/harmony/v0_80b/framework/peripheral" -I"../../../../../../microchip/harmony/v0_80b/framework/driver" -I"../../../../../../microchip/harmony/v0_80b/bsp" -I"../../../../../../microchip/harmony/v0_80b/framework" -I"../../../../../../microchip/harmony/v0_80b/framework/system" -I"../../../../../../microchip/harmony/v0_80b" -I"src/sysconfig" -I"src" -MMD -MF "${OBJECTDIR}/_ext/418214457/sys_queue.o.d" -o ${OBJECTDIR}/_ext/418214457/sys_queue.o C:/microchip/harmony/v0_80b/framework/system/common/src/sys_queue.c   
	
${OBJECTDIR}/_ext/711377899/sys_int_pic32.o: C:/microchip/harmony/v0_80b/framework/system/int/src/sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/711377899 
	@${RM} ${OBJECTDIR}/_ext/711377899/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/711377899/sys_int_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/711377899/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"." -I"../../../../../../microchip/harmony/v0_80b/framework/peripheral" -I"../../../../../../microchip/harmony/v0_80b/framework/driver" -I"../../../../../../microchip/harmony/v0_80b/bsp" -I"../../../../../../microchip/harmony/v0_80b/framework" -I"../../../../../../microchip/harmony/v0_80b/framework/system" -I"../../../../../../microchip/harmony/v0_80b" -I"src/sysconfig" -I"src" -MMD -MF "${OBJECTDIR}/_ext/711377899/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/711377899/sys_int_pic32.o C:/microchip/harmony/v0_80b/framework/system/int/src/sys_int_pic32.c   
	
${OBJECTDIR}/_ext/1386648370/sys_ports.o: C:/microchip/harmony/v0_80b/framework/system/ports/src/sys_ports.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1386648370 
	@${RM} ${OBJECTDIR}/_ext/1386648370/sys_ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/1386648370/sys_ports.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386648370/sys_ports.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"." -I"../../../../../../microchip/harmony/v0_80b/framework/peripheral" -I"../../../../../../microchip/harmony/v0_80b/framework/driver" -I"../../../../../../microchip/harmony/v0_80b/bsp" -I"../../../../../../microchip/harmony/v0_80b/framework" -I"../../../../../../microchip/harmony/v0_80b/framework/system" -I"../../../../../../microchip/harmony/v0_80b" -I"src/sysconfig" -I"src" -MMD -MF "${OBJECTDIR}/_ext/1386648370/sys_ports.o.d" -o ${OBJECTDIR}/_ext/1386648370/sys_ports.o C:/microchip/harmony/v0_80b/framework/system/ports/src/sys_ports.c   
	
else
${OBJECTDIR}/_ext/101256063/system_config.o: C:/Users/agutowski/Documents/MPLABXProjects/cktl-mchp/cktl-mchp.X/system_config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/101256063 
	@${RM} ${OBJECTDIR}/_ext/101256063/system_config.o.d 
	@${RM} ${OBJECTDIR}/_ext/101256063/system_config.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/101256063/system_config.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"." -I"../../../../../../microchip/harmony/v0_80b/framework/peripheral" -I"../../../../../../microchip/harmony/v0_80b/framework/driver" -I"../../../../../../microchip/harmony/v0_80b/bsp" -I"../../../../../../microchip/harmony/v0_80b/framework" -I"../../../../../../microchip/harmony/v0_80b/framework/system" -I"../../../../../../microchip/harmony/v0_80b" -I"src/sysconfig" -I"src" -MMD -MF "${OBJECTDIR}/_ext/101256063/system_config.o.d" -o ${OBJECTDIR}/_ext/101256063/system_config.o C:/Users/agutowski/Documents/MPLABXProjects/cktl-mchp/cktl-mchp.X/system_config.c   
	
${OBJECTDIR}/_ext/101256063/system_init.o: C:/Users/agutowski/Documents/MPLABXProjects/cktl-mchp/cktl-mchp.X/system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/101256063 
	@${RM} ${OBJECTDIR}/_ext/101256063/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/101256063/system_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/101256063/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"." -I"../../../../../../microchip/harmony/v0_80b/framework/peripheral" -I"../../../../../../microchip/harmony/v0_80b/framework/driver" -I"../../../../../../microchip/harmony/v0_80b/bsp" -I"../../../../../../microchip/harmony/v0_80b/framework" -I"../../../../../../microchip/harmony/v0_80b/framework/system" -I"../../../../../../microchip/harmony/v0_80b" -I"src/sysconfig" -I"src" -MMD -MF "${OBJECTDIR}/_ext/101256063/system_init.o.d" -o ${OBJECTDIR}/_ext/101256063/system_init.o C:/Users/agutowski/Documents/MPLABXProjects/cktl-mchp/cktl-mchp.X/system_init.c   
	
${OBJECTDIR}/_ext/101256063/system_interrupt.o: C:/Users/agutowski/Documents/MPLABXProjects/cktl-mchp/cktl-mchp.X/system_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/101256063 
	@${RM} ${OBJECTDIR}/_ext/101256063/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/101256063/system_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/101256063/system_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"." -I"../../../../../../microchip/harmony/v0_80b/framework/peripheral" -I"../../../../../../microchip/harmony/v0_80b/framework/driver" -I"../../../../../../microchip/harmony/v0_80b/bsp" -I"../../../../../../microchip/harmony/v0_80b/framework" -I"../../../../../../microchip/harmony/v0_80b/framework/system" -I"../../../../../../microchip/harmony/v0_80b" -I"src/sysconfig" -I"src" -MMD -MF "${OBJECTDIR}/_ext/101256063/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/101256063/system_interrupt.o C:/Users/agutowski/Documents/MPLABXProjects/cktl-mchp/cktl-mchp.X/system_interrupt.c   
	
${OBJECTDIR}/_ext/101256063/system_tasks.o: C:/Users/agutowski/Documents/MPLABXProjects/cktl-mchp/cktl-mchp.X/system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/101256063 
	@${RM} ${OBJECTDIR}/_ext/101256063/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/101256063/system_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/101256063/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"." -I"../../../../../../microchip/harmony/v0_80b/framework/peripheral" -I"../../../../../../microchip/harmony/v0_80b/framework/driver" -I"../../../../../../microchip/harmony/v0_80b/bsp" -I"../../../../../../microchip/harmony/v0_80b/framework" -I"../../../../../../microchip/harmony/v0_80b/framework/system" -I"../../../../../../microchip/harmony/v0_80b" -I"src/sysconfig" -I"src" -MMD -MF "${OBJECTDIR}/_ext/101256063/system_tasks.o.d" -o ${OBJECTDIR}/_ext/101256063/system_tasks.o C:/Users/agutowski/Documents/MPLABXProjects/cktl-mchp/cktl-mchp.X/system_tasks.c   
	
${OBJECTDIR}/src/main.o: src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src 
	@${RM} ${OBJECTDIR}/src/main.o.d 
	@${RM} ${OBJECTDIR}/src/main.o 
	@${FIXDEPS} "${OBJECTDIR}/src/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"." -I"../../../../../../microchip/harmony/v0_80b/framework/peripheral" -I"../../../../../../microchip/harmony/v0_80b/framework/driver" -I"../../../../../../microchip/harmony/v0_80b/bsp" -I"../../../../../../microchip/harmony/v0_80b/framework" -I"../../../../../../microchip/harmony/v0_80b/framework/system" -I"../../../../../../microchip/harmony/v0_80b" -I"src/sysconfig" -I"src" -MMD -MF "${OBJECTDIR}/src/main.o.d" -o ${OBJECTDIR}/src/main.o src/main.c   
	
${OBJECTDIR}/app.o: app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/app.o.d 
	@${RM} ${OBJECTDIR}/app.o 
	@${FIXDEPS} "${OBJECTDIR}/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"." -I"../../../../../../microchip/harmony/v0_80b/framework/peripheral" -I"../../../../../../microchip/harmony/v0_80b/framework/driver" -I"../../../../../../microchip/harmony/v0_80b/bsp" -I"../../../../../../microchip/harmony/v0_80b/framework" -I"../../../../../../microchip/harmony/v0_80b/framework/system" -I"../../../../../../microchip/harmony/v0_80b" -I"src/sysconfig" -I"src" -MMD -MF "${OBJECTDIR}/app.o.d" -o ${OBJECTDIR}/app.o app.c   
	
${OBJECTDIR}/_ext/1625524266/drv_usart.o: C:/microchip/harmony/v0_80b/framework/driver/usart/src/dynamic/drv_usart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1625524266 
	@${RM} ${OBJECTDIR}/_ext/1625524266/drv_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1625524266/drv_usart.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1625524266/drv_usart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"." -I"../../../../../../microchip/harmony/v0_80b/framework/peripheral" -I"../../../../../../microchip/harmony/v0_80b/framework/driver" -I"../../../../../../microchip/harmony/v0_80b/bsp" -I"../../../../../../microchip/harmony/v0_80b/framework" -I"../../../../../../microchip/harmony/v0_80b/framework/system" -I"../../../../../../microchip/harmony/v0_80b" -I"src/sysconfig" -I"src" -MMD -MF "${OBJECTDIR}/_ext/1625524266/drv_usart.o.d" -o ${OBJECTDIR}/_ext/1625524266/drv_usart.o C:/microchip/harmony/v0_80b/framework/driver/usart/src/dynamic/drv_usart.c   
	
${OBJECTDIR}/_ext/1625524266/drv_usart_buffer_queue.o: C:/microchip/harmony/v0_80b/framework/driver/usart/src/dynamic/drv_usart_buffer_queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1625524266 
	@${RM} ${OBJECTDIR}/_ext/1625524266/drv_usart_buffer_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1625524266/drv_usart_buffer_queue.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1625524266/drv_usart_buffer_queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"." -I"../../../../../../microchip/harmony/v0_80b/framework/peripheral" -I"../../../../../../microchip/harmony/v0_80b/framework/driver" -I"../../../../../../microchip/harmony/v0_80b/bsp" -I"../../../../../../microchip/harmony/v0_80b/framework" -I"../../../../../../microchip/harmony/v0_80b/framework/system" -I"../../../../../../microchip/harmony/v0_80b" -I"src/sysconfig" -I"src" -MMD -MF "${OBJECTDIR}/_ext/1625524266/drv_usart_buffer_queue.o.d" -o ${OBJECTDIR}/_ext/1625524266/drv_usart_buffer_queue.o C:/microchip/harmony/v0_80b/framework/driver/usart/src/dynamic/drv_usart_buffer_queue.c   
	
${OBJECTDIR}/_ext/1625524266/drv_usart_buffer_queue_dma.o: C:/microchip/harmony/v0_80b/framework/driver/usart/src/dynamic/drv_usart_buffer_queue_dma.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1625524266 
	@${RM} ${OBJECTDIR}/_ext/1625524266/drv_usart_buffer_queue_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/1625524266/drv_usart_buffer_queue_dma.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1625524266/drv_usart_buffer_queue_dma.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"." -I"../../../../../../microchip/harmony/v0_80b/framework/peripheral" -I"../../../../../../microchip/harmony/v0_80b/framework/driver" -I"../../../../../../microchip/harmony/v0_80b/bsp" -I"../../../../../../microchip/harmony/v0_80b/framework" -I"../../../../../../microchip/harmony/v0_80b/framework/system" -I"../../../../../../microchip/harmony/v0_80b" -I"src/sysconfig" -I"src" -MMD -MF "${OBJECTDIR}/_ext/1625524266/drv_usart_buffer_queue_dma.o.d" -o ${OBJECTDIR}/_ext/1625524266/drv_usart_buffer_queue_dma.o C:/microchip/harmony/v0_80b/framework/driver/usart/src/dynamic/drv_usart_buffer_queue_dma.c   
	
${OBJECTDIR}/_ext/1625524266/drv_usart_byte_model.o: C:/microchip/harmony/v0_80b/framework/driver/usart/src/dynamic/drv_usart_byte_model.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1625524266 
	@${RM} ${OBJECTDIR}/_ext/1625524266/drv_usart_byte_model.o.d 
	@${RM} ${OBJECTDIR}/_ext/1625524266/drv_usart_byte_model.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1625524266/drv_usart_byte_model.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"." -I"../../../../../../microchip/harmony/v0_80b/framework/peripheral" -I"../../../../../../microchip/harmony/v0_80b/framework/driver" -I"../../../../../../microchip/harmony/v0_80b/bsp" -I"../../../../../../microchip/harmony/v0_80b/framework" -I"../../../../../../microchip/harmony/v0_80b/framework/system" -I"../../../../../../microchip/harmony/v0_80b" -I"src/sysconfig" -I"src" -MMD -MF "${OBJECTDIR}/_ext/1625524266/drv_usart_byte_model.o.d" -o ${OBJECTDIR}/_ext/1625524266/drv_usart_byte_model.o C:/microchip/harmony/v0_80b/framework/driver/usart/src/dynamic/drv_usart_byte_model.c   
	
${OBJECTDIR}/_ext/1625524266/drv_usart_read_write.o: C:/microchip/harmony/v0_80b/framework/driver/usart/src/dynamic/drv_usart_read_write.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1625524266 
	@${RM} ${OBJECTDIR}/_ext/1625524266/drv_usart_read_write.o.d 
	@${RM} ${OBJECTDIR}/_ext/1625524266/drv_usart_read_write.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1625524266/drv_usart_read_write.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"." -I"../../../../../../microchip/harmony/v0_80b/framework/peripheral" -I"../../../../../../microchip/harmony/v0_80b/framework/driver" -I"../../../../../../microchip/harmony/v0_80b/bsp" -I"../../../../../../microchip/harmony/v0_80b/framework" -I"../../../../../../microchip/harmony/v0_80b/framework/system" -I"../../../../../../microchip/harmony/v0_80b" -I"src/sysconfig" -I"src" -MMD -MF "${OBJECTDIR}/_ext/1625524266/drv_usart_read_write.o.d" -o ${OBJECTDIR}/_ext/1625524266/drv_usart_read_write.o C:/microchip/harmony/v0_80b/framework/driver/usart/src/dynamic/drv_usart_read_write.c   
	
${OBJECTDIR}/_ext/418214457/sys_buffer.o: C:/microchip/harmony/v0_80b/framework/system/common/src/sys_buffer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/418214457 
	@${RM} ${OBJECTDIR}/_ext/418214457/sys_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/418214457/sys_buffer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/418214457/sys_buffer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"." -I"../../../../../../microchip/harmony/v0_80b/framework/peripheral" -I"../../../../../../microchip/harmony/v0_80b/framework/driver" -I"../../../../../../microchip/harmony/v0_80b/bsp" -I"../../../../../../microchip/harmony/v0_80b/framework" -I"../../../../../../microchip/harmony/v0_80b/framework/system" -I"../../../../../../microchip/harmony/v0_80b" -I"src/sysconfig" -I"src" -MMD -MF "${OBJECTDIR}/_ext/418214457/sys_buffer.o.d" -o ${OBJECTDIR}/_ext/418214457/sys_buffer.o C:/microchip/harmony/v0_80b/framework/system/common/src/sys_buffer.c   
	
${OBJECTDIR}/_ext/418214457/sys_queue.o: C:/microchip/harmony/v0_80b/framework/system/common/src/sys_queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/418214457 
	@${RM} ${OBJECTDIR}/_ext/418214457/sys_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/418214457/sys_queue.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/418214457/sys_queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"." -I"../../../../../../microchip/harmony/v0_80b/framework/peripheral" -I"../../../../../../microchip/harmony/v0_80b/framework/driver" -I"../../../../../../microchip/harmony/v0_80b/bsp" -I"../../../../../../microchip/harmony/v0_80b/framework" -I"../../../../../../microchip/harmony/v0_80b/framework/system" -I"../../../../../../microchip/harmony/v0_80b" -I"src/sysconfig" -I"src" -MMD -MF "${OBJECTDIR}/_ext/418214457/sys_queue.o.d" -o ${OBJECTDIR}/_ext/418214457/sys_queue.o C:/microchip/harmony/v0_80b/framework/system/common/src/sys_queue.c   
	
${OBJECTDIR}/_ext/711377899/sys_int_pic32.o: C:/microchip/harmony/v0_80b/framework/system/int/src/sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/711377899 
	@${RM} ${OBJECTDIR}/_ext/711377899/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/711377899/sys_int_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/711377899/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"." -I"../../../../../../microchip/harmony/v0_80b/framework/peripheral" -I"../../../../../../microchip/harmony/v0_80b/framework/driver" -I"../../../../../../microchip/harmony/v0_80b/bsp" -I"../../../../../../microchip/harmony/v0_80b/framework" -I"../../../../../../microchip/harmony/v0_80b/framework/system" -I"../../../../../../microchip/harmony/v0_80b" -I"src/sysconfig" -I"src" -MMD -MF "${OBJECTDIR}/_ext/711377899/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/711377899/sys_int_pic32.o C:/microchip/harmony/v0_80b/framework/system/int/src/sys_int_pic32.c   
	
${OBJECTDIR}/_ext/1386648370/sys_ports.o: C:/microchip/harmony/v0_80b/framework/system/ports/src/sys_ports.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1386648370 
	@${RM} ${OBJECTDIR}/_ext/1386648370/sys_ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/1386648370/sys_ports.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386648370/sys_ports.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"." -I"../../../../../../microchip/harmony/v0_80b/framework/peripheral" -I"../../../../../../microchip/harmony/v0_80b/framework/driver" -I"../../../../../../microchip/harmony/v0_80b/bsp" -I"../../../../../../microchip/harmony/v0_80b/framework" -I"../../../../../../microchip/harmony/v0_80b/framework/system" -I"../../../../../../microchip/harmony/v0_80b" -I"src/sysconfig" -I"src" -MMD -MF "${OBJECTDIR}/_ext/1386648370/sys_ports.o.d" -o ${OBJECTDIR}/_ext/1386648370/sys_ports.o C:/microchip/harmony/v0_80b/framework/system/ports/src/sys_ports.c   
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/cktl-mchp.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ..\\..\\..\\..\\..\\..\\microchip\\harmony\\v0_80b\\bin\\framework\\peripheral\\PIC32MZ2048ECM144_peripherals.a  
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/cktl-mchp.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\..\microchip\harmony\v0_80b\bin\framework\peripheral\PIC32MZ2048ECM144_peripherals.a       -mreserve=data@0x0:0x27F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/cktl-mchp.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ..\\..\\..\\..\\..\\..\\microchip\\harmony\\v0_80b\\bin\\framework\\peripheral\\PIC32MZ2048ECM144_peripherals.a 
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/cktl-mchp.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\..\microchip\harmony\v0_80b\bin\framework\peripheral\PIC32MZ2048ECM144_peripherals.a      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/cktl-mchp.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
