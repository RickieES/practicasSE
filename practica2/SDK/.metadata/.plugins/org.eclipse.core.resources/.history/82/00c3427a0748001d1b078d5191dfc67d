#include <stdio.h>
#include <xstatus.h>
#include "xparameters.h"
#include "xil_cache.h"
#include "xuartlite_i.h"
#include "xbasic_types.h"
#include "xgpio.h"
#include "gpio_header.h"
#include "practica2.h"

/*
 * Muestra el menú de la práctica b. Está pensado para poder ser llamado desde
 * una función displayCMenu que añada la opción pedida en el apartado c de la práctica
 */
void displayBMenu() {
    xil_printf("Elija una opcion:\r\n");
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

		while(byte == 0x0d || byte == 0x0A) {
			byte = XUartLite_RecvByte(XPAR_XPS_UARTLITE_0_BASEADDR);
		}
	
		// Recibe bytes de la UART hasta que se reciba RETURN (0x0D o 0x0A)
		while(byte != 0x0d && byte != 0x0A){
			byte = XUartLite_RecvByte(XPAR_XPS_UARTLITE_0_BASEADDR);
			uartBuffer[digitIndex] = byte; 
			XUartLite_SendByte(XPAR_XPS_UARTLITE_0_BASEADDR, byte);
			digitIndex++;
		}

		// Calcula el número a partir de la cadena de dígitos recibidos
		for(c = 0; c < (digitIndex - 1); c++){
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
		if(validNumber == XTRUE){
			return number;
		} else {
			xil_printf("Esto no es un numero valido.\n\r");
			return 256;
		}
	}
}

void displayOperandInLEDs(int number) {
	XGpio Gpio_LEDs; /* The driver instance for GPIO Device configured as Salida */
    u32  Data;
    int status;

	Xil_ICacheEnable();
    Xil_DCacheEnable();

	// Configuración de la GPIO para los LEDs de la placa extendida
	status = XGpio_Initialize(&Gpio_LEDs, (u16) XPAR_LEDS_DEVICE_ID); /*Obtiene el puntero a la estructura */
	if (status != XST_SUCCESS) {
		xil_printf("No se han podido inicializar los LED\r\n");
		return XST_FAILURE;
	}

	XGpio_SetDataDirection(&Gpio_LEDs, 1, 0x0); /*Coloca la dirección de salida */

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

    xil_printf("Se va a imprimir el numero %d\r\n", number);
    while (number > 0) {
        uartBuffer[i] = (number % 10) + 0x30;
        number = number / 10;
        i++;
    }

    for(; i >= 0; i--) {
	    XUartLite_SendByte(XPAR_XPS_UARTLITE_0_BASEADDR, uartBuffer[i]);
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
    	byte = XUartLite_RecvByte(XPAR_XPS_UARTLITE_0_BASEADDR);
        switch (byte) {
            case 0x61: // 'a'
            	xil_printf("Ha elegido la opcion a. Introduzca primer operando: ");
                firstOperand = getNumber();
                if (firstOperand < 256) {
                    displayOperandInLEDs(firstOperand);
                    displayOperandInScreen(firstOperand);
                }
                break;
            case 0x62: // 'b'
            	xil_printf("Ha elegido la opcion b. Introduzca segundo operando: ");
                secondOperand = getNumber();
                if (secondOperand < 256) {
                    displayOperandInLEDs(secondOperand);
                    displayOperandInScreen(secondOperand);
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
            case 0x78: // 'x'
            	xil_printf("Saliendo al menu principal...\r\n");
            	break;
            default: // otro carácter
                xil_printf("Debe introducir una de las opciones del menu (a, b, c, x).\r\n");
        }
    }
}
