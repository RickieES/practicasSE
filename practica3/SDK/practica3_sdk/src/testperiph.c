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
#include "xbasic_types.h"
#include "xbram.h"
#include "bram_header.h"
#include "top_sumador.h"


int getSingleDigitNumber (){
	Xuint8 byte;
	Xboolean validNumber;
	int digit;

	byte = 0x00;
	digit = 0;
	validNumber = XFALSE;

	// Get bytes from UART until a digit is entered
	while(validNumber == XFALSE){
		byte = XUartLite_RecvByte(XPAR_XPS_UARTLITE_0_BASEADDR);
		// Only needed if byte must be resent through UART to remote terminal
		// XUartLite_SendByte(XPAR_RS232_UART_1_BASEADDR,byte);

		// Check if byte is an ASCII digit
		if((byte >> 4) == 0x03){
			// Put in digit the decimal value of the ASCII char
			// (ie.: ASCII "0" --> 0x30 --> digit = 0; ASCII "7" --> 0x37 --> digit = 7;)
			digit = (byte & 0x0F);
			validNumber = XTRUE;
		}
	}
	return digit;
}

int getNumber() {
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
		// Envia un salto de linea
		XUartLite_SendByte(XPAR_XPS_UARTLITE_0_BASEADDR, (Xuint8) 0x0A);

		// Calcula el numero a partir de la cadena de digitos recibidos
		for(c = 0; c < digitIndex; c++){
			if(c == 0){
				// Comprueba si el primer byte es un signo "-"
				if(uartBuffer[c] == 0x2D){
					sign = -1;
					digit = 0;
				}
				// Comprueba si el primer byte es un digito, que en
				// ASCII van de 0x30 ("0") a 0x39 ("9")
				else if((uartBuffer[c] >> 4) == 0x03){
					sign = 1;
					digit = (uartBuffer[c] & 0x0F);
				}
				else	
					validNumber = XFALSE;	
			}
			else{
				// Comprueba si el byte es un digito en ASCII
				if((uartBuffer[c] >> 4) == 0x03){  
					digit = (uartBuffer[c] & 0x0F);
				}
				else	
					validNumber = XFALSE;				
			}
			number = (number * 10) + digit;	
		}
		number *= sign;
		if(validNumber == XTRUE){
			return number;
		} else {
			xil_printf("Esto no es un numero valido.\n\r");
			return -1;
		}
	}
}

int main() 
{
	Xuint8 byte = 0;
	int singleDigit = 0;
	int firstOperand = 0;
	int secondOperand = 0;
	int result = 0;

	xil_printf("Practica 3 por Nestor Marin y Ricardo Palomares\r\n\r\n");

	// Mientras no pulse 'X' o 'x'
	while ((byte != 0x58) && (byte != 0x78)) {
		xil_printf("Elija una opcion:\r\n");
		xil_printf("  a. Elegir operacion\r\n");
		xil_printf("  b. Introducir primer operando\r\n");
		xil_printf("  c. Introducir segundo operando\r\n");
		xil_printf("  d. Recibir resultado\r\n");
		xil_printf("  x. Salir\r\n");

		// Filtra los caracteres LF y CR
		byte = XUartLite_RecvByte(XPAR_XPS_UARTLITE_0_BASEADDR);
		while ((byte == 0x0A) || (byte == 0x0D)) {
			byte = XUartLite_RecvByte(XPAR_XPS_UARTLITE_0_BASEADDR);
		}

		switch (byte) {
		case 'a':
			xil_printf("Introduzca operando (1 para sumar, 2 para restar): ");
			singleDigit = getSingleDigitNumber();
			if (singleDigit == 1 || singleDigit == 2) {
				TOP_SUMADOR_mWriteSlaveReg0(XPAR_TOP_SUMADOR_0_BASEADDR,0,
						(singleDigit==1) ? 0 : -1);
				xil_printf("\r\nHa elegido el operando %s\r\n", (singleDigit ==1) ? "+" : "-");
			} else {
				xil_printf("\r\nValor introducido no valido. Los valores admitidos son 1 y 2.\r\n");
			}
			xil_printf("\r\n");
			break;
		case 'b':
			xil_printf(" Introduzca primer operando: ");
			firstOperand = getNumber();
			if (firstOperand > 0) {
				TOP_SUMADOR_mWriteSlaveReg1(XPAR_TOP_SUMADOR_0_BASEADDR,0,firstOperand);
				xil_printf("\r\nEl valor guardado es: %d\r\n",
						TOP_SUMADOR_mReadSlaveReg1(XPAR_TOP_SUMADOR_0_BASEADDR,0));
			}
			break;
		case 'c':
			xil_printf(" Introduzca segundo operando: ");
			secondOperand = getNumber();
			if (secondOperand > 0) {
				TOP_SUMADOR_mWriteSlaveReg2(XPAR_TOP_SUMADOR_0_BASEADDR,0,secondOperand);
				xil_printf("\r\nEl valor guardado es: %d\r\n",
						TOP_SUMADOR_mReadSlaveReg2(XPAR_TOP_SUMADOR_0_BASEADDR,0));
			}
			break;
		case 'd':
			if ((firstOperand > 0) && (secondOperand > 0)) {
				// Debemos "escribir" antes de leer para forzar el calculo de la operacion
				TOP_SUMADOR_mWriteSlaveReg3(XPAR_TOP_SUMADOR_0_BASEADDR,0,0);
				result = TOP_SUMADOR_mReadSlaveReg3(XPAR_TOP_SUMADOR_0_BASEADDR,0);
				xil_printf("\r\nEl resultado es: %d \n\r ", result);
			}
			break;
			//            default: // otro caracter
			//                xil_printf("Debe introducir una de las opciones del menu (a, b, c).\r\n");
		}
	}
	xil_printf("Ha elegido salir del menu. Fin de la ejecucion del programa de Spartan.\r\n");
	xil_printf("Practica 3 por Nestor Marin y Ricardo Palomares\r\n\r\n");

	return 0;
}
