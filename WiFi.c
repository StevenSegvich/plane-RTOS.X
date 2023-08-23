#include <stdio.h>
#include <stdarg.h>
#include <string.h>
#include <stdbool.h>

#include <math.h>
#include <hal_gpio.h>
#include "atmel_start.h"
#include "atmel_start_pins.h"
#include "hal_io.h"
#include "hal_rtos.h"
#include "queue.h"
#include "utils.h"
#include "interrupts.h"
#include "wifi.h"
#include "FreeRTOS.h"
#include "task.h"
#include "semphr.h"

extern QueueHandle_t WiFiRXQueue;
extern QueueHandle_t WiFiTXQueue;
struct usart_sync_descriptor EDBG_COM;
struct usart_sync_descriptor USART_0;
struct usart_sync_descriptor USART_1;
struct usart_sync_descriptor USART_2;

#define disableSERCOM0TransmitInterrupt()   *(uint8_t*)0x40003014 = 1
#define enableSERCOM0TransmitInterrupt()    *(uint8_t*)0x40003016 = 1


unsigned int wifi_thread_state = WIFI_THREAD_STATE_STARTUP;

void wifi_thread(void *param) {
    char responsebuff[120];
    char *response = responsebuff;
    
    char incoming;
    int err;

    wifi_thread_state = WIFI_THREAD_STATE_STARTUP;
    
    
    //At some point, add a way for the RTOS to reboot if it stays stuck in an error loop. i.e unable to contact esp8266
    while(1){
        switch(wifi_thread_state){
        case WIFI_THREAD_STATE_STARTUP:
            if(espReset() != 0){
                //break;
                while(1){}
            }if(echoOff() != 0){
                //break;
                while(1){}
            }if(wifiModeSoftAP() != 0){
                //break;
                while(1){}
            }
            wifi_thread_state = WIFI_THREAD_STATE_CREATE_NETWORK;
            break;
            
        case WIFI_THREAD_STATE_CREATE_NETWORK:
            if(configureAP() != 0){
                while(1){}
            }
            if(enableUDP() != 0){
                while(1){}
            }
            wifi_thread_state = WIFI_THREAD_STATE_CONTROLLER_HANDSHAKE;
            xQueueReset(WiFiRXQueue);
            xQueueReset(WiFiTXQueue);
            
        case WIFI_THREAD_STATE_CONTROLLER_HANDSHAKE:
            //At this point, the controller is only sending a single UDP packet every 5 seconds until it receives a ping back.
            while(1){
                while(uxQueueMessagesWaiting(WiFiRXQueue) != 0){
                    xQueueReceive(
                        WiFiRXQueue,
                        &incoming,
                        20
                        );
                
                *response = incoming;
                *response++;
                }
                if(parseUDPHandshake(response) == -2){
                    //Garbage packet, wait and try again
                    memset(response, 0, sizeof(response));
                    break;
                }
                if(controllerHandshake() != 0){
                    while(1){}
                }
                wifi_thread_state = WIFI_THREAD_STATE_WAIT_INCOMING; 
            }
            
            
        }
    }
}

int parseUDPHandshake(char *response){
    //Code here to comb through packet and see if everything looks good.
    //Compare to known checksum
    //3 returns ok, 0 is good, -1 means something was off in the packet, and -2 means the packet was garbage
    return 0;
}

int controllerHandshake(){
    //Code to send confirmation to controller, once this is sent, the operator knows plane is ready to go. 
    //Both this and the packet from controller have a known checksum.
    char response[20];
    char packet[23] = "majortomtogroundcontrol";
    //Need to change this to talk directly to the ip and port of the controller
    int err = sendATCommand("AT+CIPSEND=23", response, 10);
    memset(response, 0, sizeof(response));
    err = transmitPacket(packet, response);
    return err;
}

testcipmux(){
    char response[120];
    int err = sendATCommand("AT+CIPMUX=0", response, 10);
    int retval = -1;
    
    if(strstr(response, "OK") == NULL) { // Couldn't find "OK" in response
        retval = -1;
    } else { // Found "OK" in response
        retval = 0;
    }
}
        
        
int enableUDP(){
    testcipmux();
    char response[120];
    int err = sendATCommand("AT+CIPSTART=\"UDP\",\"192.168.4.1\",333,333,0", response, 10);
    int retval = -1;
    
    if(strstr(response, "OK") == NULL) { // Couldn't find "OK" in response
        retval = -1;
    } else { // Found "OK" in response
        retval = 0;
    }
}

int wifiModeSoftAP(){
    char response[120];
    int err = sendATCommand("AT+CWMODE=2", response, 10);
    int retval = -1;
    
    if(strstr(response, "OK") == NULL) { // Couldn't find "OK" in response
        retval = -1;
    } else { // Found "OK" in response
        retval = 0;
    }
}
//Statically defined configuration, should be changed to dynamic allocation if trouble establishing connection to controller is found
//SSID is ESP8266, password is plane. Allows for one unencrypted connection. 
int configureAP(){
    char response[120];
    int err = sendATCommand("AT+CWSAP=\"ESP8266\",\"testplane\",10,2,1,0", response, 0);
    int retval = -1;
    if(strstr(response, "OK") == NULL) { // Couldn't find "OK" in response
        retval = -1;
    } else { // Found "OK" in response
        retval = 0;
    }
}

int espReset(){
    char response[128];
    int err = sendATCommand("AT+RST", response, 6);
    int retval = -1;
    
    if(strstr(response, "OK") == NULL) { // Couldn't find "OK" in response
        retval = -1;
    } else { // Found "OK" in response
        retval = 0;
    }
    
    return retval;
}

int echoOff(){
    char response[20];
    int err = sendATCommand("ATE0", response, 4);
    int retval = -1;
    
    if(strstr(response, "OK") == NULL) { // Couldn't find "OK" in response
        retval = -1;
    } else { // Found "OK" in response
        retval = 0;
    }
    
    return retval;
}


//This function is called to pass an AT command to the esp8266, should not be \r\n terminated.
//Needs to be provided a pointer to the command, a buffer of appropriate size for the return message, and the length of message to be sent
int sendATCommand( char *at_command, char *response, int len){
    char rn[2] = {'\r', '\n' };
    char incoming;
    int err;
    int lenn = strlen(at_command);
    // Clear out the WiFi queue
    xQueueReset(WiFiRXQueue);

    for(int i = 0; i < lenn; i++){
        xQueueSend(WiFiTXQueue, (void * ) at_command + i, portMAX_DELAY);
        //Included for debugging, write to putty terminal
        io_write(&EDBG_COM, at_command + i, 1);
    }
    xQueueSend(WiFiTXQueue, (void * ) &rn, portMAX_DELAY);
    xQueueSend(WiFiTXQueue, (void * ) &rn+1, portMAX_DELAY);
    io_write(&EDBG_COM, &rn, 2);
    enableSERCOM0TransmitInterrupt();
    vTaskDelay(500 / portTICK_PERIOD_MS);
    
    while(uxQueueMessagesWaiting(WiFiRXQueue) != 0){
        xQueueReceive(
                        WiFiRXQueue,
                        &incoming,
                        20
                        );
        *response = incoming;
        *response++;
    }

    return err;
}

int transmitPacket(char *packet, char *response){
    char incoming;
    int err;
    int lenn = strlen(packet);
    
    xQueueReset(WiFiRXQueue);
    
    for(int i = 0; i < lenn; i++){
        xQueueSend(WiFiTXQueue, (void * ) response + i, portMAX_DELAY);
        //Included for debugging, write to putty terminal
        io_write(&EDBG_COM, packet + i, 1);
    }
    enableSERCOM0TransmitInterrupt();
    vTaskDelay(500 / portTICK_PERIOD_MS);
    
    while(uxQueueMessagesWaiting(WiFiRXQueue) != 0){
        xQueueReceive(
                        WiFiRXQueue,
                        &incoming,
                        20
                        );
        *response = incoming;
        *response++;
    }
}