/*******************************************************************************
 System Initialization File

  Company:
    Microchip Technology Inc.
  
  File Name:
    system_init.c

  Summary:
    System Initialization.

  Description:
    This file contains source code necessary to initialize the system.
 *******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) 2013 released Microchip Technology Inc.  All rights reserved.

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

/*TODO For Graphics stack
       #include "TouchScreen.h"
*/


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

/*TODO Configuration Tool would add below For Graphics stack
          void CheKseg0CacheOn(void);

		  #define GFX_DEFAULT_FOREGROUND_PAGE	GFX_PAGE9
          #define GFX_DEFAULT_BACKGROUND_PAGE 	GFX_PAGE10
          #define GFX_DEFAULT_DESTINATION_PAGE 	GFX_PAGE4

		  // TouchScreen Init Values
		  #ifdef USE_TOUCHSCREEN_RESISTIVE
		  #define TOUCH_INIT_VALUES   (NULL)
		  #endif
*/




// *****************************************************************************
// *****************************************************************************
// Section: Driver Initialization Data
// *****************************************************************************
// *****************************************************************************
/*
DRV_USART_INIT usartInit = NULL;
SYS_MODULE_OBJ objectHandle;

usartInit.baud                = 115200;
usartInit.mode                = DRV_USART_OPERATION_MODE_ADDRESSED;
usartInit.flags               = DRV_USART_INIT_FLAG_NONE;
usartInit.usartID             = USART_ID_2;
usartInit.brgClock            = 80000000;
usartInit.handshake           = DRV_USART_HANDSHAKE_NONE;
usartInit.lineControl         = DRV_USART_LINE_CONTROL_8NONE1;
usartInit.interruptError      = INT_SOURCE_USART_2_ERROR;
usartInit.interruptReceive    = INT_SOURCE_USART_2_RECEIVE;
usartInit.queueSizeReceive    = 2;
usartInit.queueSizeTransmit   = 3;
usartInit.interruptTransmit   = INT_SOURCE_USART_2_TRANSMIT;
usartInit.moduleInit.value    = SYS_MODULE_POWER_RUN_FULL;
*/

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
    data        - Pointer to the system initialization data structure containing
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

    1.  Initialize minimal board services and processor-specific items
        (enough to use the board to initialize drivers and services)
    2.  Initialize all supported system services
    3.  Initialize all supported modules
        (libraries, drivers, middleware, and application-level modules)
    4.  Initialize the main (static) application, if present.

    The order in which services and modules are initialized and started may be
    important.

    For a static system (a system not using the Harmony's dynamic implementation
    of the initialization and "Tasks" services) this routine is implemented
    for the specific configuration of an application.
 */



void SYS_Initialize ( void* data )
{
   SYS_INT_Initialize();
   /* Initialize the BSP */
   //BSP_Initialize ( );

  
   // TODO perform initialization of the system

	/*TODO For Graphics Stack. In the future releases, the tool would add required initialization API's appropriately.

		// initialize the Flash Memory driver
		SST25Init();

		// initialize the timer that manages the tick counter
		TickInit();

		GFX_OBJ_Initialize();

		// initialize the components for Resistive Touch Screen
		TouchInit();

		GFX_PRIM_Initialize(0);

		DisplayBacklightOn();

		ImageDecoderInit();

		JPEGInit();

		GFX_SchemeInit();
	*/


   /* Initialize the Application */
   APP_Initialize ( );

}


/*******************************************************************************/
/*******************************************************************************
 End of File
*/
