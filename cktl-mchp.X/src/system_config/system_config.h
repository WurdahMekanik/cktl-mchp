/*******************************************************************************
  MPLAB Harmony Demo Configuration Header

  Company:
    Microchip Technology Inc.

  File Name:
    system_config.h

  Summary:
    Top-level configuration header file.

  Description:
    This file is the top-level configuration header for the Harmony Demo
    application for the Explorer-16 board with PIC32MX795F512L.
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

#ifndef _SYS_CONFIG_H
#define _SYS_CONFIG_H


// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************
/*  This section Includes other configuration headers necessary to completely
    define this configuration.
*/


// *****************************************************************************
// *****************************************************************************
// Section: Application Configuration
// *****************************************************************************
// *****************************************************************************



// *****************************************************************************
// *****************************************************************************
// Section: System Clock Service Configuration
// *****************************************************************************
// *****************************************************************************
#define SYS_CLK_FREQUENCY                 (200000000ul)
#define APP_LED                           LED_3
#define SPI_ID                            SPI_ID_2
#define UART_BAUD                         115200


/* Primary oscillator input frequency, the frequency from the crystal */
#define SYS_CLK_CONFIG_PRIMARY_XTAL       24000000UL
/* System PLL input divisor */
#define SYS_CLK_CONFIG_SYSPLL_INP_DIVISOR 3

#define SYS_CLK_CONFIGBIT_USBPLL_ENABLE   true

#define SYS_CLK_CONFIG_FREQ_ERROR_LIMIT   10
/* Secondary oscillator input frequency, the frequency from the crystal */
#define SYS_CLK_CONFIG_SECONDARY_XTAL     32768UL

#define SYS_CLOCK_USB_CLOCK               48000000

// *****************************************************************************
// *****************************************************************************
// Section: System Timer Service Configuration
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
// *****************************************************************************
// Section: SPI Driver Configuration
// *****************************************************************************
// *****************************************************************************

#define DRV_SPI_INSTANCES_NUMBER             1
#define DRV_SPI_CLIENTS_NUMBER               1
#define DRV_SPI_INTERRUPT_MODE               true
#define DRV_SPI_PORTS_REMAP_USAGE            false
#define DRV_SPI_BUFFER_SIZE                  64
#define DRV_SPI_FRAME_SYNC_PULSE_DIRECTION   SPI_FRAME_PULSE_DIRECTION_INPUT
#define DRV_SPI_FRAME_SYNC_PULSE_POLARITY    SPI_FRAME_PULSE_POLARITY_ACTIVE_HIGH
#define DRV_SPI_FRAME_SYNC_PULSE_EDGE        SPI_FRAME_PULSE_EDGE_COINCIDES_FIRST_BIT_CLOCK
#define DRV_SPI_PERIPHERAL_ID                SPI_ID_2

// *****************************************************************************
// *****************************************************************************
// Section: SDCARD Driver Configuration
// *****************************************************************************
// *****************************************************************************
#define DRV_SDCARD_INSTANCES_NUMBER          1
#define DRV_SDCARD_CLIENTS_NUMBER            1
#define DRV_SDCARD_INDEX_MAX                 1
#define DRV_SDCARD_INDEX                     DRV_SDCARD_INDEX_0
#define DRV_SDCARD_QUEUE_POOL_SIZE           10
/* Defines if the card detect logic as designed in hardware */
#define DRV_SDCARD_CD_LOGIC_ACTIVE_HIGH

// *****************************************************************************
// *****************************************************************************
// Section: Media Manager Configuration
// *****************************************************************************
// *****************************************************************************

/* Max Number of media used in the demo */
#define SYS_FS_MEDIA_NUMBER               1
/* Max Number of volumes to be allocated */
#define SYS_FS_VOLUME_NUMBER              1
/* Media Sector Size information */
#define SYS_FS_MEDIA_MAX_BLOCK_SIZE       512

// *****************************************************************************
// *****************************************************************************
// Section: SYS FS Configuration
// *****************************************************************************
// *****************************************************************************

/* Max Number of file system to be supported for the demo */
#define SYS_FS_MAX_FILE_SYSTEM_TYPE       1
/* Max Number of files that will be opened at a time */
#define SYS_FS_MAX_FILES                  2

// *****************************************************************************
// *****************************************************************************
// Section: OS Abstraction Layer Configuration
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
// *****************************************************************************
// Section: LED Configuration for success and failure
// *****************************************************************************
// *****************************************************************************

#define BSP_SwitchONSuccessLED()          BSP_SwitchONLED(LED_GRN)
#define BSP_SwitchONFailureLED()          BSP_SwitchONLED(LED_RED)


/* This is a temporary workaround for an issue with the peripheral library "Exists"
   functions that causes superfluous warnings.  It "nulls" out the definition of
   The PLIB function attribute that causes the warning.  Once that issue has been
   resolved, this definition should be removed. */

#ifndef _PLIB_UNSUPPORTED
   #define _PLIB_UNSUPPORTED
#endif

//BSP related stuff
#define PIC_SK
#define MEB_2_BOARD
#define USE_MEBII
#include "bsp_config.h"
//#include "bsp/gfx/meb/meb2/bsp_config.h"
//#include "bsp/gfx/meb/meb2/display/wqvga/bsp_config.h"

#endif // _SYS_CONFIG_H
/*******************************************************************************
 End of File
*/

