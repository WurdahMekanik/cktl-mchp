/* 
 * File:   main.c
 * Author: Alex Gutowski
 *
 * Created on April 4, 2014, 3:19 PM
 */


// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************
#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>

#include "app.h"

// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************
MAIN_RETURN main ( void )
{
   /*Call the SYS Init routine. App init routine gets called from this*/
   SYS_Initialize(NULL);

   while( true )
   {
      /*Invoke SYS tasks. APP tasks gets called from this*/
      SYS_Tasks();
   }

   // Should not come here during normal operation
   SYS_ASSERT(false, "about to exit main");

   return MAIN_RETURN_CODE(MAIN_RETURN_SUCCESS);
}

