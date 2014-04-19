/*******************************************************************************
 System Interrupt Source File

  Company:
    Microchip Technology Inc.
  
  File Name:
    system_interrupt.c

  Summary:
    Raw ISR definitions.

  Description:
    This file contains a definitions of the raw ISRs required to support the
    interrupt sub-system.
 *******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) 2011-2012 released Microchip Technology Inc.  All rights reserved.

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

#include <xc.h>
#include <sys/attribs.h>
#include "app.h"

// *****************************************************************************
// *****************************************************************************
// Section: Interrupt Service Routines (ipl1=LOW...ipl7=HIGH)
// *****************************************************************************
// *****************************************************************************
void __ISR (_UART2_RX_VECTOR, ipl7) _InterruptHandler_RS485(void)
{
   /* TODO: Fill in RS485 interrupt handler */
}

/*
void __ISR (_CORE_TIMER_VECTOR,ipl3) _InterruptHandle_CoreTimer(void)
{
    SYS_INT_SourceDisable(INT_SOURCE_TIMER_CORE);
    SYS_INT_SourceStatusClear(INT_SOURCE_TIMER_CORE);

    appData.ignoreSwitchPress = false;
    if(BSP_ReadSwitch(SWITCH_1) == BSP_SWITCH_STATE_PRESSED)
    {
        // This means this is a valid switch press
        appData.isSwitchPressed = true;
    }
}
*/


/*******************************************************************************
 End of File
 */