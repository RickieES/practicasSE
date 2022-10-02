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

