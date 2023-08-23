/*
 * Code generated from Atmel Start.
 *
 * This file will be overwritten when reconfiguring your Atmel Start project.
 * Please copy examples or other code you want to keep to a separate file
 * to avoid losing it when reconfiguring.
 */

#include "driver_examples.h"
#include "driver_init.h"
#include "utils.h"

/**
 * Example of using USART_0 to write "Hello World" using the IO abstraction.
 */
void USART_0_example(void)
{
	struct io_descriptor *io;
	usart_sync_get_io_descriptor(&USART_0, &io);
	usart_sync_enable(&USART_0);

	io_write(io, (uint8_t *)"Hello World!", 12);
}

/**
 * Example of using USART_1 to write "Hello World" using the IO abstraction.
 */
void USART_1_example(void)
{
	struct io_descriptor *io;
	usart_sync_get_io_descriptor(&USART_1, &io);
	usart_sync_enable(&USART_1);

	io_write(io, (uint8_t *)"Hello World!", 12);
}

/**
 * Example of using EDBG_COM to write "Hello World" using the IO abstraction.
 */
void EDBG_COM_example(void)
{
	struct io_descriptor *io;
	usart_sync_get_io_descriptor(&EDBG_COM, &io);
	usart_sync_enable(&EDBG_COM);

	io_write(io, (uint8_t *)"Hello World!", 12);
}

/**
 * Example of using USART_2 to write "Hello World" using the IO abstraction.
 */
void USART_2_example(void)
{
	struct io_descriptor *io;
	usart_sync_get_io_descriptor(&USART_2, &io);
	usart_sync_enable(&USART_2);

	io_write(io, (uint8_t *)"Hello World!", 12);
}
