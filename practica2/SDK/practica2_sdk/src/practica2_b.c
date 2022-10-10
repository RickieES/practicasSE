#include <stdio.h>
#include <xstatus.h>
#include "xparameters.h"
#include "xil_cache.h"
#include "xuartlite_i.h"
#include "xbasic_types.h"
#include "xgpio.h"
#include "practica2.h"

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

    while (number > 0) {
        uartBuffer[i] = (number % 10) + 0x30;
        number = number / 10;
        i++;
    }

    for(--i; i >= 0; i--) {
	    XUartLite_SendByte(XPAR_XPS_UARTLITE_0_BASEADDR, uartBuffer[i]);
    }
	// Envía un salto de línea
	XUartLite_SendByte(XPAR_XPS_UARTLITE_0_BASEADDR, (Xuint8) 0x0A);
}

