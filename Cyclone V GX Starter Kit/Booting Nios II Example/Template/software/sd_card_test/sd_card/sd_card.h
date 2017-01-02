/*
 * sd_card.h
 *
 *  Created on: Jan 1, 2017
 *      Author: Holguer
 */

#ifndef SD_CARD_H_
#define SD_CARD_H_

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>

#include <sys/alt_alarm.h>
#include <io.h>

#include "fatfs.h"
#include "diskio.h"

#include "ff.h"
#include "monitor.h"

#include "system.h"

void ls_dir(char * path);
void put_rc(FRESULT rc);
void IoInit(void);
alt_u32 TimerFunction(void *context);

#endif /* SD_CARD_H_ */
