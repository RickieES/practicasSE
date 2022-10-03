#include <stdio.h>
#include <xstatus.h>
#include "xparameters.h"
#include "xil_cache.h"
#include "xuartlite_i.h"
#include "xbasic_types.h"
#include "xgpio.h"
#include "gpio_header.h"

#define XPAR_LEDS_DEVICE_ID (0x81400000)
#define XPAR_SWITCHES_DEVICE_ID (0x81420000)
#define XPAR_RS232_UART_1_BASEADDR (0x84000000)

/*
 * Muestra el men� de la pr�ctica b. Est� pensado para poder ser llamado desde
 * una funci�n displayCMenu que a�ada la opci�n pedida en el apartado c de la pr�ctica
 */
void displayBMenu() {
    xil_printf("Elija una opci�n:\r\n");
    xil_printf("  a. Introducir primer operando\r\n");
    xil_printf("  b. Introducir segundo operando\r\n");
    xil_printf("  c. Obtener resta de operandos\r\n");
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
	
		// Recibe bytes de la UART hasta que se reciba RETURN (0x0D o 0x0A)
		while(byte != 0x0d && byte != 0x0A){
			byte = XUartLite_RecvByte(XPAR_RS232_UART_1_BASEADDR);
			uartBuffer[digitIndex] = byte; 
			XUartLite_SendByte(XPAR_RS232_UART_1_BASEADDR, byte);
			digitIndex++;
		}

		// Calcula el n�mero a partir de la cadena de d�gitos recibidos
		for(c = 0; c < (digitIndex - 1); c++){
			if(c == 0){
				// Comprueba si el primer byte es un signo "-"
				if(uartBuffer[c] == 0x2D){
					sign = -1;
					digit = 0;
				}
				// Comprueba si el primer byte es un d�gito, que en
                // ASCII van de 0x30 ("0") a 0x39 ("9")
				else if((uartBuffer[c] >> 4) == 0x03){
					sign = 1;
					digit = (uartBuffer[c] & 0x0F);
				}
				else	
					validNumber = XFALSE;	
			}
			else{
				// Comprueba si el byte es un d�gito en ASCII
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
			xil_printf("Esto no es un n�mero v�lido.\n\r");
			return 256;
		}
	}
}

void displayOperandInLEDs(int number) {
	XGpio Gpio_LEDs; /* The driver instance for GPIO Device configured as Salida */
    u32  Data;

	Xil_ICacheEnable();
    Xil_DCacheEnable();

	// Configuraci�n de la GPIO para los LEDs de la placa extendida
	XGpio_Initialize(&Gpio_LEDs, (u16) XPAR_LEDS_DEVICE_ID); /*Obtiene el puntero a la estructura */
	XGpio_SetDataDirection(&Gpio_LEDs, 1, 0x0); /*Coloca la direcci�n de salida */

    /* Para escribir un dato cualquiera (por ejemplo 5) hacemos
	 * Data=0x00000005;
     */
    Data = (u32) number;
	XGpio_DiscreteWrite(&Gpio_LEDs, 1, Data);

	Xil_ICacheDisable();
    Xil_DCacheDisable();
}

void displayOperandInScreen(int number) {
    int i = 0;
	Xuint8 uartBuffer[16];

    while (number > 0) {
        uartBuffer[i] = (number % 10) + 0x30;
        number = number / 10;
        i++;
    }

    for(; i >= 0; i--) {
	    XUartLite_SendByte(XPAR_RS232_UART_1_BASEADDR, uartBuffer[i]);	
    }
	xil_printf("\r\n");
}

void practica2b() {
    Xuint8 byte = 0;
    int firstOperand = 0;
    int secondOperand = 0;
    int difference = 0;

    while (byte != 0x78) {
        displayBMenu();
        xil_printf("  x. Salir\r\n");
    	byte = XUartLite_RecvByte(XPAR_RS232_UART_1_BASEADDR);
        switch (byte) {
            case 0x61: // 'a'
                firstOperand = getNumber();
                if (firstOperand < 256) {
                    displayOperandInLEDs(firstOperand);
                    displayOperandInScreen(firstOperand);
                }
            case 0x62: // 'b'
                secondOperand = getNumber();
                if (secondOperand < 256) {
                    displayOperandInLEDs(secondOperand);
                    displayOperandInScreen(secondOperand);
                }
            case 0x63: // 'c'
                if ((firstOperand < 256) && (secondOperand < 256)) {
                    difference = firstOperand - secondOperand;
                    displayOperandInLEDs(difference);
                    displayOperandInScreen(difference);
                }
            case 0x78: // 'x'
            	xil_printf("Saliendo al men� principal...");
            default: // otro car�cter
                xil_printf("Debe introducir una de las opciones del men� (a, b, c).\r\n");
        }
    }
}
