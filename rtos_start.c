/*
 * Code generated from Atmel Start.
 *
 * This file will be overwritten when reconfiguring your Atmel Start project.
 * Please copy examples or other code you want to keep to a separate file or main.c
 * to avoid loosing it when reconfiguring.
 */
#include "atmel_start.h"
#include "rtos_start.h"

#define TASK_EXAMPLE_STACK_SIZE (128 / sizeof(portSTACK_TYPE))
#define TASK_EXAMPLE_STACK_PRIORITY (tskIDLE_PRIORITY + 1)

void wifi_thread(void *param);

//static TaskHandle_t      xwifi_thread;
static SemaphoreHandle_t disp_mutex;

//Task Creation is handled here


/*
 * Example
 */
void RTOS_start(void)
{
	disp_mutex = xSemaphoreCreateMutex();

	if (disp_mutex == NULL) {
		while (1) {
			;
		}
	}

	xTaskCreate( wifi_thread,                  // The function that implements the task.
                    "WiFi",                        // The text name for task - for debug only, not used by the kernel.
                    2000,                          // The size of the stack to allocate to the task.
                    NULL,                          // The parameter passed to the task - not used in this case.
                    tskIDLE_PRIORITY + 1,          // The priority assigned to the task.
                    NULL );         // The task handle is not required, so NULL is passed
   
	vTaskStartScheduler();

	return;
}
