/* 
 * File:   app.h
 * Author: Alex Gutowski
 *
 * Created on April 4, 2014, 3:30 PM
 */

/*******************************************************************************
  Application Header

  File Name:
    app.h

  Summary:
    ADC data logger demo application definitions (advanced driver-based version)

  Description:
    This file contains the ADC data logger demo application definitions for the
    driver-based version that uses some advanced driver features.
 *******************************************************************************/
#ifndef _APP_HEADER_H
#define _APP_HEADER_H

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************
#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <xc.h>
#include <sys/attribs.h>

#include "system_config.h"
#include "system/system.h"
#include "peripheral/peripheral.h"
#include "system/devcon/sys_devcon.h"
#include "bsp_config.h"
#include "uart.h"

// *****************************************************************************
// *****************************************************************************
// Section: Application Configuration
// *****************************************************************************
// *****************************************************************************

/* Selected core timer delay to blink LED every second,
   core timer runs at SYSCLK/2 */
#define APP_LED_BLINK_DELAY_1S     (SYS_CLK_FREQUENCY / 4)
#define BAUDRATE_100KHZ 100000
#define slaveAddress 0x1A


// *****************************************************************************
// *****************************************************************************
// Section: Type Definitions
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
/* Application states

  Summary:
    Application states enumeration

  Description:
    This enumeration defines the valid application states.  These states
    determine the behaviour of the application at various times.
*/

typedef enum
{
    /* USART Enable State */
    USART_ENABLE,

    /* USART Transmit Status */
    USART_TRANSMIT,

    /* USART Receive State */
    USART_RECEIVE_DONE

} APP_STATES;


// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    Application strings and buffers are be defined outside this structure.
 */

typedef struct
{
    SYS_MODULE_OBJ sysDevconObject;

    /* Current application state */
    APP_STATES  state;

} APP_DATA;



// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Routines
// *****************************************************************************
// *****************************************************************************
/* These routines are called by drivers when certain events occur.
*/


// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void APP_Initialize ( void )

  Summary:
     ADC data logger application initialization routine

  Description:
    This routine initializes ADC data logger application.  This function opens
    the necessary drivers, initializes the timer and registers the application
    callback with the USART driver.

  Precondition:
    All other system initialization routines should be called before calling
    this routine (in "SYS_Initialize").

  Parameters:
    None.

  Returns:
    None.

  Example:
    <code>
    APP_Initialize();
    </code>

  Remarks:
    This routine must be called from the SYS_Initialize function.
*/
void APP_Initialize ( void );

/*******************************************************************************
  Function:
    void APP_Tasks ( void )

  Summary:
    ADC Data Logger application tasks function

  Description:
    This routine is the ADC Data Logger application's tasks function.  It
    defines the application's state machine and core logic.

  Precondition:
    The system and application initialization ("SYS_Initialize") should be
    called before calling this.

  Parameters:
    None.

  Returns:
    None.

  Example:
    <code>
    APP_Tasks();
    </code>

  Remarks:
    This routine must be called from SYS_Tasks() routine.
*/
void APP_Tasks ( void );


// *****************************************************************************
// *****************************************************************************
// Section: extern declarations
// *****************************************************************************
// *****************************************************************************
extern APP_DATA appObject;
extern bool usartIntTriggered;

#endif /* _APP_HEADER_H */

/*******************************************************************************
 End of File
*/