/*******************************************************************************
 Board initialization file for PIC32 Multimedia Expansion Board (MEB) II

 Company:
    Microchip Technology Inc.

 File Name:
    bsp_sys_init.c

 Summary:
    Board initialization file for PIC32 Multimedia Expansion Board (MEB) II

 Description:
    This file contains the initialization of board specific I/O.
 *******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) 2014 released Microchip Technology Inc.  All rights reserved.

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

#include "bsp_config.h"
#include "peripheral/ebi/plib_ebi.h"

// *****************************************************************************
// *****************************************************************************
// *****************************************************************************
// Section: Interface Routines
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function: void BSP_MEBII_Initialize(void)

  Summary:
    Performs the neccassary actions to initialize a board

  Description:
    This routine performs the neccassary actions to initialize a board

  Remarks:
    This routine performs direct register accesses, when the PORTS PLIB and
    system service become available, these register accesses will be be replaced
    by the PLIB\system service interfaces.

*/

void BSP_MEBII_Initialize(void)
{
    TRISJbits.TRISJ7 = 0; //Camera
    LATJbits.LATJ7 = 1;   //Camera

    TRISJbits.TRISJ12 = 0; //UB
    LATJbits.LATJ12 = 0;   //UB

    TRISJbits.TRISJ10 = 0; //LB
    LATJbits.LATJ10 = 0;   //LB
  
    PLIB_EBI_BaseAddressSet(EBI_ID_0, 0, 0x20000000);

    PLIB_EBI_MemoryCharacteristicsSet(EBI_ID_0, 0 , SRAM, MEMORY_SIZE_8MB, CS_TIMING_0);

    PLIB_EBI_MemoryTimingConfigSet(EBI_ID_0, 0, 0, 0, 0, 0, 0, 1);

    PLIB_EBI_StaticMemoryWidthRegisterSet(EBI_ID_0, 0,  MEMORY_WIDTH_16BIT);
    PLIB_EBI_StaticMemoryWidthRegisterSet(EBI_ID_0, 1,  MEMORY_WIDTH_16BIT);
    PLIB_EBI_StaticMemoryWidthRegisterSet(EBI_ID_0, 2,  MEMORY_WIDTH_16BIT);
    PLIB_EBI_FlashPowerDownModeSet (EBI_ID_0, true);
    
    ADDR19_TRIS = 0;
    ADDR19 = 0;
}

/*******************************************************************************
 End of File
*/
