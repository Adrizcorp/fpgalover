#include "Uart.h"

#define RX_BUFFER_SIZE_1 1024*5
//#define RX_BUFFER_SIZE_1 4096
#define TX_BUFFER_SIZE_1 1024

unsigned short TxHead_1 = 0;
unsigned short TxTail_1 = 0;
unsigned char tx_buffer_1[TX_BUFFER_SIZE_1];

unsigned short RxHead_1 = 0;
unsigned short RxTail_1 = 0;
unsigned char rx_buffer_1[RX_BUFFER_SIZE_1];

alt_u32 uartControl;
/*---------------------------------------------------------------------------*/
unsigned short int data, status;
alt_u32 control;
int divisor;

void uart_handle(void *context, alt_u32 interrupt) {

	status = IORD_ALTERA_AVALON_UART_STATUS(UART1_BASE);
	while (!(status & ALTERA_AVALON_UART_STATUS_RRDY_MSK))
		status = IORD_ALTERA_AVALON_UART_STATUS(UART1_BASE);
	rx_buffer_1[RxHead_1] = IORD_ALTERA_AVALON_UART_RXDATA(UART1_BASE);
	data = rx_buffer_1[RxHead_1];
	IOWR_ALTERA_AVALON_UART_STATUS(UART1_BASE, 0);
	if (++RxHead_1 > (RX_BUFFER_SIZE_1 - 1)) {
		RxHead_1 = 0;
	}

}

void IsrUart1(void* context, unsigned int id) {
	int sr;

	sr = IORD_ALTERA_AVALON_UART_STATUS(UART1_BASE);
	if (sr & ALTERA_AVALON_UART_STATUS_RRDY_MSK)
		;
	{
		rx_buffer_1[RxHead_1] = IORD_ALTERA_AVALON_UART_RXDATA(UART1_BASE);
		IOWR_ALTERA_AVALON_UART_STATUS(UART1_BASE, 0);
		if (++RxHead_1 > (RX_BUFFER_SIZE_1 - 1)) {
			RxHead_1 = 0;
		}
	}
	if (sr & ALTERA_AVALON_UART_STATUS_TRDY_MSK) {
		if (IORD_ALTERA_AVALON_UART_CONTROL(
				UART1_BASE) & ALTERA_AVALON_UART_CONTROL_TRDY_MSK)
			;
		{
			if (TxTail_1 != TxHead_1) {
				IOWR_ALTERA_AVALON_UART_TXDATA(UART1_BASE,
						tx_buffer_1[TxTail_1]);
				if (++TxTail_1 > (TX_BUFFER_SIZE_1 - 1))
					TxTail_1 = 0;
			} else
				IOWR_ALTERA_AVALON_UART_CONTROL(UART1_BASE,
						ALTERA_AVALON_UART_CONTROL_RRDY_MSK);
		}
	}

}

void InitUart(unsigned int BaudRate) {
	int context_uart1;

	control = ALTERA_AVALON_UART_CONTROL_TRDY_MSK |
	ALTERA_AVALON_UART_CONTROL_RRDY_MSK |
	ALTERA_AVALON_UART_CONTROL_E_MSK;
	IOWR_ALTERA_AVALON_UART_CONTROL(UART1_BASE, control);

	divisor = (int) ((UART1_FREQ / BaudRate) + 1);
	;
	IOWR_ALTERA_AVALON_UART_DIVISOR(UART1_BASE, divisor);

	if (alt_irq_register(UART1_IRQ, NULL, IsrUart1)) {
//     IOWR_ALTERA_AVALON_PIO_DATA(LE_BASE, 0x0);
	}
	InitUart1(BaudRate);
	/* register the interrupt handler */

	alt_irq_register(UART1_IRQ, NULL, IsrUart1); //LEGACY
	//alt_ic_isr_register(UART1_IRQ_ID,UART1_IRQ,IsrUart1,NULL,NULL); //ENHANCED INTERRUPT CONTROLLER
	alt_irq_enable(UART1_IRQ); //LEGACY
	//alt_ic_irq_enable(UART1_IRQ_ID,UART1_IRQ); //ENHANCED INTERRUPT CONTROLLER
}

unsigned char IsEmptyUart() {
	if (RxHead_1 == RxTail_1) {
		return 1;
	}
	return 0;
}

unsigned short GET_POS(void) {
	return RxTail_1;
}
unsigned short CLEAR_FIFO(void) {
	RxHead_1 = RxTail_1;
}

unsigned char GetChar_uart(void) {
	unsigned char rxChar;

	/* buffer is empty */

	rxChar = rx_buffer_1[RxTail_1];
	RxTail_1++;
	if (RxTail_1 > (RX_BUFFER_SIZE_1 - 1)) {
		RxTail_1 = 0;
	}

	return rxChar;
}

unsigned char sendChar_uart(unsigned char in_char) {
	unsigned short size;
	unsigned int z;

	z = IORD_ALTERA_AVALON_UART_STATUS(
			UART1_BASE) & ALTERA_AVALON_UART_STATUS_TRDY_MSK;

	if ((TxHead_1 == TxTail_1) && z)
		IOWR_ALTERA_AVALON_UART_TXDATA(UART1_BASE, in_char);
	else {
		if (TxHead_1 >= TxTail_1)
			size = TxHead_1 - TxTail_1;
		else
			size = ((TX_BUFFER_SIZE_1 - 1) - TxTail_1) + TxHead_1;
		if (size > (TX_BUFFER_SIZE_1 - 3))
			return (-1);
		tx_buffer_1[TxHead_1] = in_char;
		if (++TxHead_1 > (TX_BUFFER_SIZE_1 - 1))
			TxHead_1 = 0;
		z = IORD_ALTERA_AVALON_UART_CONTROL(
				UART1_BASE) | ALTERA_AVALON_UART_CONTROL_TRDY_MSK;
		IOWR_ALTERA_AVALON_UART_CONTROL(UART1_BASE, z);
	}
	usleep(10);

	return (1);
}

/***************************************************************************************************

 Funcion:     get_pack_data_uart(unsigned char * buffer)
 Descripci�n: desocupa el buffer, si el tama�o de su cola es mayor que 2, asegurando que por lo menos
 Existan 3 paquetes.
 Autor: Holguer A Becerra

 Ejemplo:
 unsigned char * mensaje;
 int result;
 result= get_pack_data_uart(mensaje);
 if(result>0) printf("Esta es una Prueba %s \n", mensaje);

 ****************************************************************************************************/

int get_pack_data_uart(unsigned char * buffer) {
	unsigned int size = fabs(RxHead_1 - RxTail_1);
	unsigned char * out_buffer = buffer;
	int size_n_to = 0;

	while (!IsEmptyUart()) {
		out_buffer[size_n_to] = GetChar_uart();
		size_n_to++;
	}

	//printf("pack = %d\n",size_n_to);
	return size_n_to - 1;
}

unsigned char uart_write(unsigned char * pack, int len) {
	int size = len;
	unsigned char * out_buffer = pack;
	int size_to = 0;
	for (size_to = 0; size_to < size; size_to++) {
		sendChar_uart(out_buffer[size_to]);
	}
	return 1;
}

void InitUart1(unsigned int BaudRate) {

	unsigned int divisor;
	int number = 0.0;
	//number=((UART1_FREQ/BaudRate) + 0.5);
	divisor = ((UART1_FREQ / BaudRate) + 1);
	//printf("num float %.1f  %.1f \n",number,0.5);
	//divisor = (unsigned int)(ceil(number));

	//printf("num int %d \n",divisor);
	IOWR_ALTERA_AVALON_UART_DIVISOR(UART1_BASE, divisor);
	IOWR_ALTERA_AVALON_UART_CONTROL(UART1_BASE,
			ALTERA_AVALON_UART_CONTROL_RRDY_MSK);

}
