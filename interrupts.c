#include <atmel_start.h>
#include <math.h>
#include <stdlib.h>
#include <hal_gpio.h>
#include <hal_init.h>
#include <hal_io.h>
#include <stdbool.h>
#include "queue.h"
#include "hal_rtos.h"
#include "FreeRTOS.h"


#define disableSERCOM0TransmitInterrupt()   *(uint8_t*)0x40003014 = 1
#define enableSERCOM0TransmitInterrupt()    *(uint8_t*)0x40003016 = 1

extern QueueHandle_t WiFiRXQueue;
extern QueueHandle_t WiFiTXQueue;

//This file contains all user defined interrupts

//Sercom 0 = WiFi
//Sercom 
/*
 * Data Register Empty ISR
 *
 *
 */
void SERCOM0_0_Handler(){
    char data;
    if( xQueueReceiveFromISR(WiFiTXQueue, &data, NULL) == pdFALSE) { // Nothing in queue
        disableSERCOM0TransmitInterrupt();
    } else {
       hri_sercomusart_write_DATA_reg(SERCOM0, data);
       //Write to debug port
       //hri_sercomusart_write_DATA_reg(SERCOM2, data);
        
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
    extern struct usart_sync_descriptor  USART_0;
    uint8_t c;
    BaseType_t xHigherPriorityTaskWoken;
    c = _usart_sync_read_byte(&(USART_0.device)); // Read byte from serial port
    xQueueSendFromISR(WiFiRXQueue, &c, &xHigherPriorityTaskWoken);

    portYIELD_FROM_ISR(xHigherPriorityTaskWoken); // Run scheduler if a higher priority task was woken
}

void SERCOM0_3_Handler() {
    while(1);
}



/* Interrupt Service Routines for WiFi serial port
 *
 *
 *
 */
void SERCOM4_0_Handler(){
    while(1);
}


/*
 * Transmit Complete Interrupt Handler
 *
 *
 */
void SERCOM4_1_Handler() {
    while(1);
}

/*
 * Receive Complete Interrupt Handler
 *
 */
void SERCOM4_2_Handler() {
    while(1);
}

void SERCOM4_3_Handler() {
    while(1);
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