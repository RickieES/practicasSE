/*
 * top_lcdbanner.c
 *
 *  Created on: 29/01/2023
 *      Author: Rpalomares
 */
#include "xparameters.h"
#include "xbasic_types.h"
#include "top_lcdbanner.h"

char primeraFila[40];
char segundaFila[40];

void TOP_LCDBANNER_enviarCMD2LCD(Xuint32 cmd) {
	// Comprobamos que la FIFO no est� llena
	while(TOP_LCDBANNER_mWriteFIFOFull(XPAR_TOP_LCDBANNER_0_BASEADDR)){}
	// Escribimos el comando en la FIFO
	TOP_LCDBANNER_mWriteToFIFO(XPAR_TOP_LCDBANNER_0_BASEADDR, 0, cmd);
}

void TOP_LCDBANNER_inicializaLCD() {
	TOP_LCDBANNER_mResetWriteFIFO(XPAR_TOP_LCDBANNER_0_BASEADDR);
	TOP_LCDBANNER_enviarCMD2LCD(CLEAR_DISPLAY_CMD);
	TOP_LCDBANNER_enviarCMD2LCD(RETURN_HOME_CMD); // moverse al comienzo de la pantalla LCD
	TOP_LCDBANNER_enviarCMD2LCD(WRITE_CMD); // primera escritura
}

void TOP_LCDBANNER_enviarcadena2LCD(char s[]) {
	int i = 0;
	int j = 0;
	int slen = strlen(s);
	// Se asume que la cadena es inferior a 80 caracteres

	// Si la cadena es superior a 40 caracteres, busca el ultimo espacio antes de
	// la posicion 39 y divide la cadena entre las dos filas
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
		TOP_LCDBANNER_enviarCMD2LCD(WRITE_CMD + primeraFila[i]);
	}

	if (strlen(segundaFila) > 0) {
		TOP_LCDBANNER_enviarCMD2LCD(SECOND_ROW);
		for(i = 0; i < strlen(segundaFila); i++) {
			TOP_LCDBANNER_enviarCMD2LCD(WRITE_CMD + segundaFila[i]);
		}
	}
}

void scrollLCD(Xuint32 cmd) {
	int i = 0;
	int maxlen = strlen(primeraFila);
	maxlen = (strlen(segundaFila) > maxlen) ? strlen(segundaFila) : maxlen;

	for(i = 0; i < (maxlen - 16); i++) {
		TOP_LCDBANNER_enviarCMD2LCD(cmd);
		myDelay(300);
	}
}
