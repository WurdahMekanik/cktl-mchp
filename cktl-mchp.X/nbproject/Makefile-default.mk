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
SOURCEFILES_QUOTED_IF_SPACED=src/app/app.c src/app/main.c src/app/uart.c C:/microchip/harmony/v0_80b/framework/system/int/src/sys_int_pic32.c src/system_config/system_config.c src/system_config/system_init.c src/system_config/system_interrupt.c src/system_config/system_tasks.c src/system_config/bsp_sys_init.c C:/microchip/harmony/v0_80b/framework/system/devcon/src/sys_devcon.c C:/microchip/harmony/v0_80b/framework/system/devcon/src/sys_devcon_pic32mz.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/src/app/app.o ${OBJECTDIR}/src/app/main.o ${OBJECTDIR}/src/app/uart.o ${OBJECTDIR}/_ext/711377899/sys_int_pic32.o ${OBJECTDIR}/src/system_config/system_config.o ${OBJECTDIR}/src/system_config/system_init.o ${OBJECTDIR}/src/system_config/system_interrupt.o ${OBJECTDIR}/src/system_config/system_tasks.o ${OBJECTDIR}/src/system_config/bsp_sys_init.o ${OBJECTDIR}/_ext/663301989/sys_devcon.o ${OBJECTDIR}/_ext/663301989/sys_devcon_pic32mz.o
POSSIBLE_DEPFILES=${OBJECTDIR}/src/app/app.o.d ${OBJECTDIR}/src/app/main.o.d ${OBJECTDIR}/src/app/uart.o.d ${OBJECTDIR}/_ext/711377899/sys_int_pic32.o.d ${OBJECTDIR}/src/system_config/system_config.o.d ${OBJECTDIR}/src/system_config/system_init.o.d ${OBJECTDIR}/src/system_config/system_interrupt.o.d ${OBJECTDIR}/src/system_config/system_tasks.o.d ${OBJECTDIR}/src/system_config/bsp_sys_init.o.d ${OBJECTDIR}/_ext/663301989/sys_devcon.o.d ${OBJECTDIR}/_ext/663301989/sys_devcon_pic32mz.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/src/app/app.o ${OBJECTDIR}/src/app/main.o ${OBJECTDIR}/src/app/uart.o ${OBJECTDIR}/_ext/711377899/sys_int_pic32.o ${OBJECTDIR}/src/system_config/system_config.o ${OBJECTDIR}/src/system_config/system_init.o ${OBJECTDIR}/src/system_config/system_interrupt.o ${OBJECTDIR}/src/system_config/system_tasks.o ${OBJECTDIR}/src/system_config/bsp_sys_init.o ${OBJECTDIR}/_ext/663301989/sys_devcon.o ${OBJECTDIR}/_ext/663301989/sys_devcon_pic32mz.o

# Source Files
SOURCEFILES=src/app/app.c src/app/main.c src/app/uart.c C:/microchip/harmony/v0_80b/framework/system/int/src/sys_int_pic32.c src/system_config/system_config.c src/system_config/system_init.c src/system_config/system_interrupt.c src/system_config/system_tasks.c src/system_config/bsp_sys_init.c C:/microchip/harmony/v0_80b/framework/system/devcon/src/sys_devcon.c C:/microchip/harmony/v0_80b/framework/system/devcon/src/sys_devcon_pic32mz.c


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
${OBJECTDIR}/src/app/app.o: src/app/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/app 
	@${RM} ${OBJECTDIR}/src/app/app.o.d 
	@${RM} ${OBJECTDIR}/src/app/app.o 
	@${FIXDEPS} "${OBJECTDIR}/src/app/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -O1 -D_OPTIMIZE_ -I"." -I"../../../../../../microchip/harmony/v0_80b/framework/peripheral" -I"../../../../../../microchip/harmony/v0_80b/framework/driver" -I"../../../../../../microchip/harmony/v0_80b/bsp" -I"../../../../../../microchip/harmony/v0_80b/framework" -I"../../../../../../microchip/harmony/v0_80b/framework/system" -I"../../../../../../microchip/harmony/v0_80b" -I"src" -I"src/app" -I"src/system_config" -MMD -MF "${OBJECTDIR}/src/app/app.o.d" -o ${OBJECTDIR}/src/app/app.o src/app/app.c   
	
${OBJECTDIR}/src/app/main.o: src/app/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/app 
	@${RM} ${OBJECTDIR}/src/app/main.o.d 
	@${RM} ${OBJECTDIR}/src/app/main.o 
	@${FIXDEPS} "${OBJECTDIR}/src/app/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -O1 -D_OPTIMIZE_ -I"." -I"../../../../../../microchip/harmony/v0_80b/framework/peripheral" -I"../../../../../../microchip/harmony/v0_80b/framework/driver" -I"../../../../../../microchip/harmony/v0_80b/bsp" -I"../../../../../../microchip/harmony/v0_80b/framework" -I"../../../../../../microchip/harmony/v0_80b/framework/system" -I"../../../../../../microchip/harmony/v0_80b" -I"src" -I"src/app" -I"src/system_config" -MMD -MF "${OBJECTDIR}/src/app/main.o.d" -o ${OBJECTDIR}/src/app/main.o src/app/main.c   
	
${OBJECTDIR}/src/app/uart.o: src/app/uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/app 
	@${RM} ${OBJECTDIR}/src/app/uart.o.d 
	@${RM} ${OBJECTDIR}/src/app/uart.o 
	@${FIXDEPS} "${OBJECTDIR}/src/app/uart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -O1 -D_OPTIMIZE_ -I"." -I"../../../../../../microchip/harmony/v0_80b/framework/peripheral" -I"../../../../../../microchip/harmony/v0_80b/framework/driver" -I"../../../../../../microchip/harmony/v0_80b/bsp" -I"../../../../../../microchip/harmony/v0_80b/framework" -I"../../../../../../microchip/harmony/v0_80b/framework/system" -I"../../../../../../microchip/harmony/v0_80b" -I"src" -I"src/app" -I"src/system_config" -MMD -MF "${OBJECTDIR}/src/app/uart.o.d" -o ${OBJECTDIR}/src/app/uart.o src/app/uart.c   
	
${OBJECTDIR}/_ext/711377899/sys_int_pic32.o: C:/microchip/harmony/v0_80b/framework/system/int/src/sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/711377899 
	@${RM} ${OBJECTDIR}/_ext/711377899/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/711377899/sys_int_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/711377899/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -O1 -D_OPTIMIZE_ -I"." -I"../../../../../../microchip/harmony/v0_80b/framework/peripheral" -I"../../../../../../microchip/harmony/v0_80b/framework/driver" -I"../../../../../../microchip/harmony/v0_80b/bsp" -I"../../../../../../microchip/harmony/v0_80b/framework" -I"../../../../../../microchip/harmony/v0_80b/framework/system" -I"../../../../../../microchip/harmony/v0_80b" -I"src" -I"src/app" -I"src/system_config" -MMD -MF "${OBJECTDIR}/_ext/711377899/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/711377899/sys_int_pic32.o C:/microchip/harmony/v0_80b/framework/system/int/src/sys_int_pic32.c   
	
${OBJECTDIR}/src/system_config/system_config.o: src/system_config/system_config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/system_config 
	@${RM} ${OBJECTDIR}/src/system_config/system_config.o.d 
	@${RM} ${OBJECTDIR}/src/system_config/system_config.o 
	@${FIXDEPS} "${OBJECTDIR}/src/system_config/system_config.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -O1 -D_OPTIMIZE_ -I"." -I"../../../../../../microchip/harmony/v0_80b/framework/peripheral" -I"../../../../../../microchip/harmony/v0_80b/framework/driver" -I"../../../../../../microchip/harmony/v0_80b/bsp" -I"../../../../../../microchip/harmony/v0_80b/framework" -I"../../../../../../microchip/harmony/v0_80b/framework/system" -I"../../../../../../microchip/harmony/v0_80b" -I"src" -I"src/app" -I"src/system_config" -MMD -MF "${OBJECTDIR}/src/system_config/system_config.o.d" -o ${OBJECTDIR}/src/system_config/system_config.o src/system_config/system_config.c   
	
${OBJECTDIR}/src/system_config/system_init.o: src/system_config/system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/system_config 
	@${RM} ${OBJECTDIR}/src/system_config/system_init.o.d 
	@${RM} ${OBJECTDIR}/src/system_config/system_init.o 
	@${FIXDEPS} "${OBJECTDIR}/src/system_config/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -O1 -D_OPTIMIZE_ -I"." -I"../../../../../../microchip/harmony/v0_80b/framework/peripheral" -I"../../../../../../microchip/harmony/v0_80b/framework/driver" -I"../../../../../../microchip/harmony/v0_80b/bsp" -I"../../../../../../microchip/harmony/v0_80b/framework" -I"../../../../../../microchip/harmony/v0_80b/framework/system" -I"../../../../../../microchip/harmony/v0_80b" -I"src" -I"src/app" -I"src/system_config" -MMD -MF "${OBJECTDIR}/src/system_config/system_init.o.d" -o ${OBJECTDIR}/src/system_config/system_init.o src/system_config/system_init.c   
	
${OBJECTDIR}/src/system_config/system_interrupt.o: src/system_config/system_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/system_config 
	@${RM} ${OBJECTDIR}/src/system_config/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/src/system_config/system_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/src/system_config/system_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -O1 -D_OPTIMIZE_ -I"." -I"../../../../../../microchip/harmony/v0_80b/framework/peripheral" -I"../../../../../../microchip/harmony/v0_80b/framework/driver" -I"../../../../../../microchip/harmony/v0_80b/bsp" -I"../../../../../../microchip/harmony/v0_80b/framework" -I"../../../../../../microchip/harmony/v0_80b/framework/system" -I"../../../../../../microchip/harmony/v0_80b" -I"src" -I"src/app" -I"src/system_config" -MMD -MF "${OBJECTDIR}/src/system_config/system_interrupt.o.d" -o ${OBJECTDIR}/src/system_config/system_interrupt.o src/system_config/system_interrupt.c   
	
${OBJECTDIR}/src/system_config/system_tasks.o: src/system_config/system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/system_config 
	@${RM} ${OBJECTDIR}/src/system_config/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/src/system_config/system_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/src/system_config/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -O1 -D_OPTIMIZE_ -I"." -I"../../../../../../microchip/harmony/v0_80b/framework/peripheral" -I"../../../../../../microchip/harmony/v0_80b/framework/driver" -I"../../../../../../microchip/harmony/v0_80b/bsp" -I"../../../../../../microchip/harmony/v0_80b/framework" -I"../../../../../../microchip/harmony/v0_80b/framework/system" -I"../../../../../../microchip/harmony/v0_80b" -I"src" -I"src/app" -I"src/system_config" -MMD -MF "${OBJECTDIR}/src/system_config/system_tasks.o.d" -o ${OBJECTDIR}/src/system_config/system_tasks.o src/system_config/system_tasks.c   
	
${OBJECTDIR}/src/system_config/bsp_sys_init.o: src/system_config/bsp_sys_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/system_config 
	@${RM} ${OBJECTDIR}/src/system_config/bsp_sys_init.o.d 
	@${RM} ${OBJECTDIR}/src/system_config/bsp_sys_init.o 
	@${FIXDEPS} "${OBJECTDIR}/src/system_config/bsp_sys_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -O1 -D_OPTIMIZE_ -I"." -I"../../../../../../microchip/harmony/v0_80b/framework/peripheral" -I"../../../../../../microchip/harmony/v0_80b/framework/driver" -I"../../../../../../microchip/harmony/v0_80b/bsp" -I"../../../../../../microchip/harmony/v0_80b/framework" -I"../../../../../../microchip/harmony/v0_80b/framework/system" -I"../../../../../../microchip/harmony/v0_80b" -I"src" -I"src/app" -I"src/system_config" -MMD -MF "${OBJECTDIR}/src/system_config/bsp_sys_init.o.d" -o ${OBJECTDIR}/src/system_config/bsp_sys_init.o src/system_config/bsp_sys_init.c   
	
${OBJECTDIR}/_ext/663301989/sys_devcon.o: C:/microchip/harmony/v0_80b/framework/system/devcon/src/sys_devcon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/663301989 
	@${RM} ${OBJECTDIR}/_ext/663301989/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/663301989/sys_devcon.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/663301989/sys_devcon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -O1 -D_OPTIMIZE_ -I"." -I"../../../../../../microchip/harmony/v0_80b/framework/peripheral" -I"../../../../../../microchip/harmony/v0_80b/framework/driver" -I"../../../../../../microchip/harmony/v0_80b/bsp" -I"../../../../../../microchip/harmony/v0_80b/framework" -I"../../../../../../microchip/harmony/v0_80b/framework/system" -I"../../../../../../microchip/harmony/v0_80b" -I"src" -I"src/app" -I"src/system_config" -MMD -MF "${OBJECTDIR}/_ext/663301989/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/663301989/sys_devcon.o C:/microchip/harmony/v0_80b/framework/system/devcon/src/sys_devcon.c   
	
${OBJECTDIR}/_ext/663301989/sys_devcon_pic32mz.o: C:/microchip/harmony/v0_80b/framework/system/devcon/src/sys_devcon_pic32mz.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/663301989 
	@${RM} ${OBJECTDIR}/_ext/663301989/sys_devcon_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/663301989/sys_devcon_pic32mz.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/663301989/sys_devcon_pic32mz.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -O1 -D_OPTIMIZE_ -I"." -I"../../../../../../microchip/harmony/v0_80b/framework/peripheral" -I"../../../../../../microchip/harmony/v0_80b/framework/driver" -I"../../../../../../microchip/harmony/v0_80b/bsp" -I"../../../../../../microchip/harmony/v0_80b/framework" -I"../../../../../../microchip/harmony/v0_80b/framework/system" -I"../../../../../../microchip/harmony/v0_80b" -I"src" -I"src/app" -I"src/system_config" -MMD -MF "${OBJECTDIR}/_ext/663301989/sys_devcon_pic32mz.o.d" -o ${OBJECTDIR}/_ext/663301989/sys_devcon_pic32mz.o C:/microchip/harmony/v0_80b/framework/system/devcon/src/sys_devcon_pic32mz.c   
	
else
${OBJECTDIR}/src/app/app.o: src/app/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/app 
	@${RM} ${OBJECTDIR}/src/app/app.o.d 
	@${RM} ${OBJECTDIR}/src/app/app.o 
	@${FIXDEPS} "${OBJECTDIR}/src/app/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -O1 -D_OPTIMIZE_ -I"." -I"../../../../../../microchip/harmony/v0_80b/framework/peripheral" -I"../../../../../../microchip/harmony/v0_80b/framework/driver" -I"../../../../../../microchip/harmony/v0_80b/bsp" -I"../../../../../../microchip/harmony/v0_80b/framework" -I"../../../../../../microchip/harmony/v0_80b/framework/system" -I"../../../../../../microchip/harmony/v0_80b" -I"src" -I"src/app" -I"src/system_config" -MMD -MF "${OBJECTDIR}/src/app/app.o.d" -o ${OBJECTDIR}/src/app/app.o src/app/app.c   
	
${OBJECTDIR}/src/app/main.o: src/app/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/app 
	@${RM} ${OBJECTDIR}/src/app/main.o.d 
	@${RM} ${OBJECTDIR}/src/app/main.o 
	@${FIXDEPS} "${OBJECTDIR}/src/app/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -O1 -D_OPTIMIZE_ -I"." -I"../../../../../../microchip/harmony/v0_80b/framework/peripheral" -I"../../../../../../microchip/harmony/v0_80b/framework/driver" -I"../../../../../../microchip/harmony/v0_80b/bsp" -I"../../../../../../microchip/harmony/v0_80b/framework" -I"../../../../../../microchip/harmony/v0_80b/framework/system" -I"../../../../../../microchip/harmony/v0_80b" -I"src" -I"src/app" -I"src/system_config" -MMD -MF "${OBJECTDIR}/src/app/main.o.d" -o ${OBJECTDIR}/src/app/main.o src/app/main.c   
	
${OBJECTDIR}/src/app/uart.o: src/app/uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/app 
	@${RM} ${OBJECTDIR}/src/app/uart.o.d 
	@${RM} ${OBJECTDIR}/src/app/uart.o 
	@${FIXDEPS} "${OBJECTDIR}/src/app/uart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -O1 -D_OPTIMIZE_ -I"." -I"../../../../../../microchip/harmony/v0_80b/framework/peripheral" -I"../../../../../../microchip/harmony/v0_80b/framework/driver" -I"../../../../../../microchip/harmony/v0_80b/bsp" -I"../../../../../../microchip/harmony/v0_80b/framework" -I"../../../../../../microchip/harmony/v0_80b/framework/system" -I"../../../../../../microchip/harmony/v0_80b" -I"src" -I"src/app" -I"src/system_config" -MMD -MF "${OBJECTDIR}/src/app/uart.o.d" -o ${OBJECTDIR}/src/app/uart.o src/app/uart.c   
	
${OBJECTDIR}/_ext/711377899/sys_int_pic32.o: C:/microchip/harmony/v0_80b/framework/system/int/src/sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/711377899 
	@${RM} ${OBJECTDIR}/_ext/711377899/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/711377899/sys_int_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/711377899/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -O1 -D_OPTIMIZE_ -I"." -I"../../../../../../microchip/harmony/v0_80b/framework/peripheral" -I"../../../../../../microchip/harmony/v0_80b/framework/driver" -I"../../../../../../microchip/harmony/v0_80b/bsp" -I"../../../../../../microchip/harmony/v0_80b/framework" -I"../../../../../../microchip/harmony/v0_80b/framework/system" -I"../../../../../../microchip/harmony/v0_80b" -I"src" -I"src/app" -I"src/system_config" -MMD -MF "${OBJECTDIR}/_ext/711377899/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/711377899/sys_int_pic32.o C:/microchip/harmony/v0_80b/framework/system/int/src/sys_int_pic32.c   
	
${OBJECTDIR}/src/system_config/system_config.o: src/system_config/system_config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/system_config 
	@${RM} ${OBJECTDIR}/src/system_config/system_config.o.d 
	@${RM} ${OBJECTDIR}/src/system_config/system_config.o 
	@${FIXDEPS} "${OBJECTDIR}/src/system_config/system_config.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -O1 -D_OPTIMIZE_ -I"." -I"../../../../../../microchip/harmony/v0_80b/framework/peripheral" -I"../../../../../../microchip/harmony/v0_80b/framework/driver" -I"../../../../../../microchip/harmony/v0_80b/bsp" -I"../../../../../../microchip/harmony/v0_80b/framework" -I"../../../../../../microchip/harmony/v0_80b/framework/system" -I"../../../../../../microchip/harmony/v0_80b" -I"src" -I"src/app" -I"src/system_config" -MMD -MF "${OBJECTDIR}/src/system_config/system_config.o.d" -o ${OBJECTDIR}/src/system_config/system_config.o src/system_config/system_config.c   
	
${OBJECTDIR}/src/system_config/system_init.o: src/system_config/system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/system_config 
	@${RM} ${OBJECTDIR}/src/system_config/system_init.o.d 
	@${RM} ${OBJECTDIR}/src/system_config/system_init.o 
	@${FIXDEPS} "${OBJECTDIR}/src/system_config/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -O1 -D_OPTIMIZE_ -I"." -I"../../../../../../microchip/harmony/v0_80b/framework/peripheral" -I"../../../../../../microchip/harmony/v0_80b/framework/driver" -I"../../../../../../microchip/harmony/v0_80b/bsp" -I"../../../../../../microchip/harmony/v0_80b/framework" -I"../../../../../../microchip/harmony/v0_80b/framework/system" -I"../../../../../../microchip/harmony/v0_80b" -I"src" -I"src/app" -I"src/system_config" -MMD -MF "${OBJECTDIR}/src/system_config/system_init.o.d" -o ${OBJECTDIR}/src/system_config/system_init.o src/system_config/system_init.c   
	
${OBJECTDIR}/src/system_config/system_interrupt.o: src/system_config/system_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/system_config 
	@${RM} ${OBJECTDIR}/src/system_config/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/src/system_config/system_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/src/system_config/system_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -O1 -D_OPTIMIZE_ -I"." -I"../../../../../../microchip/harmony/v0_80b/framework/peripheral" -I"../../../../../../microchip/harmony/v0_80b/framework/driver" -I"../../../../../../microchip/harmony/v0_80b/bsp" -I"../../../../../../microchip/harmony/v0_80b/framework" -I"../../../../../../microchip/harmony/v0_80b/framework/system" -I"../../../../../../microchip/harmony/v0_80b" -I"src" -I"src/app" -I"src/system_config" -MMD -MF "${OBJECTDIR}/src/system_config/system_interrupt.o.d" -o ${OBJECTDIR}/src/system_config/system_interrupt.o src/system_config/system_interrupt.c   
	
${OBJECTDIR}/src/system_config/system_tasks.o: src/system_config/system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/system_config 
	@${RM} ${OBJECTDIR}/src/system_config/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/src/system_config/system_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/src/system_config/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -O1 -D_OPTIMIZE_ -I"." -I"../../../../../../microchip/harmony/v0_80b/framework/peripheral" -I"../../../../../../microchip/harmony/v0_80b/framework/driver" -I"../../../../../../microchip/harmony/v0_80b/bsp" -I"../../../../../../microchip/harmony/v0_80b/framework" -I"../../../../../../microchip/harmony/v0_80b/framework/system" -I"../../../../../../microchip/harmony/v0_80b" -I"src" -I"src/app" -I"src/system_config" -MMD -MF "${OBJECTDIR}/src/system_config/system_tasks.o.d" -o ${OBJECTDIR}/src/system_config/system_tasks.o src/system_config/system_tasks.c   
	
${OBJECTDIR}/src/system_config/bsp_sys_init.o: src/system_config/bsp_sys_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/system_config 
	@${RM} ${OBJECTDIR}/src/system_config/bsp_sys_init.o.d 
	@${RM} ${OBJECTDIR}/src/system_config/bsp_sys_init.o 
	@${FIXDEPS} "${OBJECTDIR}/src/system_config/bsp_sys_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -O1 -D_OPTIMIZE_ -I"." -I"../../../../../../microchip/harmony/v0_80b/framework/peripheral" -I"../../../../../../microchip/harmony/v0_80b/framework/driver" -I"../../../../../../microchip/harmony/v0_80b/bsp" -I"../../../../../../microchip/harmony/v0_80b/framework" -I"../../../../../../microchip/harmony/v0_80b/framework/system" -I"../../../../../../microchip/harmony/v0_80b" -I"src" -I"src/app" -I"src/system_config" -MMD -MF "${OBJECTDIR}/src/system_config/bsp_sys_init.o.d" -o ${OBJECTDIR}/src/system_config/bsp_sys_init.o src/system_config/bsp_sys_init.c   
	
${OBJECTDIR}/_ext/663301989/sys_devcon.o: C:/microchip/harmony/v0_80b/framework/system/devcon/src/sys_devcon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/663301989 
	@${RM} ${OBJECTDIR}/_ext/663301989/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/663301989/sys_devcon.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/663301989/sys_devcon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -O1 -D_OPTIMIZE_ -I"." -I"../../../../../../microchip/harmony/v0_80b/framework/peripheral" -I"../../../../../../microchip/harmony/v0_80b/framework/driver" -I"../../../../../../microchip/harmony/v0_80b/bsp" -I"../../../../../../microchip/harmony/v0_80b/framework" -I"../../../../../../microchip/harmony/v0_80b/framework/system" -I"../../../../../../microchip/harmony/v0_80b" -I"src" -I"src/app" -I"src/system_config" -MMD -MF "${OBJECTDIR}/_ext/663301989/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/663301989/sys_devcon.o C:/microchip/harmony/v0_80b/framework/system/devcon/src/sys_devcon.c   
	
${OBJECTDIR}/_ext/663301989/sys_devcon_pic32mz.o: C:/microchip/harmony/v0_80b/framework/system/devcon/src/sys_devcon_pic32mz.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/663301989 
	@${RM} ${OBJECTDIR}/_ext/663301989/sys_devcon_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/663301989/sys_devcon_pic32mz.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/663301989/sys_devcon_pic32mz.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -O1 -D_OPTIMIZE_ -I"." -I"../../../../../../microchip/harmony/v0_80b/framework/peripheral" -I"../../../../../../microchip/harmony/v0_80b/framework/driver" -I"../../../../../../microchip/harmony/v0_80b/bsp" -I"../../../../../../microchip/harmony/v0_80b/framework" -I"../../../../../../microchip/harmony/v0_80b/framework/system" -I"../../../../../../microchip/harmony/v0_80b" -I"src" -I"src/app" -I"src/system_config" -MMD -MF "${OBJECTDIR}/_ext/663301989/sys_devcon_pic32mz.o.d" -o ${OBJECTDIR}/_ext/663301989/sys_devcon_pic32mz.o C:/microchip/harmony/v0_80b/framework/system/devcon/src/sys_devcon_pic32mz.c   
	
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
