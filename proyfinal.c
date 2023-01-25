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
#include <string.h>
#include "xparameters.h"
//#include "xil_cache.h"
//#include "xbasic_types.h"
//#include "xbram.h"
#include "top_lcd.h"
#include "top_keypad.h"

#define MAX_ITEMS 15
#define  MAX_LENGTH 40

#define DINERO_INSUFICIENTE "Dinero insuficiente.\n"
#define OPC_NO_VALIDA "Opcion no valida, prueba otra vez.\n"
#define AGOTADO "Lo sentimos, producto agotado.\n"
#define ELIGE_PROD "Elige un producto.\n"
#define INTRODUCE_DINERO "Introduce dinero.\n"

typedef struct {
    char nombre[MAX_LENGTH];
    float precio;
    int udsDisponibles;
}tProducto;

tProducto prods[MAX_ITEMS] = {
    {"Coca-Cola", 1.50, 10},
    {"Pepsi", 1.75, 5},
    {"Sprite", 1.50, 8},
    {"Fanta", 1.50, 12},
    {"Agua", 1.00, 20},
	{"KitKat", 1.20, 8},
	{"Patatas Fritas", 1.50, 8},
	{"Sandwich Mixto", 1.80, 5},
	{"Sandwich Pollo", 1.80, 5},
	{"Sandwich Tortilla", 1.80, 8},
	{"Media Noche", 1.20, 3},
	{"Galletas chocolate", 1.00, 4},
	{"Aquarius", 1.00, 5},
	{"Nestea", 1.00, 5},
	{"Kinder Bueno", 1.20, 4}	
};


void TOP_LCD_enviarcadena(char s[]) {
	int i = 0;
	int j = 0;
	int slen = strlen(s);
	// Se asume que la cadena es inferior a 80 caracteres

	// Si la cadena es superior a 40 caracteres, busca el �ltimo espacio antes de
	// la posici�n 39 y divide la cadena entre las dos filas
	if (slen > 40) {
		i = 39;
		while ((i > 0) && (j == 0)) {
			if (s[i] == ' ')
				j = i;
			i--;
		}

		xil_printf("slen: %d, i: %d, j: %d\r\n", slen, i, j);

		for(i = 0; i < j; i++) {
			primeraFila[i] = s[i];
		}

		// Marca el final de la primera l�nea
		primeraFila[j] = '\0';

		// Copia desde el car�cter siguiente al final de la primera l�nea
		// hasta que se agotan los 40 caracteres o el texto
		for(i = j + 1; (i < (j + 41)) && (i < slen); i++) {
			segundaFila[i - (j + 1)] = s[i];
		}
		segundaFila[i - (j + 1)] = '\0';

		// Impresi�n de depuraci�n
		xil_printf("Primera fila: %s\r\n", primeraFila);
		xil_printf("Segunda fila: %s\r\n", segundaFila);
	} else {
		// Copia en la primera fila la cadena y marca como vac�a la segunda fila
		strncpy(primeraFila, s, 40);
		segundaFila[0] = '\0';
	}

	for(i = 0; i < strlen(primeraFila); i++) {
		TOP_LCD_enviarCMD(WRITE_CMD + primeraFila[i]);
	}

	if (strlen(segundaFila) > 0) {
		TOP_LCD_enviarCMD(SECOND_ROW);
		for(i = 0; i < strlen(segundaFila); i++) {
			TOP_LCD_enviarCMD(WRITE_CMD + segundaFila[i]);
		}
	}
}


void TOP_LCD_enviarCMD(Xuint32 cmd) {
	// Comprobamos que la FIFO no est� llena
	while(TOP_LCD_mWriteFIFOFull(XPAR_TOP_LCD_0_BASEADDR)){}
	// Escribimos el comando en la FIFO
	TOP_LCD_mWriteToFIFO(XPAR_TOP_LCD_0_BASEADDR, 0, cmd);
}

void TOP_LCD_inicializa() {
	TOP_LCD_mResetWriteFIFO(XPAR_TOP_LCD_0_BASEADDR);
	TOP_LCD_enviarCMD(CLEAR_DISPLAY_CMD);
	TOP_LCD_enviarCMD(RETURN_HOME_CMD); // moverse al comienzo de la pantalla LCD
	TOP_LCD_enviarCMD(WRITE_CMD); // primera escritura
}


void menu() {
    xil_printf("\n--- Maquina expendedora ---\n");
    
    for (int i = 0; i < MAX_ITEMS; i++) {
        xil_printf("%d. %s - $%.2f - Productos: %d\n", i+1, prods[i].nombre, prods[i].precio, prods[i].udsDisponibles);
    }
    xil_printf("\nSeleccione un articulo: ");
}

int main() {
    float dinero = 0.0;
    int elegido;
	Xuint32 entrada;

    while (1) {
        menu();
        //scanf("%d", &elegido);
		TOP_LCD_inicializa();
		TOP_LCD_enviarcadena(ELIGE_PROD);

		entrada = TOP_KEYPAD_mReadReg(XPAR_TOP_KEYPAD_0_BASEADDR, 0);
        elegido = (entrada && 0x1); //no se si he hecho bien esto

		if (elegido < 1 || elegido > MAX_ITEMS) {
            xil_printf("Opción no válida.\n");
            TOP_LCD_inicializa();
			TOP_LCD_enviarcadena(OPC_NO_VALIDA);
        }

        tProducto prod = prods[elegido-1];
        xil_printf("\nHa seleccionado: %s - $%.2f\n", prod.nombre, prod.precio);
        

        if (prod.udsDisponibles == 0) {
            xil_printf("Lo sentimos, producto agotado.\n");
            TOP_LCD_inicializa();
			TOP_LCD_enviarcadena(AGOTADO);
        }

        xil_printf("Ingrese dinero: ");
        TOP_LCD_inicializa();
		TOP_LCD_enviarcadena(INTRODUCE_DINERO);
        //scanf("%f", &dinero);
		entrada = TOP_KEYPAD_mReadReg(XPAR_TOP_KEYPAD_0_BASEADDR, 0);
        dinero = (entrada && 0x1); //no se si he hecho bien esto
        if (dinero < prod.precio) {
            xil_printf("Dinero insuficiente.\n");
            TOP_LCD_inicializa();
			TOP_LCD_enviarcadena(DINERO_INSUFICIENTE);
        }

        prod.udsDisponibles--;
        xil_printf("\nAhi tiene su artículo.\n");
        xil_printf("Su cambio es: %.2f\n", dinero - prod.precio);
    }
    return 0;
}
