/****************************************************************************
 *  Copyright (C) 2008-2012 by Michael Fischer.
 *
 *  All rights reserved.
 *
 *  Redistribution and use in source and binary forms, with or without
 *  modification, are permitted provided that the following conditions
 *  are met:
 *
 *  1. Redistributions of source code must retain the above copyright
 *     notice, this list of conditions and the following disclaimer.
 *  2. Redistributions in binary form must reproduce the above copyright
 *     notice, this list of conditions and the following disclaimer in the
 *     documentation and/or other materials provided with the distribution.
 *  3. Neither the name of the author nor the names of its contributors may
 *     be used to endorse or promote products derived from this software
 *     without specific prior written permission.
 *
 *  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 *  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 *  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 *  FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL
 *  THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 *  INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 *  BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
 *  OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
 *  AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 *  OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF
 *  THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 *  SUCH DAMAGE.
 *
 ****************************************************************************
 *  History:
 *
 *  07.11.2008  mifi  First Version, based on FatFs example.
 *  11.02.2012  mifi  Tested with EIR.
 *  23.08.2012  mifi  Tested with an Altera DE1.
 ****************************************************************************/

/*=========================================================================*/
/*  DEFINE: All Structures and Common Constants                            */
/*=========================================================================*/

#include "includes.h"

extern FATFS Fatfs[_VOLUMES]; /* File system object for each logical drive */

/***************************************************************************/
/*  main                                                                   */
/***************************************************************************/
int main(void) {

	FATFS *fs; /* Pointer to file system object */
	unsigned char counter = 0;
	unsigned short counter2 = 0;
	//Sd_card init
	IoInit();
	if ((uint16_t) disk_initialize(0) == 0) {
		puts("sd card was initialized");
		f_mount(0, &Fatfs[0]);

		//list directory
		ls_dir("");

	} else {
		puts("sd card was NOT initialized");
	}

	usleep(5000000);

	//Init UART
	InitUart(38400);

	while (1) { // programa principal

		//IOWR(LED_GREEN_BASE, 0, counter);
		IOWR(LED_RED_BASE, 0, counter2);

		printf("LED_RED[9:0]= x%03x\n", counter2);
		//counter++;
		counter2++;
		sendChar_uart('h');
		if (!IsEmptyUart()) {
			while (!IsEmptyUart()) {
				counter=GetChar_uart();
				IOWR(LED_GREEN_BASE, 0, counter);
				printf("LED_GREEN[7:0]= x%02x\n", counter);
			}
		}
		usleep(100000);

	}

	return (0);
}

/*** EOF ***/

