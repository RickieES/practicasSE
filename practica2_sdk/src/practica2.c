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


int main() {
    Xuint8 byte = 0;
    int sdValue;

    // Mientras no pulse 'X' o 'x'
    while ((byte != 0x58) && (byte != 0x78)) {
        xil_printf("Elija una opci�n:\r\n");
        xil_printf("  a. Comprobar parte a de la pr�ctica\r\n");
        xil_printf("  b. Comprobar parte b de la pr�ctica\r\n");
        xil_printf("  c. Comprobar parte c de la pr�ctica\r\n");
        xil_printf("  x. Salir\r\n");
    	byte = XUartLite_RecvByte(XPAR_XPS_UARTLITE_0_BASEADDR);
        switch (byte) {
            case 0x61: // 'a'
            	xil_printf("Ha elegido la opci�n a. Introduzca un d�gito: ");
                sdValue = getSingleDigitNumber();
                xil_printf("\r\nHa pulsado el d�gito: %d\r\n", sdValue);
                lightLEDs(sdValue);
                break;
            case 0x62: // 'b'
            	xil_printf("Ha elegido la opci�n b.\r\n");
            	practica2b();
            	break;
            case 0x63: // 'c'
            	xil_printf("Ha elegido la opci�n c.\r\n");
            	practica2c();
            	break;
            default: // otro car�cter
                xil_printf("Debe introducir una de las opciones del men� (a, b, c).\r\n");
        }
    }
    return 0;
}
