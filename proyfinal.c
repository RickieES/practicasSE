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

#define MAX_ITEMS 16
#define  MAX_LENGTH 40

#define DINERO_INSUFICIENTE "Dinero insuficiente."
#define OPC_NO_VALIDA "Opcion no valida"
#define AGOTADO "Producto agotado."
#define ELIGE_PROD "Elige un producto."
#define INTRODUCE_DINERO "Introduce dinero."



typedef struct {
    char nombre[MAX_LENGTH];
    float precio;
    int udsDisponibles;
}tProducto;

tProducto prods[MAX_ITEMS] = {
    {"0-Coca-Cola", 1.50, 8},
    {"1-Pepsi", 1.75, 5},
    {"2-Sprite", 1.50, 8},
    {"3-Fanta", 1.50, 8},
    {"4-Agua", 1.00, 9},
	{"5-KitKat", 1.20, 8},
	{"6-Patatas Fritas", 1.50, 8},
	{"7-Sandwich Mixto", 1.80, 5},
	{"8-Sandwich Pollo", 1.80, 5},
	{"9-Sandwich Tortilla", 1.80, 8},
	{"10-Media Noche", 1.20, 3},
	{"11-Galletas chocolate", 1.00, 4},
	{"12-Aquarius", 1.00, 5},
	{"13-Nestea", 1.00, 5},
	{"14-Kinder Bueno", 1.20, 4},
	{"15-Bollicao", 1.20, 4}
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


void giraMotor(){
	Xuint32 Data;
	Data =0x9F000000 ;
	MOTOR_HW_mWriteReg ( XPAR_MOTOR_HW_0_BASEADDR , 0, Data );
	Data = MOTOR_HW_mReadReg ( MOTOR_HW, BASEaddress , 0);
	while (!( Data & 0x40000000 )) {
	Data = MOTOR_HW_mReadReg ( MOTOR_HW, BASEaddress , 0);
	}
	Data = 0x0F000000;
	MOTOR_HW_mWriteReg ( XPAR_MOTOR_HW_0_BASEADDR , 0, Data );
	Data = MOTOR_HW_mReadReg ( MOTOR_HW, BASEaddress , 0);
	while (!( Data & 0x40000000 )) {
	Data = MOTOR_HW_mReadReg ( MOTOR_HW, BASEaddress , 0);
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


char *leerKeypad() {//funcion que lee del keypad
	Xuint32 entrada;
	Xuint32 teclaOld;
	char keypad[80];
	char caracter;
	int pos = 0;
	int salir = 0;
	int teclaPulsada = 0;

	entrada = TOP_KEYPAD_mReadReg(XPAR_TOP_KEYPAD_0_BASEADDR, 0);
	// xil_printf("Se ha leido %x del registro 0 del teclado \n\r", entrada);
	/* Se escribe un 0 para borrar la �ltima tecla le�da */
	TOP_KEYPAD_mWriteReg(XPAR_TOP_KEYPAD_0_BASEADDR, 0, 0);
	/* Se guarda el �ltimo valor recibido para compararlo con el siguiente */
	teclaOld = entrada;
	while ((pos < 80) && !salir) {
		entrada = TOP_KEYPAD_mReadReg(XPAR_TOP_KEYPAD_0_BASEADDR, 0);
        /* Se escribe un 0 para borrar la �ltima tecla le�da */
		TOP_KEYPAD_mWriteReg(XPAR_TOP_KEYPAD_0_BASEADDR, 0 ,0);
		if (entrada != teclaOld) {
			// xil_printf("Se ha leido %x del registro 0 del teclado \n\r", entrada);
			teclaOld = entrada;
			/* Hacemos AND con el bit que marca si se ha pulsado una tecla */
			teclaPulsada = (entrada && 0x1);
			// xil_printf("  El valor de teclaPulsada es %d\n\r", teclaPulsada);
		}
		if (teclaPulsada) {
			/* La tecla pulsada se recibe en los bits 27-31, as� que los desplazamos */
			caracter = (char) (entrada >> 28);
			// xil_printf("  El valor de caracter es %c\n\r", caracter);
			/* Se termina cuando se pulsa la tecla F */
            salir = (caracter == 0x0F);
    		// xil_printf("  El valor de salir es %d\n\r", salir);
            if (!salir) {
            	/* Si el caracter est� entre 0xA y 0xE (10 y 14), a�adimos la letra may�scula
            	 * sumando 55 al valor, de modo que 65 es 'A', 66 es 'B?', etc.; si no,
            	 * a�adimos 48 al valor, de modo 48 es '0', 49 es '1', etc.
            	 */
            	caracter = (caracter > 9) ? (0x37 + caracter) : (0x30 + caracter);
    			xil_printf("  Se va a agregar a la cadena %c\n\r", caracter);
            	keypad[pos] = caracter;
            	pos++;
            }
		}
	}
	return &keypad;
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
	Xuint32 Data;

    while (1) {
        menu();
        //scanf("%d", &elegido);
		TOP_LCD_inicializa();
		TOP_LCD_enviarcadena(ELIGE_PROD);

		entrada = TOP_KEYPAD_mReadReg(XPAR_TOP_KEYPAD_0_BASEADDR, 0);
        elegido = (entrada && 0x1); //no se si he hecho bien esto

		if (elegido < 0 || elegido > MAX_ITEMS) {
            xil_printf("Opción no válida.\n");
            TOP_LCD_inicializa();
			TOP_LCD_enviarcadena(OPC_NO_VALIDA);
        }

        tProducto prod = prods[elegido];
        xil_printf("\nHa seleccionado: %s - $%.2f\n", prod.nombre, prod.precio);
        

        if (prod.udsDisponibles == 0) {
            xil_printf("Lo sentimos, producto agotado.\n");
            TOP_LCD_inicializa();
			TOP_LCD_enviarcadena(AGOTADO);
			LEDRGB_mWriteSlaveReg0(XPAR_LEDRGB_0_BASEADDR, 0, 255); 	 //Red
			LEDRGB_mWriteSlaveReg1(XPAR_LEDRGB_0_BASEADDR, 0, 0);   //Green
			LEDRGB_mWriteSlaveReg2(XPAR_LEDRGB_0_BASEADDR, 0, 0);   //Blue
        }

        xil_printf("Ingrese dinero: ");
        TOP_LCD_inicializa();
		TOP_LCD_enviarcadena(INTRODUCE_DINERO);
		LEDRGB_mWriteSlaveReg0(XPAR_LEDRGB_0_BASEADDR, 0, 0); 	 //Red
		LEDRGB_mWriteSlaveReg1(XPAR_LEDRGB_0_BASEADDR, 0, 0);   //Green
		LEDRGB_mWriteSlaveReg2(XPAR_LEDRGB_0_BASEADDR, 0, 255);   //Blue
        //scanf("%f", &dinero);
		entrada = TOP_KEYPAD_mReadReg(XPAR_TOP_KEYPAD_0_BASEADDR, 0);
        dinero = (entrada && 0x1); //no se si he hecho bien esto
        if (dinero < prod.precio) {
            xil_printf("Dinero insuficiente.\n");
            TOP_LCD_inicializa();
			TOP_LCD_enviarcadena(DINERO_INSUFICIENTE);
			LEDRGB_mWriteSlaveReg0(XPAR_LEDRGB_0_BASEADDR, 0, 255); 	 //Red
			LEDRGB_mWriteSlaveReg1(XPAR_LEDRGB_0_BASEADDR, 0, 0);   //Green
			LEDRGB_mWriteSlaveReg2(XPAR_LEDRGB_0_BASEADDR, 0, 0);   //Blue
        }

        prod.udsDisponibles--;
        xil_printf("\nAhi tiene su artículo.\n");
		LEDRGB_mWriteSlaveReg0(XPAR_LEDRGB_0_BASEADDR, 0, 0); 	 //Red
		LEDRGB_mWriteSlaveReg1(XPAR_LEDRGB_0_BASEADDR, 0, 255);   //Green
		LEDRGB_mWriteSlaveReg2(XPAR_LEDRGB_0_BASEADDR, 0, 0);   //Blue
		giraMotor();
        xil_printf("Su cambio es: %.2f\n", dinero - prod.precio);
		//suena el altavoz

    }
    return 0;
}
