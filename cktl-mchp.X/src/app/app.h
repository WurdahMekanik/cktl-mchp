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
#include <string.h>
#include <xc.h>
#include <sys/attribs.h>

#include "system_config.h"
#include "system/system.h"
#include "peripheral/peripheral.h"
#include "system/int/sys_int.h"
#include "system/ports/sys_ports.h"
#include "system/devcon/sys_devcon.h"
#include "system/fs/fat_fs/src/file_system/ff.h"
#include "system/fs/sys_fs.h"
#include "driver/sdcard/drv_sdcard.h"
#include "driver/spi/drv_spi.h"
#include "uart.h"

// *****************************************************************************
// *****************************************************************************
// Section: Application Configuration
// *****************************************************************************
// *****************************************************************************


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
   APP_START,

   /* USART Transmit Status */
   USART_TRANSMIT,

	/* The app mounts the disk */
   APP_MOUNT_DISK,

	/* The app unmounts the disk */
   APP_UNMOUNT_DISK,

   /* Set the current drive */
   APP_SET_CURRENT_DRIVE,

	/* The app opens the file to read */
   APP_OPEN_FIRST_FILE,

   /* Create directory */
   APP_CREATE_DIRECTORY,

   /* The app opens the file to write */
   APP_OPEN_SECOND_FILE,

   /* The app reads from a file and writes to another file */
   APP_READ_WRITE_TO_FILE,

   /* The app closes the file*/
   APP_CLOSE_FILE,

   /* The app closes the file and idles */
   APP_IDLE,

   /* An app error has occurred */
   APP_ERROR

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
   /* Current application state */
   APP_STATES     state;
    
   /* SYS_FS File handle for 1st file */
   SYS_FS_HANDLE  fileHandle;

   /* SYS_FS File handle for 2nd file */
   SYS_FS_HANDLE  fileHandle1;
   
   /* Application data buffer */
   uint8_t        data[1024];

   uint32_t       nBytesWritten;

   uint32_t       nBytesRead;

} APP_DATA;


// *****************************************************************************
/* Driver objects.

  Summary:
    Holds driver objects.

  Description:
    This structure contains driver objects returned by the driver init routines
    to the application. These objects are passed to the driver tasks routines.

  Remarks:
    None.
*/

typedef struct
{
    SYS_MODULE_OBJ              sysDevconObj;

    /* SPI Driver Object  */
    SYS_MODULE_OBJ              drvSPIObj;

    /* SDCARD Media Driver Object */
    SYS_MODULE_OBJ              drvSDCARDObj;

} APP_DRV_OBJECTS;


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
extern APP_DATA appObj;
extern APP_DRV_OBJECTS appDrvObj;

extern bool usartIntTriggered;
extern const uint8_t writeData[];

#endif /* _APP_HEADER_H */

/*******************************************************************************
 End of File
*/