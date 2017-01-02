/*
 * includes.h
 *
 *  Created on: Jan 1, 2017
 *      Author: Holguer
 */

#ifndef INCLUDES_H_
#define INCLUDES_H_


/*=========================================================================*/
/*  Includes                                                               */
/*=========================================================================*/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>

#include <system.h>
#include <sys/alt_alarm.h>
#include <io.h>

#include "./sd_card/fatfs.h"
#include "./sd_card/diskio.h"

#include "./sd_card/ff.h"
#include "./sd_card/monitor.h"

#include "./uart/Uart.h"
#include "system.h"
#include "./sd_card/sd_card.h"
/*=========================================================================*/
/*  DEFINE: Macros                                                         */
/*=========================================================================*/

#define PSTR(_a)  _a
#define __MAIN_C__




#endif /* INCLUDES_H_ */
