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
#include "practica2.h"

/*
 * Muestra el men� de la parte b
 */
void displayBMenu() {
    xil_printf("Elija una opcion:\r\n");
    xil_printf("  a. Introducir primer operando\r\n");
    xil_printf("  b. Introducir segundo operando\r\n");
    xil_printf("  c. Obtener resta de operandos\r\n");
}

/*
 * Muestra el men� de la parte c
 */
void displayCMenu() {
    xil_printf("  d. Mostrar valor de switches\r\n");
}

/*
 * Implementa el men� de las partes b y c.
 *
 * char apartado: 'b' para mostrar el men� de la parte b y 'c' para mostrar el men� de la parte c
 */
void practica2bc(char apartado) {
    Xuint8 byte = 0;
    int firstOperand = 0;
    int secondOperand = 0;
    int difference = 0;

    while (byte != 0x78) {
        displayBMenu();
        if (apartado == 'c')
        	displayCMenu();
        xil_printf("  x. Salir\r\n");

        // Filtra los caracteres LF y CR
    	byte = XUartLite_RecvByte(XPAR_XPS_UARTLITE_0_BASEADDR);
        while ((byte == 0x0A) || (byte == 0x0D)) {
        	byte = XUartLite_RecvByte(XPAR_XPS_UARTLITE_0_BASEADDR);
        }
        switch (byte) {
            case 0x61: // 'a'
            	xil_printf("Ha elegido la opcion a. Introduzca primer operando: ");
                firstOperand = getNumber();
                if (firstOperand < 256) {
                    displayOperandInLEDs(firstOperand);
                    // displayOperandInScreen(firstOperand);
                }
                break;
            case 0x62: // 'b'
            	xil_printf("Ha elegido la opcion b. Introduzca segundo operando: ");
                secondOperand = getNumber();
                if (secondOperand < 256) {
                    displayOperandInLEDs(secondOperand);
                    // displayOperandInScreen(secondOperand);
                }
                break;
            case 0x63: // 'c'
                if ((firstOperand < 256) && (secondOperand < 256)) {
                    difference = firstOperand - secondOperand;
                	xil_printf("Ha elegido la opcion c. La diferencia es: ");
                    displayOperandInLEDs(difference);
                    displayOperandInScreen(difference);
                }
                break;
            case 0x64: // 'd'
            	// Ignora la opci�n si no estamos en la parte b de la pr�ctica
            	if (apartado == 'c') {
            		displaySwitchesValue();
            	} else {
                    xil_printf("Debe introducir una de las opciones del menu.\r\n");
            	}
            	break;
            case 0x78: // 'x'
            	xil_printf("Saliendo al menu principal...\r\n");
            	break;
            default: // otro car�cter
                xil_printf("Debe introducir una de las opciones del menu.\r\n");
        }
    }
}


int main() {
    Xuint8 byte = 0;
    int sdValue;

    xil_printf("Practica 2 por Nestor Marin y Ricardo Palomares\r\n\r\n");

    // Mientras no pulse 'X' o 'x'
    while ((byte != 0x58) && (byte != 0x78)) {
        xil_printf("Elija una opcion:\r\n");
        xil_printf("  a. Comprobar parte a de la practica\r\n");
        xil_printf("  b. Comprobar parte b de la practica\r\n");
        xil_printf("  c. Comprobar parte c de la practica\r\n");
        xil_printf("  x. Salir\r\n");

        // Filtra los caracteres LF y CR
    	byte = XUartLite_RecvByte(XPAR_XPS_UARTLITE_0_BASEADDR);
        while ((byte == 0x0A) || (byte == 0x0D)) {
        	byte = XUartLite_RecvByte(XPAR_XPS_UARTLITE_0_BASEADDR);
        }

        switch (byte) {
            case 0x61: // 'a'
            	xil_printf("Ha elegido la opcion a. Introduzca un digito: ");
                sdValue = getSingleDigitNumber();
                xil_printf("\r\nHa pulsado el digito: %d\r\n", sdValue);
                lightLEDs(sdValue);
                break;
            case 0x62: // 'b'
            	xil_printf("Ha elegido la opcion b.\r\n");
            	practica2bc('b');
            	break;
            case 0x63: // 'c'
            	xil_printf("Ha elegido la opcion c.\r\n");
            	practica2bc('c');
            	break;
//            default: // otro car�cter
//                xil_printf("Debe introducir una de las opciones del menu (a, b, c).\r\n");
        }
    }
    xil_printf("Ha elegido salir del menu. Fin de la ejecucion del programa de Spartan.\r\n");
    xil_printf("Practica 2 por Nestor Marin y Ricardo Palomares\r\n\r\n");
    return 0;
}