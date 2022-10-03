/*
 * practica2.c
 *
 *  Created on: 02/10/2022
 *      Author: Nestorma@ucm.es & Rpalomar@ucm.es
 */

#include <stdio.h>
#include <xstatus.h>
#include "xparameters.h"
#include "xil_cache.h"
#include "xuartlite_i.h"
#include "xbasic_types.h"
#include "xgpio.h"
#include "gpio_header.h"
#include "practica2.h"

#define XPAR_LEDS_DEVICE_ID (0x81400000)
#define XPAR_SWITCHES_DEVICE_ID (0x81420000)
#define XPAR_RS232_UART_1_BASEADDR (0x84000000)

int main() {
    Xuint8 byte = 0;
    int sdValue;

    // Mientras no pulse 'X' o 'x'
    while ((byte != 0x58) && (byte != 0x78)) {
        xil_printf("Elija una opción:\r\n");
        xil_printf("  a. Comprobar parte a de la práctica\r\n");
        xil_printf("  b. Comprobar parte b de la práctica\r\n");
        xil_printf("  c. Comprobar parte c de la práctica\r\n");
        xil_printf("  x. Salir\r\n");
    	byte = XUartLite_RecvByte(XPAR_RS232_UART_1_BASEADDR);
        switch (byte) {
            case 0x61: // 'a'
                sdValue = getSingleDigitNumber();
                lightLEDs(sdValue);
            case 0x62: // 'b'
            	practica2b();
            case 0x63: // 'c'
            	practica2c();
            default: // otro carácter
                xil_printf("Debe introducir una de las opciones del menÃº (a, b, c).\r\n");
        }
    }
    return 0;
}
