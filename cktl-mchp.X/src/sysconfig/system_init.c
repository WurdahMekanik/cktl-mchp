/*******************************************************************************
 System Initialization File

  File Name:
    system_init.c

  Summary:
    System Initialization.

  Description:
    This file contains source code necessary to initialize the system.
 *******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) 2011-2013 released Microchip Technology Inc.  All rights reserved.

Microchip licenses to you the right to use, modify, copy and distribute
Software only when embedded on a Microchip microcontroller or digital signal
controller that is integrated into your product or third party product
(pursuant to the sublicense terms in the accompanying license agreement).

You should refer to the license agreement accompanying this Software for
additional information regarding your rights and obligations.

SOFTWARE AND DOCUMENTATION ARE PROVIDED AS IS WITHOUT WARRANTY OF ANY KIND,
EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF
MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE.
IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR OBLIGATED UNDER
CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION, BREACH OF WARRANTY, OR
OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES
INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE OR
CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF
SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY CLAIMS BY THIRD PARTIES
(INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.
*******************************************************************************/
// DOM-IGNORE-END
#include "app.h"

// TODO: Initializations
void TouchMessageCallback(SYS_MSG_OBJECT *pMsg);

// ****************************************************************************
// Section: Configuration Bits
// ****************************************************************************
// DEVCFG3
// TODO: figure out what may be needed here
// a bunch of unused as of yet stuff

// DEVCFG2
#pragma config UPLLEN       = OFF
#pragma config UPLLFSEL     = FREQ_24MHZ
#pragma config FPLLODIV     = DIV_2
#pragma config FPLLMULT     = MUL_50
#pragma config FPLLICLK     = PLL_FRC
#pragma config FPLLRNG      = RANGE_5_10_MHZ
#pragma config FPLLIDIV     = DIV_1

// DEVCFG1
#pragma config FDMTEN       = OFF       // Toggles DeadMan Timer0
//DMTCNT = No Setting
#pragma config FWDTWINSZ    = WINSZ_25
#pragma config FWDTEN       = OFF
#pragma config WINDIS       = NORMAL
#pragma config WDTSPGM      = STOP
#pragma config WDTPS        = PS1048576
#pragma config FCKSM        = CSECMD
#pragma config OSCIOFNC     = ON
#pragma config POSCMOD      = OFF
#pragma config IESO         = OFF
#pragma config FSOSCEN      = OFF
#pragma config DMTINTV      = WIN_127_128
#pragma config FNOSC        = SPLL

// DEVCFG0
#pragma config EJTAGBEN     = NORMAL
#pragma config DBGPER       = ALLOW_PG2
#pragma config FSLEEP       = OFF
#pragma config FECCCON      = OFF_UNLOCKED
#pragma config BOOTISA      = MIPS32
#pragma config TRCEN        = ON
#pragma config ICESEL       = ICS_PGx2
//#pragma config JTAGEN       = ON
#pragma config DEBUG        = ON

// DEVCP0
#pragma config CP           = OFF       // Toggles copy protection on flash memory

void CheKseg0CacheOn(void);

/////////////////////////////////////////////////////////////////////////////
// TouchScreen Init Values
/////////////////////////////////////////////////////////////////////////////
#ifdef USE_TOUCHSCREEN_RESISTIVE
#define TOUCH_INIT_VALUES   (NULL)
#endif

// *****************************************************************************
// *****************************************************************************
// Section: Driver Initialization Data
// *****************************************************************************
// *****************************************************************************

// ****************************************************************************
// ****************************************************************************
// Section: System Initialization
// ****************************************************************************
// ****************************************************************************
/*******************************************************************************
  Function:
    void SYS_Initialize ( SYS_INIT_DATA *data )

  Summary:
    Initializes the board, services, drivers, application and other modules

  Description:
    This routine initializes the board, services, drivers, application and other
    modules as configured at build time.  In a bare-metal environment (where no
    OS is supported), this routine should be called almost immediately after
    entering the "main" routine.

  Precondition:
    The C-language run-time environment and stack must have been initialized.

  Parameters:
    data        - Pointer to the system initialzation data structure containing
                  pointers to the board, system service, and driver
                  initialization routines
  Returns:
    None.

  Example:
    <code>
    SYS_INT_Initialize(NULL);
    </code>

  Remarks:
    Basic System Initialization Sequence:

    1.  Initilize minimal board services and processor-specific items
        (enough to use the board to initialize drivers and services)
    2.  Initialize all supported system services
    3.  Initialize all supported modules
        (libraries, drivers, middleware, and application-level modules)
    4.  Initialize the main (static) application, if present.

    The order in which services and modules are initialized and started may be
    important.

    For a static system (a system not using the ISP's dynamic implementation
    of the initialization and "Tasks" services) this routine is implemented
    for the specific configuration of an application.
 */
SYS_MODULE_OBJ      object, oSpiObject;
SYS_MSG_INSTANCE    iSysMsg = SYS_MSG_0;
SYS_OBJ_HANDLE      hSysMsg, hMsgType, hMailbox;

void SYS_Initialize ( void* data )
{
    /* Initializethe interrupt system  */
    SYS_INT_Initialize();

    /* Initialize the global interrupts */
    SYS_INT_Enable();

    SYS_MSG_MESSAGING_OBJECT    oSysMsg;
    SYS_MSG_INIT                sSysMsgInit;
    uint16_t                    nQSizes[] = SYS_MSG_BUFFER_SIZES;

    sSysMsgInit.nMaxMsgsDelivered   = SYS_MSG_MAX_MSGS_DELIVERED;
    sSysMsgInit.nMessagePriorities  = SYS_MSG_MAX_PRIORITY + 1;
    sSysMsgInit.nQSizes             = nQSizes;

    hSysMsg = SYS_MSG_Initialize(iSysMsg, (SYS_OBJ_HANDLE)&sSysMsgInit);
    oSysMsg = *(SYS_MSG_MESSAGING_OBJECT *)hSysMsg;

    hMsgType = SYS_MSG_TypeCreate(iSysMsg, TYPE_TOUCHSCREEN, 0);
    hMailbox = SYS_MSB_MailboxOpen(iSysMsg, (SYS_MSG_RECEIVE_CALLBACK)&TouchMessageCallback);

    SYS_MSG_MailboxMsgAdd(hMailbox, hMsgType);

    // initialize the timer that manages the tick counter
    TickInit();

    ////////////////////////////////////////////////////////////////////////////
    //                  DRIVER SPECIFIC INITIALIZATION DATA
    ////////////////////////////////////////////////////////////////////////////
    GFX_DRV_lcc_Initialize(0);  //Initialize the Graphics Driver

    while (handle != 0)
    {
        handle = GFX_DRV_lcc_Open(0);
    }

    // initialize primitive GFX structures
    GFX_Initialize();

    // initialize the components for Touch Screen
    TouchInit((void *)0, (void *)0, (void *)0, NULL);

    ImageDecoderInit();
    JPEGInit();                  // Initialize JPEG

    /* Initialize the Application */
    APP_Initialize();
}

void TouchMessageCallback(SYS_MSG_OBJECT *pMsg)
{
    static GFX_GOL_MESSAGE gMsg;

    gMsg.type = pMsg->nMessageTypeID;
    gMsg.uiEvent = pMsg->param0;
    gMsg.param1 = pMsg->param1;
    gMsg.param2 = pMsg->param2;

    GFX_GOL_ObjectMessage(&gMsg);
}

/*******************************************************************************/
/*******************************************************************************
 End of File
*/
