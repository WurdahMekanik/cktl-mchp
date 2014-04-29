/*******************************************************************************
  MPLAB Harmony Application 
  
  Company:
    Microchip Technology Inc.
  
  File Name:
    app.c

  Summary:
    Application Template

  Description:
    This file contains the application logic.
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


// *****************************************************************************
// *****************************************************************************
// Section: Included Files 
// *****************************************************************************
// *****************************************************************************
#include "app.h"
#include "system/system.h"
#include "system/debug/sys_debug.h"

// *****************************************************************************
// *****************************************************************************
// Section: Global Variable Definitions
// *****************************************************************************
// *****************************************************************************


// *****************************************************************************
// *****************************************************************************
// Section: Application Variables
// *****************************************************************************
// *****************************************************************************
char txData[] = "Testing 8-bit SPI!";
char rxData[sizeof(txData)];
static uint32_t txDataSize = sizeof(txData);
static uint32_t dataIndex = 0;

// *****************************************************************************
/* Application Data

  Summary:
    Contains application data

  Description:
    This structure contains application data.
*/

APP_DATA appObject;


// *****************************************************************************
// *****************************************************************************
// Section: Application Local Routines
// *****************************************************************************
// *****************************************************************************


// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Routines
// *****************************************************************************
// *****************************************************************************


// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine
// *****************************************************************************
// *****************************************************************************

/******************************************************************************
  Function:
    void APP_Initialize ( void )

  Remarks:
    See prototype in app.h.
*/

void APP_Initialize ( void )
{
   /* Put the application into its initial state */
   appObject.state = USART_ENABLE;
}

/******************************************************************************
  Function:
    void APP_Tasks ( void )

  Remarks:
    See prototype in app.h.
 */

void APP_Tasks(void)
{
   if (PLIB_USART_TransmitterIsEmpty(USART_ID_2))
   {
      PLIB_PORTS_PinClear( PORTS_ID_0, PORT_CHANNEL_A, PORTS_BIT_POS_10 );
      BSP_SwitchOFFLED(LED_4);
      BSP_SwitchOFFLED(LED_5);
   }
   switch (appObject.state)
   {
      case USART_ENABLE:
         usartIntTriggered = 0;
         BSP_SwitchONLED(LED_1);
         /* Enable the UART module*/
         PLIB_USART_Enable(USART_ID_2);
         appObject.state =  USART_TRANSMIT;
         break;

      case USART_TRANSMIT:
         WriteString("BLAH \n");
         appObject.state = USART_RECEIVE_DONE;
         BSP_SwitchONLED(LED_2);
         break;

      case USART_RECEIVE_DONE:
         if ( BSP_ReadSwitch(SWITCH_S1) )//|| BSP_ReadSwitch(mTouch_1) || BSP_ReadSwitch(mTouch_2) )
         {
            BSP_SwitchOFFLED(LED_2);
            BSP_SwitchOFFLED(LED_3);
            usartIntTriggered = 0;
            appObject.state = USART_TRANSMIT;
         }
         if (usartIntTriggered)
            BSP_SwitchONLED(LED_3);
         break;

      default:
         SYS_DEBUG (SYS_ERROR_FATAL,"ERROR! Invalid state\r\n");
         while (1);
   }
}

/*******************************************************************************
 End of File
 */

