#include <stdio.h>
#include <xstatus.h>
#include "xparameters.h"
#include "xil_cache.h"
#include "uartlite_header.h"
#include "xbasic_types.h"
#include "xgpio.h"
/*#include "gpio_header.h"
*/
#define LEDs_HW_BASEaddress (0x81420000)
#define XPAR_RS232_UART_1_BASEADDR 0x84000000

/*
 * Muestra el menú de la práctica b. Está pensado para poder ser llamado desde
 * una función displayCMenu que añada la opción pedida en el apartado c de la práctica
 */
void displayBMenu() {
    xil_printf("Elija una opción:\r\n");
    xil_printf("  a. Introducir primer operando\r\n");
    xil_printf("  b. Introducir segundo operando\r\n");
    xil_printf("  c. Obtener resta de operandos\r\n");
}

int getNumber (){
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
			XUartLite_SendByte(XPAR_RS232_UART_1_BASEADDR,byte);
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
		}
		xil_print("Esto no es un número válido.\n\r");
	}
}



















































int getSingleDigitNumber (){
	Xuint8 byte;
	Xuint8 uartBuffer[16];
	Xboolean validNumber;
	int digitIndex;
	int digit;
	
	byte = 0x00;
	digit = 0;
	validNumber = XFALSE;

	// Get bytes from uart until a digit is entered
	while(validNumber == XFALSE){
		byte = XUartLite_RecvByte(XPAR_RS232_UART_1_BASEADDR);
        // Only needed if byte must be resent through UART to remote terminal
		// XUartLite_SendByte(XPAR_RS232_UART_1_BASEADDR,byte);

		// Check if byte is an ASCII digit
		if((byte >> 4) == 0x03){
            // Put in digit the decimal value of the ASCII char
            // (ie.: ASCII "0" --> 0x30 --> digit = 0; ASCII "7" --> 0x37 --> digit = 7;)
			digit = (byte & 0x0F);
            validNumber = XTRUE
		}
	}
    return digit;
}

void lightLEDs(int digit) {
	XGpio Gpio_LEDs; /* The driver instance for GPIO Device configured as Salida */
    u32  Data;

	Xil_ICacheEnable();
    Xil_DCacheEnable();

	// Configuración de la GPIO para los LEDs de la placa extendida
	XGpio_Initialize(&Gpio_LEDs, XPAR_LEDS_DEVICE_ID); /*Obtiene el puntero a la estructura */
	XGpio_SetDataDirection(&Gpio_LEDs, 1, 0x0); /*Coloca la dirección de salida */

    /* Para escribir una dato cualquiera (por ejemplo 5) hacemos
	 * Data=0x00000005;
    */
    Data = (u32) digit;
	XGpio_DiscreteWrite(&Gpio_LEDs, 1, Data);
}

