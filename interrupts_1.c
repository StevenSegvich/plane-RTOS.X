#include <atmel_start.h>
#include <math.h>
#include <stdlib.h>
#include <hal_gpio.h>
#include <hal_init.h>
#include <hal_io.h>
#include <stdbool.h>
#include "hal_usart_sync.h"
#include <hal_usart_sync.h>
#include <hpl_usart_sync.h>
#include <utils_assert.h>
#include <utils.h>
#include "hal_rtos.h"
#include "FreeRTOS.h"
#include "task.h"
#include <task.h>
#include "semphr.h"
#include <stdio.h>
#include <stdarg.h>
#include <string.h>
#include "queue.h"
#include "task.h"
#include "hal_usart_os.h"

#define disableSERCOM0TransmitInterrupt()   *(uint8_t*)0x40003014 = 0
#define enableSERCOM0TransmitInterrupt()    *(uint8_t*)0x40003016 = 1

QueueHandle_t WiFiTXQueue = NULL;
QueueHandle_t WiFiRXQueue = NULL;

TaskHandle_t wifi_thread;

extern struct usart_os_descriptor  EDBG_COM;
extern struct usart_os_descriptor  USART0;

extern void printProcessorStatus();
//extern int32_t usart_os_read(struct io_descriptor *const io_descr, uint8_t *const buf, const uint16_t length);



//Defining Queue for Sercom0 buffer


void SERCOM0_0_Handler(){
    char data;
    if( xQueueReceiveFromISR(WiFiTXQueue, &data, NULL) == pdFALSE) { // Nothing in queue
        disableSERCOM0TransmitInterrupt();
    } else {
       hri_sercomusart_write_DATA_reg(SERCOM0, data); 
    }
}


/*
 * Transmit Complete Interrupt Handler
 *
 *
 */
void SERCOM0_1_Handler() {
    while(1);
}

/*
 * Receive Complete Interrupt Handler
 *
 */
void SERCOM0_2_Handler() {
    char testBuff[1];
    char *p;
    p = testBuff;
    uint8_t c;
    BaseType_t xHigherPriorityTaskWoken;
    usart_os_read(&USART_0, *p, 1); // Read byte from serial port
    xQueueSendFromISR(WiFiRXQueue, *p, &xHigherPriorityTaskWoken);
    portYIELD_FROM_ISR(xHigherPriorityTaskWoken);
}


void SERCOM0_3_Handler() {
    
}

void HardFault_Handler(void){
    while(1);
}

void BusFault_Handler(void){
    while(1);
}

void UsageFault_Handler(void){
    while(1);
}

