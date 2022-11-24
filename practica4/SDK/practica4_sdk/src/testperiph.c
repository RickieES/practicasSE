/*
 *
 * Xilinx, Inc.
 * XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" AS A 
 * COURTESY TO YOU.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION AS
 * ONE POSSIBLE   IMPLEMENTATION OF THIS FEATURE, APPLICATION OR 
 * STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION 
 * IS FREE FROM ANY CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE 
 * FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION
 * XILINX EXPRESSLY DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO 
 * THE ADEQUACY OF THE IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO 
 * ANY WARRANTIES OR REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE 
 * FROM CLAIMS OF INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY 
 * AND FITNESS FOR A PARTICULAR PURPOSE.
 */

/*
 * 
 *
 * This file is a generated sample test application.
 *
 * This application is intended to test and/or illustrate some 
 * functionality of your system.  The contents of this file may
 * vary depending on the IP in your system and may use existing
 * IP driver functions.  These drivers will be generated in your
 * SDK application project when you run the "Generate Libraries" menu item.
 *
 */

#include <stdio.h>
#include "xparameters.h"
#include "xil_cache.h"
#include "xuartlite_i.h"
#include "xbasic_types.h"
#include "nrvgap.h"
/* Definiciones para la VGA */
#define ROJO 				0x000001C0
#define VERDE 				0x00000038
#define VERDE_OSCURO		0x00000018
#define AZUL 				0x00000007
#define BLANCO				0x000001FF
#define NEGRO				0x00000000

/* Valor predeterminado de filas y columnas; variables para la parte 4b3 */
int nfilas = 16;
int ncolumnas = 8;

/* Fila y columna elegidas para cambiar el color, parte b1 */
int filaElegida, columnaElegida;
int colorElegido;

// Codigo de ejemplo se mantiene aqui como main2
// La practica comienza debajo de main2
int main2() {

	Xil_ICacheEnable();
	Xil_DCacheEnable();

	print("---Entering main---\n\r");

	{
		Xuint32 baseaddr;
		Xuint32 Data;
		char fila, columna, posicion, color;
		baseaddr = XPAR_NRVGAP_0_BASEADDR;
		color = BLANCO; /*ponemos color blanco */

		xil_printf("Data configuracion =%x\r\n", Data);

		while (!(NRVGAP_mWriteFIFOFull(baseaddr))) {
			/* La pantalla es un array de 16 filas por 8 columnas
			 * Se accede a una posición dada por columna*16+fila
			 * El dato hay que enviarlo con el siguiente formato
			 * 7 bits menos significativos (bits 6..0) la posición
			 * 9 bits mas significativos (bits 31 .. 23) el color
			 */
			for (fila = 0; fila < nfilas; fila++) {
				for (columna = 0; columna < ncolumnas; columna++) {
					posicion = columna * nfilas + fila;

					Data = ((color & 0x1FF) << 23) | (posicion & 0x7f);
					NRVGAP_mWriteToFIFO(baseaddr, 0, Data);
					xil_printf("Data configuracion =%d %d %08x\r\n", fila,
							columna, Data);
				}
			}
		}
	}

	print("---Exiting main---\n\r");

	Xil_DCacheDisable();
	Xil_ICacheDisable();

	return 0;
}

int getNumberInRange(int min, int max) {
	Xuint8 byte;
	Xuint8 uartBuffer[16];
	Xboolean validNumber;
	int digitIndex;
	int digit, number, sign;
	int c;

	while(1){
		byte = 0x00;
		digit = 0;
		digitIndex = 0;
		number = 0;
		validNumber = XTRUE;

        // Filtra los caracteres LF y CR
		do {
        	byte = XUartLite_RecvByte(XPAR_XPS_UARTLITE_0_BASEADDR);
        } while ((byte == 0x0A) || (byte == 0x0D));

		// Recibe bytes de la UART hasta que se reciba RETURN (0x0D o 0x0A)
		do {
			uartBuffer[digitIndex] = byte;
			XUartLite_SendByte(XPAR_XPS_UARTLITE_0_BASEADDR, byte);
			digitIndex++;
			byte = XUartLite_RecvByte(XPAR_XPS_UARTLITE_0_BASEADDR);
		} while ((byte != 0x0A) && (byte != 0x0D));
		// Envía un salto de línea
		XUartLite_SendByte(XPAR_XPS_UARTLITE_0_BASEADDR, (Xuint8) 0x0A);

		// Calcula el número a partir de la cadena de dígitos recibidos
		for(c = 0; c < digitIndex; c++){
			if(c == 0){
				// Comprueba si el primer byte es un signo "-"
				if(uartBuffer[c] == 0x2D){
					sign = -1;
					digit = 0;
				}
				// Comprueba si el primer byte es un dígito, que en
                // ASCII van de 0x30 ("0") a 0x39 ("9")
				else if((uartBuffer[c] >> 4) == 0x03){
					sign = 1;
					digit = (uartBuffer[c] & 0x0F);
				}
				else
					validNumber = XFALSE;
			}
			else{
				// Comprueba si el byte es un dígito en ASCII
				if((uartBuffer[c] >> 4) == 0x03){
					digit = (uartBuffer[c] & 0x0F);
				}
				else
					validNumber = XFALSE;
			}
			number = (number * 10) + digit;
		}
		number *= sign;
		if ((validNumber == XTRUE) && (number >= min) && (number <= max)) {
			return number;
		} else {
			xil_printf("Esto no es un numero valido.\n\r");
			return -1;
		}
	}
}

void practica4b1() {
	int rojo, verde, azul;

	filaElegida = -1;
	columnaElegida = -1;
	colorElegido = -1;

	xil_printf("Introduzca fila (1-16): ");
	filaElegida = getNumberInRange(1, 16);
	if (filaElegida == -1) {
		xil_printf("Opcion cancelada\r\n");
		return;
	} else {
		filaElegida--;
	}

	xil_printf("Introduzca columna (1-8): ");
	columnaElegida = getNumberInRange(1, 8);
	if (columnaElegida == -1) {
		xil_printf("Opcion cancelada\r\n");
		return;
	} else {
		columnaElegida--;
	}

	xil_printf("Introduzca valor para el color ROJO (0-7): ");
	rojo = getNumberInRange(0, 7);
	if (rojo == -1) {
		xil_printf("Opcion cancelada\r\n");
		return;
	}

	xil_printf("Introduzca valor para el color VERDE (0-7): ");
	verde = getNumberInRange(0, 7);
	if (verde == -1) {
		xil_printf("Opcion cancelada\r\n");
		return;
	}

	xil_printf("Introduzca valor para el color AZUL (0-7): ");
	azul = getNumberInRange(0, 7);
	if (azul == -1) {
		xil_printf("Opcion cancelada\r\n");
		return;
	}
	colorElegido = (rojo << 6) + (verde << 3) + (azul);
}

void practica4b3() {
	int numFilas;
	int numColumnas;

	xil_printf("Introduzca numero maximo de filas deseadas (1-15): ");
	numFilas = getNumberInRange(1, 15);
	if (numFilas == -1) {
		xil_printf("Opcion cancelada\r\n");
		return;
	}

	xil_printf("Introduzca numero maximo de columnas deseadas (1-15): ");
	numColumnas = getNumberInRange(1, 15);
	if (columnaElegida == -1) {
		xil_printf("Opcion cancelada\r\n");
		return;
	}

	nfilas = numFilas;
	ncolumnas = numColumnas;
}

int main() {
    int color;
    Xuint8 byte = 0;
	Xuint32 Data;
	char fila, columna, posicion;

    xil_printf("Practica 4 por Nestor Marin y Ricardo Palomares\r\n\r\n");

	// Inicializamos la fila, la columna y el color elegido a un valor no válido
	filaElegida = -1;
	columnaElegida = -1;
	colorElegido = -1;

    // Mientras no pulse 'X' o 'x'
    while ((byte != 0x58) && (byte != 0x78)) {
		while (!(NRVGAP_mWriteFIFOFull(XPAR_NRVGAP_0_BASEADDR))) {
			/* La pantalla es un array de 16 filas por 8 columnas
			 * Se accede a una posición dada por columna*16+fila
			 * El dato hay que enviarlo con el siguiente formato
			 * 7 bits menos significativos (bits 6..0) la posición			 *
			 * 9 bits mas significativos (bits 31 .. 23) el color
			 * bits 16-13 para fila modificada
			 * bits 12-9 para columna modificada
			 */
			for (fila = 0; fila < nfilas; fila++) {
				for (columna = 0; columna < ncolumnas; columna++) {
					posicion = columna * nfilas + fila;

					if ((columna == columnaElegida) && (fila = filaElegida)) {
						color = colorElegido;
					} else {
						if ((columna + fila) % 2 == 0) {
							color = BLANCO;
						} else {
							color = NEGRO;
						}
					}

					Data = ((color & 0x1FF) << 23)   |
						   ((nfilas & 0x1F) << 13)   |
						   ((ncolumnas & 0x1F) << 9) |
						   (posicion & 0x7F);
					NRVGAP_mWriteToFIFO(XPAR_NRVGAP_0_BASEADDR, 0, Data);
					xil_printf("Data configuracion =%d %d %08x\r\n", fila,
							columna, Data);
				}
			}
		}

		xil_printf("Elija una opcion:\r\n");
        xil_printf("  (La parte a es mostrar el tablero)");
        xil_printf("  b. (Parte b1) de la practica - colorear un recuadro\r\n");
        xil_printf("  c. (Parte b3) de la práctica - Establecer filas y columnas por software\r\n");
        xil_printf("  x. Salir\r\n");

        // Filtra los caracteres LF y CR
    	byte = XUartLite_RecvByte(XPAR_XPS_UARTLITE_0_BASEADDR);

        while ((byte == 0x0A) || (byte == 0x0D)) {
        	byte = XUartLite_RecvByte(XPAR_XPS_UARTLITE_0_BASEADDR);
        }

        switch (byte) {
            case 0x62: // 'b'
            	xil_printf("Ha elegido la opcion b1.\r\n");
            	practica4b1();
            	break;
            case 0x63: // 'c'
            	xil_printf("Ha elegido la opcion b3.\r\n");
            	practica4b3();
            	break;
            default: // otro caracter
                xil_printf("Debe introducir una de las opciones del menu (b, c).\r\n");
        }
    }

    xil_printf("Ha elegido salir del menu. Fin de la ejecucion del programa de Spartan.\r\n");
    xil_printf("Practica 4 por Nestor Marin y Ricardo Palomares\r\n\r\n");
    return 0;
}
