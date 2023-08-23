

#ifndef __WIFI_H
#define __WIFI_H

//States
#define WIFI_THREAD_STATE_STARTUP                 0
#define WIFI_THREAD_STATE_CREATE_NETWORK          1
#define WIFI_THREAD_STATE_CONTROLLER_HANDSHAKE    2
#define WIFI_THREAD_STATE_WAIT_INCOMING           3


//Error Codes
#define ESP_BAD_AT                         -1
#define ESP_NETWORK_ALREADY_ESTABLISHED    -2
#define ESP_NETWORK_LOST                   -3


int wifiModeSoftAP();
int espReset();
int sendATCommand(char *at_command, char *response, int len);

#endif