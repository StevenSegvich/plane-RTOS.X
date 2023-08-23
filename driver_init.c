/*
 * Code generated from Atmel Start.
 *
 * This file will be overwritten when reconfiguring your Atmel Start project.
 * Please copy examples or other code you want to keep to a separate file
 * to avoid losing it when reconfiguring.
 */

#include "driver_init.h"
#include <peripheral_clk_config.h>
#include <utils.h>
#include <hal_init.h>

#define PERIPHERAL_INTERRUPT_PRIORITY (0x07 - 1)

struct usart_sync_descriptor EDBG_COM;

struct usart_sync_descriptor USART_0;

struct usart_sync_descriptor USART_1;

struct usart_sync_descriptor USART_2;


void EDBG_COM_PORT_init(void)
{

	gpio_set_pin_function(PB25, PINMUX_PB25D_SERCOM2_PAD0);

	gpio_set_pin_function(PB24, PINMUX_PB24D_SERCOM2_PAD1);
}

void EDBG_COM_CLOCK_init(void)
{
	hri_gclk_write_PCHCTRL_reg(GCLK, SERCOM2_GCLK_ID_CORE, CONF_GCLK_SERCOM2_CORE_SRC | (1 << GCLK_PCHCTRL_CHEN_Pos));
	hri_gclk_write_PCHCTRL_reg(GCLK, SERCOM2_GCLK_ID_SLOW, CONF_GCLK_SERCOM2_SLOW_SRC | (1 << GCLK_PCHCTRL_CHEN_Pos));

	hri_mclk_set_APBBMASK_SERCOM2_bit(MCLK);
}

void EDBG_COM_init(void)
{
	EDBG_COM_CLOCK_init();
    uint32_t irq = SERCOM2_0_IRQn;
    for (uint32_t i = 0; i < 4; i++) {
		NVIC_SetPriority((IRQn_Type)irq, PERIPHERAL_INTERRUPT_PRIORITY);
        NVIC_EnableIRQ((IRQn_Type)irq);
		irq++;
	}
	usart_sync_init(&EDBG_COM, SERCOM2, (void *)NULL);
    usart_sync_enable(&EDBG_COM);
	EDBG_COM_PORT_init();
}

void USART_0_PORT_init(void)
{

	gpio_set_pin_function(PA04, PINMUX_PA04D_SERCOM0_PAD0);

	gpio_set_pin_function(PA05, PINMUX_PA05D_SERCOM0_PAD1);
}

void USART_0_CLOCK_init(void)
{
	hri_gclk_write_PCHCTRL_reg(GCLK, SERCOM0_GCLK_ID_CORE, CONF_GCLK_SERCOM0_CORE_SRC | (1 << GCLK_PCHCTRL_CHEN_Pos));
	hri_gclk_write_PCHCTRL_reg(GCLK, SERCOM0_GCLK_ID_SLOW, CONF_GCLK_SERCOM0_SLOW_SRC | (1 << GCLK_PCHCTRL_CHEN_Pos));

	hri_mclk_set_APBAMASK_SERCOM0_bit(MCLK);
}

void USART_0_init(void)
{
	USART_0_CLOCK_init();
	uint32_t irq = SERCOM0_0_IRQn;
	for (uint32_t i = 0; i < 4; i++) {
		NVIC_SetPriority((IRQn_Type)irq, PERIPHERAL_INTERRUPT_PRIORITY);
        NVIC_EnableIRQ((IRQn_Type)irq);
		irq++;
	}
    usart_sync_init(&USART_0, SERCOM0, (void *)NULL);
    usart_sync_enable(&USART_0);
	USART_0_PORT_init();
    
    //This enables some extra interrupts i think will be needed later
    *(uint8_t*)0x40003016 = 4;
}

void USART_1_PORT_init(void)
{

	gpio_set_pin_function(PA00, PINMUX_PA00D_SERCOM1_PAD0);

	gpio_set_pin_function(PA01, PINMUX_PA01D_SERCOM1_PAD1);
}

void USART_1_CLOCK_init(void)
{
	hri_gclk_write_PCHCTRL_reg(GCLK, SERCOM1_GCLK_ID_CORE, CONF_GCLK_SERCOM1_CORE_SRC | (1 << GCLK_PCHCTRL_CHEN_Pos));
	hri_gclk_write_PCHCTRL_reg(GCLK, SERCOM1_GCLK_ID_SLOW, CONF_GCLK_SERCOM1_SLOW_SRC | (1 << GCLK_PCHCTRL_CHEN_Pos));

	hri_mclk_set_APBAMASK_SERCOM1_bit(MCLK);
}

void USART_1_init(void)
{
	USART_1_CLOCK_init();
	uint32_t irq = SERCOM1_0_IRQn;
	for (uint32_t i = 0; i < 4; i++) {
		NVIC_SetPriority((IRQn_Type)irq, PERIPHERAL_INTERRUPT_PRIORITY);
        NVIC_EnableIRQ((IRQn_Type)irq);
		irq++;
	}
    usart_sync_init(&USART_1, SERCOM1, (void *)NULL);
    usart_sync_enable(&USART_1);
	USART_1_PORT_init();
}

void USART_2_PORT_init(void)
{

	gpio_set_pin_function(PC23, PINMUX_PC23D_SERCOM3_PAD0);

	gpio_set_pin_function(PC22, PINMUX_PC22D_SERCOM3_PAD1);
}

void USART_2_CLOCK_init(void)
{
	hri_gclk_write_PCHCTRL_reg(GCLK, SERCOM3_GCLK_ID_CORE, CONF_GCLK_SERCOM3_CORE_SRC | (1 << GCLK_PCHCTRL_CHEN_Pos));
	hri_gclk_write_PCHCTRL_reg(GCLK, SERCOM3_GCLK_ID_SLOW, CONF_GCLK_SERCOM3_SLOW_SRC | (1 << GCLK_PCHCTRL_CHEN_Pos));

	hri_mclk_set_APBBMASK_SERCOM3_bit(MCLK);
}

void USART_2_init(void)
{
	USART_2_CLOCK_init();
	uint32_t irq = SERCOM3_0_IRQn;
	for (uint32_t i = 0; i < 4; i++) {
		NVIC_SetPriority((IRQn_Type)irq, PERIPHERAL_INTERRUPT_PRIORITY);
        NVIC_EnableIRQ((IRQn_Type)irq);
		irq++;
	}
    usart_sync_init(&USART_2, SERCOM3, (void *)NULL);
    usart_sync_enable(&USART_2);
	USART_2_PORT_init();
}

void PWM_0_PORT_init(void)
{

	gpio_set_pin_function(PC10, PINMUX_PC10F_TCC0_WO0);

	gpio_set_pin_function(PC11, PINMUX_PC11F_TCC0_WO1);

	gpio_set_pin_function(PC12, PINMUX_PC12F_TCC0_WO2);

	gpio_set_pin_function(PA23, PINMUX_PA23G_TCC0_WO3);

	gpio_set_pin_function(PA16, PINMUX_PA16G_TCC0_WO4);

	gpio_set_pin_function(PA17, PINMUX_PA17G_TCC0_WO5);

	gpio_set_pin_function(PA18, PINMUX_PA18G_TCC0_WO6);
}

void PWM_0_CLOCK_init(void)
{
	hri_mclk_set_APBBMASK_TCC0_bit(MCLK);
	hri_gclk_write_PCHCTRL_reg(GCLK, TCC0_GCLK_ID, CONF_GCLK_TCC0_SRC | (1 << GCLK_PCHCTRL_CHEN_Pos));
}

void system_init(void)
{
	init_mcu();
    
    EDBG_COM_init();

	USART_0_init();

	USART_1_init();

	USART_2_init();

	PWM_0_CLOCK_init();

	PWM_0_PORT_init();

	PWM_0_init();
}
