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
// Section: Device Configuration
// *****************************************************************************
// *****************************************************************************
// DEVCFG3
#pragma config FUSBIDIO    = OFF             // USB USBID Selection
#pragma config IOL1WAY     = ON              // Peripheral Pin Select Configuration
#pragma config PMDL1WAY    = ON              // Peripheral Module Disable Configuration
#pragma config PGL1WAY     = ON              // Permission Group Lock One Way Configuration
#pragma config FETHIO      = ON              // Ethernet I/O Pin Select
#pragma config FMIIEN      = ON              // Ethernet RMII/MII Enable
//#pragma config USERID = No Setting

// DEVCFG2
#pragma config UPLLEN      = OFF             // USB PLL Enable
#pragma config UPLLFSEL    = FREQ_24MHZ      // USB PLL Input Frequency Selection
#pragma config FPLLODIV    = DIV_2           // System PLL Output Divider
#pragma config FPLLMULT    = MUL_50          // System PLL Multiplier
#pragma config FPLLICLK    = PLL_FRC         // System PLL Input Clock Selection
#pragma config FPLLRNG     = RANGE_5_10_MHZ  // System PLL Input Range
#pragma config FPLLIDIV    = DIV_1           // System PLL Input Divider

// DEVCFG1
#pragma config FDMTEN      = OFF             // Deadman Timer Enable
//#pragma config DMTCNT = No Setting         // Deadman Timer Count Select
#pragma config FWDTWINSZ   = WINSZ_25        // Watchdog Timer Window Size (%)
#pragma config FWDTEN      = OFF             // Watchdog Timer Enable
#pragma config WINDIS      = NORMAL          // Watchdog Timer Window Mode
#pragma config WDTSPGM     = STOP            // Watchdog Timer Stop During Flash Programming
#pragma config WDTPS       = PS1048576       // Watchdog Timer Postscaler
#pragma config FCKSM       = CSECME          // Clock Switching & Monitor Selection
#pragma config OSCIOFNC    = ON              // CLKO Output Enable
#pragma config POSCMOD     = EC              // Primary Oscillator Configuration
#pragma config IESO        = OFF             // Internal/External Switch Over
#pragma config FSOSCEN     = OFF             // Secondary Oscillator Enable
#pragma config DMTINTV     = WIN_127_128     // DMT Count Window Interval
#pragma config FNOSC       = SPLL            // Oscillator Selection Bits

// DEVCFG0
#pragma config EJTAGBEN    = NORMAL          // EJTAG boot Enable
#pragma config DBGPER      = PG_ALL          // Debug Mode CPU Access Permissions
#pragma config FSLEEP      = OFF             // Flash Sleep Mode
#pragma config FECCCON     = OFF_UNLOCKED    // Dynamic Flash ECC Config
#pragma config BOOTISA     = MIPS32          // Boot ISA Selection
#pragma config TRCEN       = OFF             // Trace Enable
#pragma config ICESEL      = ICS_PGx2        // In-Circuit Debugger Comm Channel Selection
#pragma config JTAGEN      = OFF             // JTAG Enable
#pragma config DEBUG       = ON              // Background Debugger Enable

// DEVCP0
#pragma config CP = OFF                   // Code Protect Enable


// *****************************************************************************
// *****************************************************************************
// Section: System Initialization Data
// *****************************************************************************
// *****************************************************************************
SYS_DEVCON_INIT devconInit =
{
    .moduleInit = {0},
};

// *****************************************************************************
// *****************************************************************************
// Section: System Data
// *****************************************************************************
// *****************************************************************************

/* Structure to hold the sample application's system data. */

// *****************************************************************************
// *****************************************************************************
// Section: System Initialization
// *****************************************************************************
// *****************************************************************************
  
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
   /* Set up cache and wait states for maximum performance. */
   appObject.sysDevconObject = SYS_DEVCON_Initialize(SYS_DEVCON_INDEX_0,
                                                     (SYS_MODULE_INIT*)&devconInit);

   SYS_DEVCON_PerformanceConfig(SYS_CLK_FREQUENCY);

   BSP_Initialize();

   /* PPS setup */
   PLIB_PORTS_RemapOutput(PORTS_ID_0,OTPUT_FUNC_U2TX,OUTPUT_PIN_RPB14);
   PLIB_PORTS_RemapInput(PORTS_ID_0,INPUT_FUNC_U2RX,INPUT_PIN_RPG6);
   ANSELGbits.ANSG6 = 0;
   ANSELBbits.ANSB14 = 0;

   /* Set PBCLK2 to 200MHz (feeds into USART peripheral) */
   PLIB_OSC_PBClockDivisorSet(OSC_ID_0,OSC_PERIPHERAL_BUS_2,(OSC_PB_CLOCK_DIV_TYPE)0x01);

   /* Configure the baud rate, 8-N-1 data mode, enable TX/RX pins, generate interrupts when
      the receiver buffer has data */
   PLIB_USART_BaudRateSet(USART_ID_2, SYS_CLK_FREQUENCY/2, UART_BAUD);
   PLIB_USART_LineControlModeSelect(USART_ID_2, USART_8N1);
   PLIB_USART_TransmitterEnable(USART_ID_2);
   PLIB_USART_ReceiverEnable(USART_ID_2);
   PLIB_USART_ReceiverInterruptModeSelect(USART_ID_2, USART_RECEIVE_FIFO_ONE_CHAR);

   /* Enable the UART2 receiver interrupt source, set its priority level to 2,
      set its subpriority level to 0 */
   PLIB_INT_SourceEnable(INT_ID_0, INT_SOURCE_USART_2_RECEIVE);
   PLIB_INT_VectorPrioritySet(INT_ID_0, INT_VECTOR_UART2_RX, INT_PRIORITY_LEVEL2);
   PLIB_INT_VectorSubPrioritySet(INT_ID_0, INT_VECTOR_UART2_RX, INT_SUBPRIORITY_LEVEL0);

   /* Enable multi-vectored interrupts, enable the generation of interrupts to the CPU */
   PLIB_INT_MultiVectorSelect(INT_ID_0);
   PLIB_INT_Enable(INT_ID_0);

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
