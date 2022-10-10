#include <stdio.h>
#include <xstatus.h>
#include "xparameters.h"
#include "xil_cache.h"
#include "xuartlite_i.h"
#include "xbasic_types.h"
#include "xgpio.h"
#include "practica2.h"

void displaySwitchesValue() {
	XGpio GpioSwitches;  /* The driver instance for GPIO Device configured as Entrada */
	XGpio Gpio_LEDs;     /* The driver instance for GPIO Device configured as Salida */
	u32 DataRead;
	int status;

	Xil_ICacheEnable();
    Xil_DCacheEnable();

	// Configuración de la GPIO para los Switches
	status = XGpio_Initialize(&GpioSwitches, (u16) XPAR_SWITCHES_DEVICE_ID); /*Obtiene el puntero a la estructura */
	if (status != XST_SUCCESS) {
		xil_printf("No se han podido inicializar los SWITCHES\r\n");
		return XST_FAILURE;
	}
	XGpio_SetDataDirection(&GpioSwitches, SWITCHES_CHANNEL, 0xFF); /*Coloca la dirección de entrada */

	// Configuración de la GPIO para los LEDs de la placa extendida
	status = XGpio_Initialize(&Gpio_LEDs, (u16) XPAR_LEDS_DEVICE_ID); /*Obtiene el puntero a la estructura */
	if (status != XST_SUCCESS) {
		xil_printf("No se han podido inicializar los LED\r\n");
		return XST_FAILURE;
	}
	XGpio_SetDataDirection(&Gpio_LEDs, LED_CHANNEL, 0x0); /*Coloca la dirección de salida */

	/*
	 * Lee el valor de los switches y lo escribe en los LEDs
	 */
    DataRead = XGpio_DiscreteRead(&GpioSwitches, SWITCHES_CHANNEL);
    xil_printf("El valor leido de los switches es %d\r\n", DataRead);
	XGpio_DiscreteWrite(&Gpio_LEDs, LED_CHANNEL, DataRead);
}
