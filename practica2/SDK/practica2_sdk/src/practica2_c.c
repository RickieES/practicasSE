#include <stdio.h>
#include <xstatus.h>
#include "xparameters.h"
#include "xil_cache.h"
#include "xuartlite_i.h"
#include "xbasic_types.h"
#include "xgpio.h"
#include "practica2.h"

void displaySwitchesValue(XGpio GpioSwitches, XGpio GpioLEDs) {
	u32 DataRead;
	   Xil_DCacheEnable();
	   Xil_ICacheEnable();

	/*
	 * Lee el valor de los switches y lo escribe en los LEDs
	 */
    DataRead = XGpio_DiscreteRead(&GpioSwitches, SWITCHES_CHANNEL);
    xil_printf("El valor leido de los switches es %d\r\n", DataRead);
	XGpio_DiscreteWrite(&GpioLEDs, LED_CHANNEL, DataRead);
	   Xil_DCacheDisable();
	   Xil_ICacheDisable();
}
