#ifndef _INTERRUPTHANDLERFORUART_H_
#define _INTERRUPTHANDLERFORUART_H_

/************************************************** ***************************
 * Public function prototypes
 ************************************************** **************************/
#include "system.h"
#include "altera_avalon_uart_regs.h"
#include "sys/alt_irq.h"
#include "priv/alt_legacy_irq.h"
#include <alt_types.h>

#define UART1_BASE UART_USB_BASE
#define UART1_IRQ UART_USB_IRQ
#define UART1_FREQ UART_USB_FREQ
#define UART1_IRQ_INTERRUPT_CONTROLLER_ID UART_USB_IRQ_INTERRUPT_CONTROLLER_ID

void uart_handle(void *context, alt_u32 interrupt);

void InitUart(unsigned int BaudRate);

unsigned char IsEmptyUart();
unsigned short GET_POS(void);
unsigned short CLEAR_FIFO(void);
unsigned char GetChar_uart(void);
unsigned char sendChar_uart(unsigned char in_char);
int get_pack_data_uart(unsigned char * buffer);
void IsrUart1(void* context, unsigned int id);

void InitUart1(unsigned int BaudRate);
unsigned char uart_write(unsigned char * pack, int len);

#define NULL ((void *)0)

#define TOGGLE_LED(x) \
{\
    unsigned char in_led=IORD_ALTERA_AVALON_PIO_DATA(LED_PIO_BASE);\
    unsigned char out_tmp=1<<x;\
    unsigned char out=in_led ^ out_tmp;\
    IOWR_ALTERA_AVALON_PIO_DATA(LED_PIO_BASE,out);\
}

#define READ_SW(x) ((IORD_ALTERA_AVALON_PIO_DATA(BUTTON_PIO_BASE)& (1<<x))>>x)

#endif //_INTERRUPTHANDLERFORUART_H_
