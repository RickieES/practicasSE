/*
 *
 * Xilinx, Inc.
 * XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" AS A 
 * COURTESY TO YOU.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION AS
 * ONE POSSIBLE   IMPLEMENTATION OF THIS FEATURE, APPLICATION OR 
 * STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION 
 * IS FREE FROM ANY CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE 
 * FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION
 * XILINX EXPRESSLY DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO 
 * THE ADEQUACY OF THE IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO 
 * ANY WARRANTIES OR REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE 
 * FROM CLAIMS OF INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY 
 * AND FITNESS FOR A PARTICULAR PURPOSE.
 */

/*
 * 
 *
 * This file is a generated sample test application.
 *
 * This application is intended to test and/or illustrate some 
 * functionality of your system.  The contents of this file may
 * vary depending on the IP in your system and may use existing
 * IP driver functions.  These drivers will be generated in your
 * SDK application project when you run the "Generate Libraries" menu item.
 *
 */

#include <stdio.h>
#include "xparameters.h"
#include "xil_cache.h"
#include "xbasic_types.h"
#include "top_altavoz.h"
#include "top_keypad.h"
#include "top_lcdbanner.h"
#include "top_leds.h"
#include "top_motor.h"

#define MAX_ITEMS 22 //numero de productos en la maquina expendedora
#define MAX_LENGTH 40 //maxima longitud de la linea
#define DINERO_INSUFICIENTE "Dinero insuficiente."
#define OPC_NO_VALIDA "Opcion no valida"
#define AGOTADO "Producto agotado."
#define ELIGE_PROD "Elija un producto."
#define INTRODUCE_DINERO "Introduzca dinero."

typedef struct {//estructura correspondiente a un producto
	char numProducto[2]; // Numero del producto en el expositor
	char nombre[MAX_LENGTH]; //nombre del producto
	float precio; //precio del producto
	int udsDisponibles; //unidades en stock
} tProducto;

tProducto prods[MAX_ITEMS] = { //array de productos
		{ "11", "Coca-Cola", 1.50, 8 },
		{ "12", "Coca-Cola Zero", 1.75, 5 },
		{ "13", "Coca-Cola Zero Zero", 1.75, 5 },
		{ "14", "Sprite", 1.50, 8 },
		{ "15", "Sprite Zero", 1.50, 8 },
		{ "16", "Fanta Naranja", 1.50, 8 },
		{ "17", "Fanta Naranja Zero", 1.50, 8 },
		{ "18",	"Fanta Limon", 1.50, 8 },
		{ "19", "Fanta Limon Zero", 1.50, 8 },
		{ "1A", "Agua aquaBona", 1.00, 9 },
		{ "1B", "Aquarius Limon", 1.00, 5 },
		{ "1C",	"Aquarius Naranja", 1.00, 5 },
		{ "1D", "Nestea", 1.00,	5 },
		{ "21", "Patatas Fritas", 1.50, 8 },
		{ "22",	"Sandwich Mixto", 1.80, 5 },
		{ "23", "Sandwich Pollo", 1.80, 5 },
		{ "24", "Sandwich Tortilla", 1.80, 8 },
		{ "25", "Media Noche", 1.20, 3 },
		{ "31",	"Galletas chocolate", 1.00, 4 },
		{ "32",	"Kinder Bueno", 1.20, 4 },
		{ "33", "Bollicao", 1.20, 4 },
		{ "34", "KitKat", 1.20, 8 } };

/*
 * Funciones de uso general
 * FIXME: se usa por el motor y por LCDBanner, habrá que sacarlo a un utils.c
 */

void myDelay(int delay) {
	int i, j;
	for (i = 0; i < delay; i = i + 1) {
		for (j = 0; j < 500; j = j + 1) {
			//no hago nada
		}
	}
}

int getFloatNumber() {
	Xuint8 byte;
	Xuint8 uartBuffer[16];
	Xboolean validNumber;
	int digitIndex;
	int digit, sign;
	int c;
	int isDecimal;
	float number;

	while(1){
		byte = 0x00;
		digit = 0;
		digitIndex = 0;
		number = 0.0;
		isDecimal = -1;
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
		// Envia un salto de linea
		XUartLite_SendByte(XPAR_XPS_UARTLITE_0_BASEADDR, (Xuint8) 0x0A);

		// Calcula el numero a partir de la cadena de digitos recibidos
		for(c = 0; c < digitIndex; c++){
			if(c == 0){
				// Comprueba si el primer byte es un signo "-"
				if(uartBuffer[c] == 0x2D){
					sign = -1;
					digit = 0;
				}
				// Comprueba si el primer byte es un digito, que en
				// ASCII van de 0x30 ("0") a 0x39 ("9")
				else if((uartBuffer[c] >> 4) == 0x03){
					sign = 1;
					digit = (uartBuffer[c] & 0x0F);
				}
				else
					validNumber = XFALSE;
			}
			else{
				// Comprueba si el byte es un digito en ASCII
				if((uartBuffer[c] >> 4) == 0x03){
					digit = (uartBuffer[c] & 0x0F);
				}
				else if (uartBuffer[c] == '.') {
					if (isDecimal == -1) {
						isDecimal = 0;
					} else {
						// Hay dos puntos decimales
						validNumber = XFALSE;
					}
				} else
					validNumber = XFALSE;
			}

			if (isDecimal > 0) {
				number = (number * 10) + digit;
			} else if (isDecimal == 0) {
				isDecimal = 0.1;
			} else {
				number = number + (digit * isDecimal);
				isDecimal = isDecimal / 10;
			}
		}
		number *= sign;
		if(validNumber == XTRUE){
			return number;
		} else {
			xil_printf("Esto no es un numero valido.\n\r");
			return -1;
		}
	}
}


//funcion que hace girar el motor 16 posiciones en sentido horario y 16 en sentido antihorario
void giraMotor() {
	Xuint32 Data;
	Data = 0x9F000000;
	TOP_MOTOR_mWriteReg( XPAR_TOP_MOTOR_0_BASEADDR, 0, Data );
	Data = TOP_MOTOR_mReadReg ( XPAR_TOP_MOTOR_0_BASEADDR, 0);
	while (!(Data & 0x40000000)) {
		Data = TOP_MOTOR_mReadReg ( XPAR_TOP_MOTOR_0_BASEADDR, 0);
	}
	myDelay(1000);
	Data = 0x0F000000;
	TOP_MOTOR_mWriteReg ( XPAR_TOP_MOTOR_0_BASEADDR , 0, Data );
	Data = TOP_MOTOR_mReadReg ( XPAR_TOP_MOTOR_0_BASEADDR , 0);
	while (!(Data & 0x40000000)) {
		Data = TOP_MOTOR_mReadReg ( XPAR_TOP_MOTOR_0_BASEADDR , 0);
	}
}

void altavozCalla() {
	TOP_ALTAVOZ_mWriteSlaveReg0( XPAR_TOP_ALTAVOZ_0_BASEADDR, 0, SILENCIO );
}

void altavozSuena(Xuint32 nota, Xuint32 octava) {
	TOP_ALTAVOZ_mWriteSlaveReg0(XPAR_TOP_ALTAVOZ_0_BASEADDR , 0, nota << octava );
}

void monedasCaen() {
	int i = 0;
	for (i = 0; i < 5; i++) {
		myDelay(300);
		altavozSuena(MI, OCTAVA);
		myDelay(300);
		altavozSuena(FA, OCTAVA);
		myDelay(300);
		altavozSuena(SOL, OCTAVA);
		myDelay(300);
		altavozSuena(FA, OCTAVA);
		myDelay(300);
		altavozSuena(MI, OCTAVA);
	}
}

char *leerKeypad(int maxLen) {//funcion que lee del keypad
	Xuint32 entrada;
	Xuint32 teclaOld;
	char keypad[80];
	char caracter;
	int pos = 0;
	int salir = 0;
	int teclaPulsada = 0;

	entrada = TOP_KEYPAD_mReadReg(XPAR_TOP_KEYPAD_0_BASEADDR, 0);
	// xil_printf("Se ha leido %x del registro 0 del teclado \n\r", entrada);
	/* Se escribe un 0 para borrar la ï¿½ltima tecla leï¿½da */TOP_KEYPAD_mWriteReg(XPAR_TOP_KEYPAD_0_BASEADDR, 0, 0);
	/* Se guarda el ï¿½ltimo valor recibido para compararlo con el siguiente */
	teclaOld = entrada;
	while ((pos < maxLen) && !salir) {
		entrada = TOP_KEYPAD_mReadReg(XPAR_TOP_KEYPAD_0_BASEADDR, 0);
		/* Se escribe un 0 para borrar la ï¿½ltima tecla leï¿½da */TOP_KEYPAD_mWriteReg(XPAR_TOP_KEYPAD_0_BASEADDR, 0 ,0);
		if (entrada != teclaOld) {
			// xil_printf("Se ha leido %x del registro 0 del teclado \n\r", entrada);
			teclaOld = entrada;
			/* Hacemos AND con el bit que marca si se ha pulsado una tecla */
			teclaPulsada = (entrada && 0x1);
			// xil_printf("  El valor de teclaPulsada es %d\n\r", teclaPulsada);
		}
		if (teclaPulsada) {
			/* La tecla pulsada se recibe en los bits 27-31, asï¿½ que los desplazamos */
			caracter = (char) (entrada >> 28);
			// xil_printf("  El valor de caracter es %c\n\r", caracter);
			/* Se termina cuando se pulsa la tecla F */
			salir = (caracter == 0x0F);
			// xil_printf("  El valor de salir es %d\n\r", salir);
			if (!salir) {
				/* Si el caracter estï¿½ entre 0xA y 0xE (10 y 14), aï¿½adimos la letra mayï¿½scula
				 * sumando 55 al valor, de modo que 65 es 'A', 66 es 'B?', etc.; si no,
				 * aï¿½adimos 48 al valor, de modo 48 es '0', 49 es '1', etc.
				 */
				caracter = (caracter > 9) ? (0x37 + caracter) : (0x30
						+ caracter);
				xil_printf("  Se va a agregar a la cadena %c\n\r", caracter);
				keypad[pos] = caracter;
				pos++;
			}
		}
	}
	return &keypad;
}

void menu() {//menu que se muestra en el termite
	int i = 0;
	xil_printf("\n--- Maquina expendedora ---\n");
	for (i = 0; i < MAX_ITEMS; i++) {
		xil_printf("%s - %s - Precio: %.2f EUR - Existencias: %d\n",
				prods[i].numProducto, prods[i].nombre, prods[i].precio,
				prods[i].udsDisponibles);
	}
	xil_printf("\nSeleccione un articulo: ");
}

int main() {
	float dinero = 0.0;
	int elegido;
	char *entrada;
	char *salida;
	// Xuint32 Data;
	Xil_ICacheEnable();
	Xil_DCacheEnable();

	while (1) {
		menu();
		TOP_LCDBANNER_inicializaLCD();
		TOP_LCDBANNER_enviarcadena2LCD(ELIGE_PROD);

		entrada = leerKeypad(2);

		elegido = 0;
		while ((elegido < MAX_ITEMS) && (strcmp(entrada,
				prods[elegido].numProducto) != 0))
			elegido++;

		if (elegido == MAX_ITEMS) {
			xil_printf("Opcion no valida.\n");
			TOP_LCDBANNER_inicializaLCD();
			TOP_LCDBANNER_enviarcadena2LCD(OPC_NO_VALIDA);
		} else {
			tProducto prod = prods[elegido];
			sprintf(salida, "Ha seleccionado: %s - $%.2f", prod.nombre,	prod.precio);
			xil_printf("\n", salida, "\n");

			TOP_LCDBANNER_inicializaLCD();
			TOP_LCDBANNER_enviarcadena2LCD(salida);
			scrollLCD(L2R_SCROLLVIEWPORT_CMD);
			scrollLCD(R2L_SCROLLVIEWPORT_CMD);

			if (prod.udsDisponibles == 0) {
				xil_printf("Lo sentimos, producto agotado.\n");
				TOP_LCDBANNER_inicializaLCD();
				TOP_LCDBANNER_enviarcadena2LCD(AGOTADO);
				TOP_LEDS_mWriteSlaveReg0(XPAR_TOP_LEDS_0_BASEADDR, 0, 255); //Red
				TOP_LEDS_mWriteSlaveReg1(XPAR_TOP_LEDS_0_BASEADDR, 0, 0); //Green
				TOP_LEDS_mWriteSlaveReg2(XPAR_TOP_LEDS_0_BASEADDR, 0, 0); //Blue
			}

			xil_printf("Ingrese dinero: ");
			TOP_LCDBANNER_inicializaLCD();
			TOP_LCDBANNER_enviarcadena2LCD(INTRODUCE_DINERO);
			TOP_LEDS_mWriteSlaveReg0(XPAR_TOP_LEDS_0_BASEADDR, 0, 0); //Red
			TOP_LEDS_mWriteSlaveReg1(XPAR_TOP_LEDS_0_BASEADDR, 0, 0); //Green
			TOP_LEDS_mWriteSlaveReg2(XPAR_TOP_LEDS_0_BASEADDR, 0, 255); //Blue
			dinero = getFloatNumber();
			if (dinero < prod.precio) {
				xil_printf("Dinero insuficiente.\n");
				TOP_LCDBANNER_inicializaLCD();
				TOP_LCDBANNER_enviarcadena2LCD(DINERO_INSUFICIENTE);
				TOP_LEDS_mWriteSlaveReg0(XPAR_TOP_LEDS_0_BASEADDR, 0, 255); //Red
				TOP_LEDS_mWriteSlaveReg1(XPAR_TOP_LEDS_0_BASEADDR, 0, 0); //Green
				TOP_LEDS_mWriteSlaveReg2(XPAR_TOP_LEDS_0_BASEADDR, 0, 0); //Blue
			}

			prod.udsDisponibles--;

			xil_printf("\nAhi tiene su articulo.\n");

			TOP_LEDS_mWriteSlaveReg0(XPAR_TOP_LEDS_0_BASEADDR, 0, 0); //Red
			TOP_LEDS_mWriteSlaveReg1(XPAR_TOP_LEDS_0_BASEADDR, 0, 255); //Green
			TOP_LEDS_mWriteSlaveReg2(XPAR_TOP_LEDS_0_BASEADDR, 0, 0); //Blue

			giraMotor();

			xil_printf("Su cambio es: %.2f\n", dinero - prod.precio);
			//suena el altavoz
			monedasCaen();
			altavozCalla();
		}
	}

	print("---Exiting main---\n\r");
	Xil_DCacheDisable();
	Xil_ICacheDisable();
	return 0;
}

