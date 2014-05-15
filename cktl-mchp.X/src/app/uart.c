/*******************************************************************************
  MPLAB Harmony UART Functions

  Company:
    Microchip Technology Inc.

  File Name:
    uart.c

  Summary:
    MPLAB Harmony simple_uart function source file

  Description:
    Contains basic functions to write characters and strings to the UART module.

  Tested with:
    -PIC32MX795F512L on the Explorer-16 Demo Board
    -PIC32MZ Embedded Connectivity (EC) Starter Kit and MEB II
    -XC32 compiler, MPLAB X IDE
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

SOFTWARE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND,
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
#include <xc.h>
#include "app.h"
#include "uart.h"
#include "peripheral/usart/plib_usart.h"

/*******************************************************************************
/*
  Function:
    void WriteString (const char *string)

  Summary:
    Writes a string to the console
*/
void WriteString(const char *string)
{
   // Enable RS-485 Board
   PLIB_PORTS_PinSet( PORTS_ID_0, PORT_CHANNEL_A, PORTS_BIT_POS_10 );
   
   while (*string != '\0')
   {
      /* Send character */
      PLIB_USART_TransmitterByteSend(USART_ID_2, *string);

      /* Increment to address of next character */
      string++;

      /* Wait for the transmit shift register to empty (transfer completed) */
      while (!PLIB_USART_TransmitterIsEmpty(USART_ID_2));
   }
   
   // Disable RS-485 Board
   PLIB_PORTS_PinClear( PORTS_ID_0, PORT_CHANNEL_A, PORTS_BIT_POS_10 );
}


/*******************************************************************************
/*
  Function:
    void PutCharacter (const char character)

  Summary:
    Sends a character to the console
*/
void PutCharacter(const char character)
{
   // Enable RS-485 Board
   PLIB_PORTS_PinSet( PORTS_ID_0, PORT_CHANNEL_A, PORTS_BIT_POS_10 );

   /* Send character */
   PLIB_USART_TransmitterByteSend(USART_ID_2, character);

   /* Wait for the transmit shift register to empty (transfer completed) */
   while (!PLIB_USART_TransmitterIsEmpty(USART_ID_2));
   
   // Disable RS-485 Board
   PLIB_PORTS_PinClear( PORTS_ID_0, PORT_CHANNEL_A, PORTS_BIT_POS_10 );
}


/******************************************************************************
  Function:
    void UART_Tasks ( void )

  Remarks:
    See prototype in app.h.
 */
void UART_Tasks(void)
{
   if (PLIB_USART_TransmitterIsEmpty(USART_ID_2))
   {
      // TODO: something?
   }

   WriteString("BLAH \n");
}

/*******************************************************************************
 End of File
*/

