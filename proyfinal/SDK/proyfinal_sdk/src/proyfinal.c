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
#define DINERO_INSUFICIENTE "Dinero insuficiente"
#define OPC_NO_VALIDA       "Opcion no valida"
#define AGOTADO             "Producto agotado"
#define ELIGE_PROD          "Elija producto"
#define INTRODUCE_DINERO    "Ingrese monedas"
#define GRACIASXCOMPRA      "Gracias por su compra"

typedef struct {//estructura correspondiente a un producto
	char numProducto[3]; // Numero del producto en el expositor
	char nombre[MAX_LENGTH]; //nombre del producto
	Xint16 precio; //precio del producto
	Xint16 udsDisponibles; //unidades en stock
} tProducto;

tProducto prods[MAX_ITEMS] = { //array de productos
		{ "11", "Coca-Cola", 2, 8 },
		{ "12", "Coca-Cola Zero", 2, 5 },
		{ "13", "Coca-Cola Zero Zero", 2, 1 }, //para probar que no hay existencias
		{ "14", "Sprite", 1, 8 },
		{ "15", "Sprite Zero", 1, 8 },
		{ "16", "Fanta Naranja", 1, 8 },
		{ "17", "Fanta Naranja Zero", 1, 8 },
		{ "18",	"Fanta Limon", 1, 8 },
		{ "19", "Fanta Limon Zero", 1, 8 },
		{ "1A", "Agua aquaBona", 1, 9 },
		{ "1B", "Aquarius Limon", 1, 5 },
		{ "1C",	"Aquarius Naranja", 1, 5 },
		{ "1D", "Nestea", 2, 5 },
		{ "21", "Patatas Fritas", 1, 8 },
		{ "22",	"Sandwich Mixto", 2, 5 },
		{ "23", "Sandwich Pollo", 3, 5 },
		{ "24", "Sandwich Tortilla", 2, 8 },
		{ "25", "Media Noche", 1, 3 },
		{ "31",	"Galletas chocolate", 1, 4 },
		{ "32",	"Kinder Bueno", 2, 4 },
		{ "33", "Bollicao", 2, 4 },
		{ "34", "KitKat", 2, 8 } };

/*
 * Funciones de uso general
 * FIXME: se usa por el motor y por LCDBanner, habrá que sacarlo a un utils.c
 */

//funcion que hace girar el motor 16 posiciones en sentido horario y 16 en sentido antihorario
void giraMotor() {
	Xuint32 Data;
	int i;
	for(i=0; i<15; i++ ){
		Data = 0x9F000000;
		TOP_MOTOR_mWriteReg( XPAR_TOP_MOTOR_0_BASEADDR, 0, Data );
		Data = TOP_MOTOR_mReadReg ( XPAR_TOP_MOTOR_0_BASEADDR, 0);
		while (!(Data & 0x40000000)) {
			Data = TOP_MOTOR_mReadReg ( XPAR_TOP_MOTOR_0_BASEADDR, 0);
		}
	}
	myDelay(1000);
	for(i=0; i<15; i++ ){
		Data = 0x0F000000;
		TOP_MOTOR_mWriteReg ( XPAR_TOP_MOTOR_0_BASEADDR , 0, Data );
		Data = TOP_MOTOR_mReadReg ( XPAR_TOP_MOTOR_0_BASEADDR , 0);
		while (!(Data & 0x40000000)) {
			Data = TOP_MOTOR_mReadReg ( XPAR_TOP_MOTOR_0_BASEADDR , 0);
		}
	}

}

void iluminaPWMLeds(int r, int g, int b) {
	TOP_LEDS_mWriteSlaveReg0(XPAR_TOP_LEDS_0_BASEADDR, 0, r); //Red
	TOP_LEDS_mWriteSlaveReg1(XPAR_TOP_LEDS_0_BASEADDR, 0, g); //Green
	TOP_LEDS_mWriteSlaveReg2(XPAR_TOP_LEDS_0_BASEADDR, 0, b); //Blue
	myDelay(1000);
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
	TOP_KEYPAD_mWriteReg(XPAR_TOP_KEYPAD_0_BASEADDR, 0, 0);
	teclaOld = entrada;
	while ((pos < maxLen) && !salir) {
		entrada = TOP_KEYPAD_mReadReg(XPAR_TOP_KEYPAD_0_BASEADDR, 0);
		TOP_KEYPAD_mWriteReg(XPAR_TOP_KEYPAD_0_BASEADDR, 0, 0);
		if (entrada != teclaOld) {
			teclaOld = entrada;
			/* Hacemos AND con el bit que marca si se ha pulsado una tecla */
			teclaPulsada = (entrada && 0x1);
		}
		if (teclaPulsada) {
			/* La tecla pulsada se recibe en los bits 27-31, asi que los desplazamos */
			caracter = (char) (entrada >> 28);
			/* Se termina cuando se pulsa la tecla F o se alcanza la longitud maxima */
			salir = (caracter == 0x0F);
			if (!salir) {
				/* Si el caracter esta entre 0xA y 0xE (10 y 14), anadimos la letra mayuscula
				 * sumando 55 al valor, de modo que 65 es 'A', 66 es 'B?', etc.; si no,
				 * anadimos 48 al valor, de modo 48 es '0', 49 es '1', etc.
				 */
				caracter = (caracter > 9) ? (0x37 + caracter) : (0x30 + caracter);
				xil_printf("%c", caracter);
				keypad[pos] = caracter;
				pos++;
			} else {
				keypad[pos] = '\0';
			}
		}
	}
	return &keypad;
}

int leerNumeroDeKeypad() {
	Xboolean validNumber = XTRUE;
	char *entrada;
	int digitIndex;
	int digit;
	int c;
	int number = 0;

	entrada = leerKeypad(2);
	digitIndex = strlen(entrada);
	// Calcula el numero a partir de la cadena de digitos recibidos
	for(c = 0; c < digitIndex; c++) {
		// Comprueba si el byte es un digito en ASCII
		if((entrada[c] >> 4) == 0x03){
			digit = (entrada[c] & 0x0F);
			number = (number * 10) + digit;
		} else
			validNumber = XFALSE;
	}
	if(validNumber == XTRUE) {
		return number;
	} else {
		xil_printf("Esto no es un numero valido.\n\r");
		return -1;
	}
}

void menu() {//menu que se muestra en la terminal
	int i = 0;
	xil_printf("\n--- Maquina expendedora ---\n");
	for (i = 0; i < MAX_ITEMS; i++) {
		xil_printf("%s - %s - Precio: %d EUR - Existencias: %d\n",
				prods[i].numProducto, prods[i].nombre, prods[i].precio,
				prods[i].udsDisponibles);
	}
	xil_printf("\nSeleccione un articulo en el keypad: ");
}

int main() {
	int dinero = 0;
	int elegido;
	char *entrada;

	Xil_ICacheEnable();
	Xil_DCacheEnable();

	while (1) {
		menu();
		TOP_LCDBANNER_enviarCMD2LCD(SCROLLBANNER);
		TOP_LCDBANNER_inicializaLCD();
		TOP_LCDBANNER_enviarcadena2LCD(ELIGE_PROD);

		entrada = leerKeypad(2);
		xil_printf("\n");

		elegido = 0;
		while ((elegido < MAX_ITEMS) && (strcmp(entrada, prods[elegido].numProducto) != 0))
			elegido++;

		if (elegido == MAX_ITEMS) {
			xil_printf("Opcion no valida.\n");
			TOP_LCDBANNER_inicializaLCD();
			TOP_LCDBANNER_enviarcadena2LCD(OPC_NO_VALIDA);
			iluminaPWMLeds(255, 0, 0);
		} else {
			tProducto prod = prods[elegido];
			xil_printf("Ha seleccionado: %s - EUR %d\n", prod.nombre, prod.precio);
			TOP_LCDBANNER_inicializaLCD();
			TOP_LCDBANNER_enviarcadena2LCD(strcat("Ha elegido: ", prod.nombre));
			TOP_LCDBANNER_scrollLCD(L2R_SCROLLVIEWPORT_CMD);
			myDelay(500);
			TOP_LCDBANNER_scrollLCD(R2L_SCROLLVIEWPORT_CMD);

			if (prod.udsDisponibles == 0) {
				xil_printf("Lo sentimos, producto agotado.\n");
				TOP_LCDBANNER_inicializaLCD();
				TOP_LCDBANNER_enviarcadena2LCD(AGOTADO);
				iluminaPWMLeds(255, 0, 0);
			} else {
				xil_printf("Ingrese dinero (por keypad, valores enteros de 0 a 99, use F para finalizar tras un solo digito): ");
				TOP_LCDBANNER_inicializaLCD();
				TOP_LCDBANNER_enviarcadena2LCD(INTRODUCE_DINERO);
				TOP_LCDBANNER_scrollLCD(L2R_SCROLLVIEWPORT_CMD);
				myDelay(500);
				TOP_LCDBANNER_scrollLCD(R2L_SCROLLVIEWPORT_CMD);
				iluminaPWMLeds(0, 0, 255);
				dinero = leerNumeroDeKeypad(3);
				xil_printf("\nHa introducido: %d EUR\n", dinero);
				if (dinero < prod.precio) {
					xil_printf("Dinero insuficiente.\n");
					TOP_LCDBANNER_inicializaLCD();
					TOP_LCDBANNER_enviarcadena2LCD(DINERO_INSUFICIENTE);
					TOP_LCDBANNER_scrollLCD(L2R_SCROLLVIEWPORT_CMD);
					myDelay(500);
					TOP_LCDBANNER_scrollLCD(R2L_SCROLLVIEWPORT_CMD);
					iluminaPWMLeds(255, 0, 0);
				} else {
					prods[elegido].udsDisponibles--;
					xil_printf("\nRecoja su articulo.\n");
					iluminaPWMLeds(0, 255, 0);
					TOP_LCDBANNER_inicializaLCD();
					TOP_LCDBANNER_enviarcadena2LCD(GRACIASXCOMPRA);
					TOP_LCDBANNER_scrollLCD(L2R_SCROLLVIEWPORT_CMD);
					myDelay(500);
					TOP_LCDBANNER_scrollLCD(R2L_SCROLLVIEWPORT_CMD);
					TOP_LCDBANNER_enviarCMD2LCD(SCROLLBANNER);
					giraMotor();

					xil_printf("Su cambio es: %d\n", dinero - prod.precio);
					//suena el altavoz
					monedasCaen();
					altavozCalla();
					TOP_LCDBANNER_enviarCMD2LCD(STOPBANNER);
				}
			}
		}
		iluminaPWMLeds(0, 0, 0);
	}

	Xil_DCacheDisable();
	Xil_ICacheDisable();
	return 0;
}
