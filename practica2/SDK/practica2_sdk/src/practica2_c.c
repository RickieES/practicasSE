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
 * Muestra el men� de la pr�ctica c. Est� pensado para poder ser llamado desde
 * una funci�n displayCMenu que a�ada la opci�n pedida en el apartado c de la pr�ctica
 */
void displayCMenu() {
    xil_printf("  d. Mostrar valor de switches\r\n");
}

void displaySwitchesValue() {
	XGpio GpioSwitches;  /* The driver instance for GPIO Device configured as Entrada */
	XGpio Gpio_LEDs;     /* The driver instance for GPIO Device configured as Salida */
	u32 DataRead;
	int status;

	Xil_ICacheEnable();
    Xil_DCacheEnable();

	// Configuraci�n de la GPIO para los Switches
	status = XGpio_Initialize(&GpioSwitches, (u16) XPAR_SWITCHES_DEVICE_ID); /*Obtiene el puntero a la estructura */
	if (status != XST_SUCCESS) {
		xil_printf("No se han podido inicializar los SWITCHES\r\n");
		return XST_FAILURE;
	}
	XGpio_SetDataDirection(&GpioSwitches, SWITCHES_CHANNEL, 0xFF); /*Coloca la direcci�n de entrada */

	// Configuraci�n de la GPIO para los LEDs de la placa extendida
	status = XGpio_Initialize(&Gpio_LEDs, (u16) XPAR_LEDS_DEVICE_ID); /*Obtiene el puntero a la estructura */
	if (status != XST_SUCCESS) {
		xil_printf("No se han podido inicializar los LED\r\n");
		return XST_FAILURE;
	}
	XGpio_SetDataDirection(&Gpio_LEDs, LED_CHANNEL, 0x0); /*Coloca la direcci�n de salida */

	/*
	 * Lee el valor de los switches y lo escribe en los LEDs
	 */
    DataRead = XGpio_DiscreteRead(&GpioSwitches, SWITCHES_CHANNEL);
    xil_printf("El valor le�do es %d\r\n", DataRead);
	XGpio_DiscreteWrite(&Gpio_LEDs, LED_CHANNEL, DataRead);
}

void practica2c() {
    Xuint8 byte = 0;
    int firstOperand = 0;
    int secondOperand = 0;
    int difference = 0;

    while (byte != 0x78) {
        displayBMenu();
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
                    xil_printf("\r\n");
                }
                break;
            case 0x64: // 'd'
            	displaySwitchesValue();
            	break;
            case 0x78: // 'x'
            	xil_printf("Saliendo al menu principal...");
            	break;
            default: // otro car�cter
                xil_printf("Debe introducir una de las opciones del menu (a, b, c, d, x).\r\n");
        }
    }
}
