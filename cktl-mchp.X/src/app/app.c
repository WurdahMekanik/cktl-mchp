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
const uint8_t writeData[13] = "Hello World";
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

APP_DATA appObj;


// *****************************************************************************
/* Driver objects.

  Summary:
    Contains driver objects.

  Description:
    This structure contains driver objects returned by the driver init routines
    to the application. These objects are passed to the driver tasks routines.
*/

APP_DRV_OBJECTS appDrvObj;


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
   appObj.state = APP_START;
   usartIntTriggered = false;
}

/******************************************************************************
  Function:
    void APP_Tasks ( void )

  Remarks:
    See prototype in app.h.
 */

// TODO: separate into multiple functions... UART_Tasks, SDCard_Tasks, Pour_Tasks, etc...
void APP_Tasks(void)
{
   switch (appObj.state)
   {
      case APP_START:
         BSP_SwitchONLED(LED_1);
         if(SYS_FS_Mount("/dev/mmcblka1", "/mnt/myDrive", FAT, 0, NULL) != 0)
         {
            /* The disk could not be mounted. Try
             * mounting again until success. */
            appObj.state = APP_START;
         }
         appObj.state =  APP_SET_CURRENT_DRIVE;
         break;
      
      case APP_SET_CURRENT_DRIVE:
         if(SYS_FS_CurrentDriveSet("/mnt/myDrive") == SYS_FS_RES_FAILURE)
         {
            /* Error while setting current drive */
            appObj.state = APP_ERROR;
         }
         else
         {
            /* Open a file for reading. */
            appObj.state = APP_OPEN_FIRST_FILE;
            BSP_SwitchOFFLED(LED_1);
            BSP_SwitchONLED(LED_2);
         }
         break;

      case APP_OPEN_FIRST_FILE:
         appObj.fileHandle = SYS_FS_FileOpen("FILE_TOO_LONG_NAME_EXAMPLE_123.JPG",
                                                (SYS_FS_FILE_OPEN_READ));
         if(appObj.fileHandle == SYS_FS_HANDLE_INVALID)
         {
            /* Could not open the file. Error out*/
            appObj.state = APP_ERROR;
         }
         else
         {
            /* Create a directory. */
            appObj.state = APP_CREATE_DIRECTORY;
            BSP_SwitchOFFLED(LED_2);
            BSP_SwitchONLED(LED_3);
         }
         break;
      
      case APP_CREATE_DIRECTORY:
         if(SYS_FS_DirectoryMake("DirDurr") == SYS_FS_RES_FAILURE)
         {
            /* Error while setting current drive */
            appObj.state = APP_ERROR;
         }
         else
         {
            /* Open a second file for writing. */
            appObj.state = APP_OPEN_SECOND_FILE;
         }
         break;
      
      case APP_OPEN_SECOND_FILE:
         /* Open a second file inside "Dir1" */
         appObj.fileHandle1 = SYS_FS_FileOpen("DirDurr/FILE_TOO_LONG_NAME_EXAMPLE_123_1.JPG",
                                                 (SYS_FS_FILE_OPEN_WRITE));
         if(appObj.fileHandle1 == SYS_FS_HANDLE_INVALID)
         {
            /* Could not open the file. Error out*/
            appObj.state = APP_ERROR;
         }
         else
         {
            /* Read from one file and write to another file */
            appObj.state = APP_READ_WRITE_TO_FILE;
         }
         break;

      case APP_READ_WRITE_TO_FILE:
         if(SYS_FS_FileRead(appObj.fileHandle, (void *)appObj.data, 512) == -1)
         {
            /* There was an error while reading the file.
             * Close the file and error out. */
            SYS_FS_FileClose(appObj.fileHandle);
            appObj.state = APP_ERROR;
         }
         else
         {
            /* If read was success, try writing to the new file */
            if(SYS_FS_FileWrite(appObj.fileHandle1, (const void *)appObj.data, 512) == -1)
            {
               /* Write was not successful. Close the file and error out.*/
               SYS_FS_FileClose(appObj.fileHandle1);
               appObj.state = APP_ERROR;
            }
            else if(SYS_FS_FileEOF(appObj.fileHandle) == 1)    /* Test for end of file */
            {
               /* Continue the read and write process, untill the end of file is reached */
               appObj.state = APP_CLOSE_FILE;
            }
         }
         break;

      case APP_CLOSE_FILE:
         /* Close both files */
         SYS_FS_FileClose(appObj.fileHandle);
         SYS_FS_FileClose(appObj.fileHandle1);
         /* The test was successful. Lets idle. */
         appObj.state = APP_IDLE;
         break;
         
      case APP_UNMOUNT_DISK:
         if(SYS_FS_Unmount("/mnt/myDrive") != 0)
         {
            /* The disk could not be un mounted. Try
             * un-mounting again untill success. */
            appObj.state = APP_UNMOUNT_DISK;
         }
         else
         {
            /* Un-mnount was successful. Mount the disk again */
            appObj.state = APP_IDLE;
         }
         break;

      case APP_IDLE:
         BSP_SwitchONLED(LED_4);
         BSP_SwitchONLED(LED_5);
         break;

      case APP_ERROR:
         BSP_SwitchONLED(LED_1);
         BSP_SwitchONLED(LED_2);
         break;

      default:
         SYS_DEBUG (SYS_ERROR_FATAL,"ERROR! Invalid state\r\n");
         while (1);
   }
}

/*******************************************************************************
 End of File
 */

