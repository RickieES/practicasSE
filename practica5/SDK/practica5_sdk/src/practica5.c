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
#include <string.h>
#include "xparameters.h"
//#include "xil_cache.h"
//#include "xbasic_types.h"
//#include "xbram.h"
#include "top_lcd.h"
#include "top_keypad.h"
#define CADENA_CORTA "Hola, mundo"
#define CADENA_LARGA "Jovencillo echado a perder por el whisky: que figurota exhibe!"

char primeraFila[40];
char segundaFila[40];

int getSingleDigitNumber() {
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

void my_delay(int delay) {
	int i, j;

	for(i = 0; i < delay; i = i + 1)
		for(j = 0; j < 500; j = j + 1){}
}

void TOP_LCD_enviarCMD(Xuint32 cmd) {
	// Comprobamos que la FIFO no esté llena
	while(TOP_LCD_mWriteFIFOFull(XPAR_TOP_LCD_0_BASEADDR)){}
	// Escribimos el comando en la FIFO
	TOP_LCD_mWriteToFIFO(XPAR_TOP_LCD_0_BASEADDR, 0, cmd);
}

void TOP_LCD_inicializa() {
	TOP_LCD_mResetWriteFIFO(XPAR_TOP_LCD_0_BASEADDR);
	TOP_LCD_enviarCMD(CLEAR_DISPLAY_CMD);
	TOP_LCD_enviarCMD(RETURN_HOME_CMD); // moverse al comienzo de la pantalla LCD
	TOP_LCD_enviarCMD(WRITE_CMD); // primera escritura
}

void TOP_LCD_enviarcadena(char s[]) {
	int i = 0;
	int j = 0;
	int slen = strlen(s);
	// Se asume que la cadena es inferior a 80 caracteres

	// Si la cadena es superior a 40 caracteres, busca el último espacio antes de
	// la posición 39 y divide la cadena entre las dos filas
	if (slen > 40) {
		i = 39;
		while ((i > 0) && (j == 0)) {
			if (s[i] == ' ')
				j = i;
			i--;
		}

		xil_printf("slen: %d, i: %d, j: %d\r\n", slen, i, j);

		for(i = 0; i < j; i++) {
			primeraFila[i] = s[i];
		}

		// Marca el final de la primera línea
		primeraFila[j] = '\0';

		// Copia desde el carácter siguiente al final de la primera línea
		// hasta que se agotan los 40 caracteres o el texto
		for(i = j + 1; (i < (j + 41)) && (i < slen); i++) {
			segundaFila[i - (j + 1)] = s[i];
		}
		segundaFila[i - (j + 1)] = '\0';

		// Impresión de depuración
		xil_printf("Primera fila: %s\r\n", primeraFila);
		xil_printf("Segunda fila: %s\r\n", segundaFila);
	} else {
		// Copia en la primera fila la cadena y marca como vacía la segunda fila
		strncpy(primeraFila, s, 40);
		segundaFila[0] = '\0';
	}

	for(i = 0; i < strlen(primeraFila); i++) {
		TOP_LCD_enviarCMD(WRITE_CMD + primeraFila[i]);
	}

	if (strlen(segundaFila) > 0) {
		TOP_LCD_enviarCMD(SECOND_ROW);
		for(i = 0; i < strlen(segundaFila); i++) {
			TOP_LCD_enviarCMD(WRITE_CMD + segundaFila[i]);
		}
	}
}

void scrollLCD(Xuint32 cmd) {
	int i = 0;
	int maxlen = strlen(primeraFila);
	maxlen = (strlen(segundaFila) > maxlen) ? strlen(segundaFila) : maxlen;

	for(i = 0; i < (maxlen - 16); i++) {
		TOP_LCD_enviarCMD(cmd);
		my_delay(300);
	}
}

char *leerKeypad() {
	Xuint32 entrada;
	Xuint32 teclaOld;
	char keypad[80];
	char caracter;
	int pos = 0;
	int salir = 0;
	int teclaPulsada = 0;

	entrada = TOP_KEYPAD_mReadReg(XPAR_TOP_KEYPAD_0_BASEADDR, 0);
	// xil_printf("Se ha leido %x del registro 0 del teclado \n\r", entrada);
	/* Se escribe un 0 para borrar la última tecla leída */
	TOP_KEYPAD_mWriteReg(XPAR_TOP_KEYPAD_0_BASEADDR, 0, 0);
	/* Se guarda el último valor recibido para compararlo con el siguiente */
	teclaOld = entrada;
	while ((pos < 80) && !salir) {
		entrada = TOP_KEYPAD_mReadReg(XPAR_TOP_KEYPAD_0_BASEADDR, 0);
        /* Se escribe un 0 para borrar la última tecla leída */
		TOP_KEYPAD_mWriteReg(XPAR_TOP_KEYPAD_0_BASEADDR, 0 ,0);
		if (entrada != teclaOld) {
			// xil_printf("Se ha leido %x del registro 0 del teclado \n\r", entrada);
			teclaOld = entrada;
			/* Hacemos AND con el bit que marca si se ha pulsado una tecla */
			teclaPulsada = (entrada && 0x1);
			// xil_printf("  El valor de teclaPulsada es %d\n\r", teclaPulsada);
		}
		if (teclaPulsada) {
			/* La tecla pulsada se recibe en los bits 27-31, así que los desplazamos */
			caracter = (char) (entrada >> 28);
			// xil_printf("  El valor de caracter es %c\n\r", caracter);
			/* Se termina cuando se pulsa la tecla F */
            salir = (caracter == 0x0F);
    		// xil_printf("  El valor de salir es %d\n\r", salir);
            if (!salir) {
            	/* Si el caracter está entre 0xA y 0xE (10 y 14), añadimos la letra mayúscula
            	 * sumando 55 al valor, de modo que 65 es 'A', 66 es 'B?', etc.; si no,
            	 * añadimos 48 al valor, de modo 48 es '0', 49 es '1', etc.
            	 */
            	caracter = (caracter > 9) ? (0x37 + caracter) : (0x30 + caracter);
    			xil_printf("  Se va a agregar a la cadena %c\n\r", caracter);
            	keypad[pos] = caracter;
            	pos++;
            }
		}
	}
	return &keypad;
}

int main() {
	Xuint8 byte = 0;

	xil_printf("Practica 5 por Nestor Marin y Ricardo Palomares\r\n\r\n");

	// Mientras no pulse 'X' o 'x'
	while ((byte != 0x58) && (byte != 0x78)) {
		xil_printf("Elija una opcion:\r\n");
		xil_printf("  a. Enviar Hola mundo\r\n");
		xil_printf("  b. Enviar cadena larga\r\n");
		xil_printf("  c. Desplazar texto a izquierda\r\n");
		xil_printf("  d. Desplazar texto a derecha\r\n");
		xil_printf("  e. Leer del keypad hasta que se pulse 'F'\r\n");
		xil_printf("  f. Leer del keypad hasta que se pulse 'F' y enviarlo al LCD\r\n");
		xil_printf("  x. Salir\r\n");

		// Filtra los caracteres LF y CR
		byte = XUartLite_RecvByte(XPAR_XPS_UARTLITE_0_BASEADDR);
		while ((byte == 0x0A) || (byte == 0x0D)) {
			byte = XUartLite_RecvByte(XPAR_XPS_UARTLITE_0_BASEADDR);
		}

		switch (byte) {
		case 'a':
			TOP_LCD_inicializa();
			TOP_LCD_enviarcadena(CADENA_CORTA);
			break;
		case 'b':
			TOP_LCD_inicializa();
			TOP_LCD_enviarcadena(CADENA_LARGA);
			break;
		case 'c':
			scrollLCD(L2R_SCROLLVIEWPORT_CMD);
			break;
		case 'd':
			scrollLCD(R2L_SCROLLVIEWPORT_CMD);
			break;
		case 'e':
			xil_printf("Cadena leida: %s\r\n", leerKeypad());
			break;
		case 'f':
			TOP_LCD_inicializa();
			TOP_LCD_enviarcadena(leerKeypad());
			xil_printf("Cadena enviada a LCD\r\n");
			break;
			//            default: // otro caracter
			//                xil_printf("Debe introducir una de las opciones del menu (a, b, c).\r\n");
		}
	}
	xil_printf("Ha elegido salir del menu. Fin de la ejecucion del programa de Spartan.\r\n");
	xil_printf("Practica 5 por Nestor Marin y Ricardo Palomares\r\n\r\n");

	return 0;
}
