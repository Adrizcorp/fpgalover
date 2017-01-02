/*
 * sd_card.c
 *
 *  Created on: Jan 1, 2017
 *      Author: Holguer
 */

#include "sd_card.h"

/*=========================================================================*/
/*  DEFINE: Definition of all local Data                                   */
/*=========================================================================*/
static alt_alarm alarm2;
static unsigned long Systick = 0;
static volatile unsigned short Timer; /* 1000Hz increment timer */

FATFS Fatfs[_VOLUMES]; /* File system object for each logical drive */
FIL File1, File2; /* File objects */
DIR Dir; /* Directory object */
uint8_t Buff[8192] __attribute__ ((aligned(4))); /* Working buffer */
FILINFO Finfo;
#if _USE_LFN
char Lfname[512];
#endif

/***************************************************************************/
/*  TimerFunction                                                          */
/*                                                                         */
/*  This timer function will provide a 10ms timer and                      */
/*  call ffs_DiskIOTimerproc.                                              */
/*                                                                         */
/*  In    : none                                                           */
/*  Out   : none                                                           */
/*  Return: none                                                           */
/***************************************************************************/
alt_u32 TimerFunction(void *context) {
	static unsigned short wTimer10ms = 0;

	(void) context;

	Systick++;
	wTimer10ms++;
	Timer++; /* Performance counter for this module */

	if (wTimer10ms == 10) {
		wTimer10ms = 0;
		ffs_DiskIOTimerproc(); /* Drive timer procedure of low level disk I/O module */
	}

	return (1);
} /* TimerFunction */

/***************************************************************************/
/*  IoInit                                                                 */
/*                                                                         */
/*  Init the hardware like GPIO, UART, and more...                         */
/*                                                                         */
/*  In    : none                                                           */
/*  Out   : none                                                           */
/*  Return: none                                                           */
/***************************************************************************/
void IoInit(void) {

	/* Init diskio interface */
	ffs_DiskIOInit();
	/* Init timer system */
	alt_alarm_start(&alarm2, 1, &TimerFunction, NULL);

} /* IoInit */

/*=========================================================================*/
/*  DEFINE: All code exported                                              */
/*=========================================================================*/

void put_rc(FRESULT rc) {
	const char *str =
			"OK\0" "DISK_ERR\0" "INT_ERR\0" "NOT_READY\0" "NO_FILE\0" "NO_PATH\0"
					"INVALID_NAME\0" "DENIED\0" "EXIST\0" "INVALID_OBJECT\0" "WRITE_PROTECTED\0"
					"INVALID_DRIVE\0" "NOT_ENABLED\0" "NO_FILE_SYSTEM\0" "MKFS_ABORTED\0" "TIMEOUT\0"
					"LOCKED\0" "NOT_ENOUGH_CORE\0" "TOO_MANY_OPEN_FILES\0";
	FRESULT i;

	for (i = 0; i != rc && *str; i++) {
		while (*str++)
			;
	}
	printf("rc=%u FR_%s\n", (uint32_t) rc, str);
}

/*Para listar directorio*/
void ls_dir(char * path) {
	uint8_t res;
	long p1, p2, p3;
	uint32_t s1, s2, cnt, blen = sizeof(Buff);
	FATFS *fs; /* Pointer to file system object */

	res = f_opendir(&Dir, path);
	if (res) {
		put_rc(res);
		return;
	}
	p1 = s1 = s2 = 0;
	for (;;) {
		res = f_readdir(&Dir, &Finfo);
		if ((res != FR_OK) || !Finfo.fname[0])
			break;
		if (Finfo.fattrib & AM_DIR) {
			s2++;
		} else {
			s1++;
			p1 += Finfo.fsize;
		}
		printf("%c%c%c%c%c %u/%02u/%02u %02u:%02u %9lu  %s",
				(Finfo.fattrib & AM_DIR) ? 'D' : '-',
				(Finfo.fattrib & AM_RDO) ? 'R' : '-',
				(Finfo.fattrib & AM_HID) ? 'H' : '-',
				(Finfo.fattrib & AM_SYS) ? 'S' : '-',
				(Finfo.fattrib & AM_ARC) ? 'A' : '-', (Finfo.fdate >> 9) + 1980,
				(Finfo.fdate >> 5) & 15, Finfo.fdate & 31, (Finfo.ftime >> 11),
				(Finfo.ftime >> 5) & 63, Finfo.fsize, &(Finfo.fname[0]));
#if _USE_LFN
		for (p2 = strlen(Finfo.fname); p2 < 14; p2++)
		printf(' ');
		printf("%s\n", Lfname);
#else
		printf("\n");
#endif
	}
	printf("%4u File(s),%10lu bytes total\n%4u Dir(s)", s1, p1, s2);
	res = f_getfree(path, (uint32_t *) &p1, &fs);
	if (res == FR_OK)
		printf(", %10lu bytes free\n", p1 * fs->csize * 512);
	else
		put_rc(res);
}

