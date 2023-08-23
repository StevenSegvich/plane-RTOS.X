#include <atmel_start.h>
#include "same54p20a.h"
void SERCOM0_0_Handler(void);
void SERCOM0_1_Handler(void);
void SERCOM0_2_Handler(void);
void BusFault_Handler(void);
void UsageFault_Handler(void);

extern struct _irq_descriptor *_irq_table[PERIPH_COUNT_IRQn];

/**
 * Initializes MCU, drivers and middleware in the project
 **/
void atmel_start_init(void)
{
	system_init();
    __enable_irq();
    //_irq_table[SERCOM0_0_IRQn] = (void*) SERCOM0_0_Handler;
    //_irq_table[SERCOM0_1_IRQn] = (void*) SERCOM0_1_Handler;
    //_irq_table[SERCOM0_2_IRQn] = (void*) SERCOM0_2_Handler;
    //_irq_table[HardFault_IRQn] = (void*) HardFault_Handler;
    //_irq_table[BusFault_IRQn] = (void*) BusFault_Handler;
    //_irq_table[UsageFault_IRQn] = (void*) UsageFault_Handler;
}
