/*
 * practica2.h
 *
 *  Created on: 03/10/2022
 *      Author: CJRipa
 */

#ifndef PRACTICA2_H_
#define PRACTICA2_H_

#define XPAR_SWITCHES_BASEADDR  XPAR_XPS_GPIO_0_BASEADDR
#define XPAR_LEDS_BASEADDR      XPAR_XPS_GPIO_1_BASEADDR
#define XPAR_SWITCHES_DEVICE_ID XPAR_XPS_GPIO_0_DEVICE_ID
#define XPAR_LEDS_DEVICE_ID     XPAR_XPS_GPIO_1_DEVICE_ID
#define SWITCHES_CHANNEL 1
#define LED_CHANNEL 1

int getSingleDigitNumber ();
int lightLEDs(int digit);

int getNumber();
void displayOperandInLEDs(int number);
void displayOperandInScreen(int number);
void displaySwitchesValue();

#endif /* PRACTICA2_H_ */
