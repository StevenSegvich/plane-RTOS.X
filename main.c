
#include <atmel_start.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <stdbool.h>
#include <string.h>
#include <math.h>
#include "FreeRTOS.h"
#include "task.h"
#include "semphr.h"

#define CORTEXM7_SHCSR (*(uint32_t*)0xe000ed24)

QueueHandle_t WiFiTXQueue = NULL;
QueueHandle_t WiFiRXQueue = NULL;

int main(void)
{
    //__enable_irq();
    //Enable hard, bus, and usage fault handlers
    *(uint8_t*)0x40003014 = 1;
	CORTEXM7_SHCSR = (1<<18) | (1<<17) | (1<<16);
    
    //Create Queues
    WiFiRXQueue = xQueueCreate( 50, sizeof(char) );
    WiFiTXQueue = xQueueCreate( 50, sizeof(char) );
    
    //Run Startup Code
	atmel_start_init();
    RTOS_start();
    
    

	/* Replace with your application code */
	while (1) {
	}
}
