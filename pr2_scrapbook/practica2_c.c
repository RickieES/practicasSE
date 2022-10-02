#include <stdio.h>
#include <xstatus.h>
#include "xparameters.h"
#include "xil_cache.h"
#include "uartlite_header.h"
#include "xbasic_types.h"
#include "xgpio.h"
#define LEDs_HW_BASEaddress (0x81420000)
#define XPAR_RS232_UART_1_BASEADDR 0x84000000

/*
 * Muestra el menú de la práctica c. Está pensado para poder ser llamado desde
 * una función displayCMenu que añada la opción pedida en el apartado c de la práctica
 */
void displayCMenu() {
    xil_printf("  d. Mostrar valor de switches\r\n");
}

void displaySwitchesValue() {
	XGpio GpioSwitches;  /* The driver instance for GPIO Device configured as Entrada */
	XGpio Gpio_LEDs;     /* The driver instance for GPIO Device configured as Salida */
	u32 DataRead;
	Xil_ICacheEnable();
    Xil_DCacheEnable();

	// Configuración de la GPIO para los Switches
	XGpio_Initialize(&GpioSwitches, XPAR_SWITCHES_DEVICE_ID); /*Obtiene el puntero a la estructura */
	XGpio_SetDataDirection(&GpioSwitches, 1, 0xFF); /*Coloca la dirección de entrada */
	// Configuración de la GPIO para los LEDs de la placa extendida
	XGpio_Initialize(&Gpio_LEDs, XPAR_LEDS_DEVICE_ID); /*Obtiene el puntero a la estructura */
	XGpio_SetDataDirection(&Gpio_LEDs, 1, 0x0); /*Coloca la dirección de salida */

	/*
	 * Lee el valor de los switches y lo escribe en los LEDs
	 */
    DataRead = XGpio_DiscreteRead(&GpioSwitches, 1);
	XGpio_DiscreteWrite(&Gpio_LEDs, 1, DataRead);
}

