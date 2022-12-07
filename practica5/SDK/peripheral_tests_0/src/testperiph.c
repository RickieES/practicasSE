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
#include "xgpio.h"
#include "gpio_header.h"
#include "xbasic_types.h"
#include "xbram.h"
#include "bram_header.h"
#include "keypad.h"
#include "lcd.h"
#include "motor_hw.h"
#include "ledrgb.h"



# define CLEAR_DISPLAY_CMD 0x00000001
# define RETURN_HOME_CMD 0x00000002
# define WRITE_CMD 0x00000200
# define FIRST_ROW 0x00000080
# define SECOND_ROW 0x000000C0

Xuint32 baseaddr;
Xuint32 Reg32Value;
Xuint32 TeclaOld;
Xuint32 Data;



void LCD_enviarCMD ( Xuint32 cmd ){
   // Comprobamos que la FIFO no esté llena
   while ( LCD_mWriteFIFOFull (XPAR_LCD_0_BASEADDR)){}
   // Escribimos el comando en la FIFO
   LCD_mWriteToFIFO (XPAR_LCD_0_BASEADDR, 0, cmd );
}

void LCD_inicializa () {
   LCD_mResetWriteFIFO (XPAR_LCD_0_BASEADDR);
   LCD_enviarCMD ( CLEAR_DISPLAY_CMD );
   LCD_enviarCMD (RETURN_HOME_CMD); // moverse al comienzo de la pantalla
   LCD_enviarCMD (WRITE_CMD); // primera escritura
}

void pintarPrimeraFila(){
	LCD_inicializa();
	LCD_enviarCMD ( WRITE_CMD + 'T' );
	LCD_enviarCMD ( WRITE_CMD + 'O' );
	LCD_enviarCMD ( WRITE_CMD + 'T' );
	LCD_enviarCMD ( WRITE_CMD + 'A' );
	LCD_enviarCMD ( WRITE_CMD + 'L' );
	LCD_enviarCMD ( WRITE_CMD + ' ' );
	LCD_enviarCMD ( WRITE_CMD + 'D' );
	LCD_enviarCMD ( WRITE_CMD + 'E' );
	LCD_enviarCMD ( WRITE_CMD + ' ' );
	LCD_enviarCMD ( WRITE_CMD + 'P' );
	LCD_enviarCMD ( WRITE_CMD + 'A' );
	LCD_enviarCMD ( WRITE_CMD + 'S' );
	LCD_enviarCMD ( WRITE_CMD + 'O' );
	LCD_enviarCMD ( WRITE_CMD + 'S' );
	LCD_enviarCMD ( WRITE_CMD + ':' );
	LCD_enviarCMD ( SECOND_ROW ); // cambio fila
}

void pintarSegundaFila(int n) {
	if (n < 10) {
		if (n== 0) LCD_enviarCMD ( WRITE_CMD + '0' ); // Si le paso n a la funcion no funciona
		else if (n== 1) LCD_enviarCMD ( WRITE_CMD + '1' );
		else if (n== 2) LCD_enviarCMD ( WRITE_CMD + '2' );
		else if (n== 3) LCD_enviarCMD ( WRITE_CMD + '3' );
		else if (n== 4) LCD_enviarCMD ( WRITE_CMD + '4' );
		else if (n== 5) LCD_enviarCMD ( WRITE_CMD + '5' );
		else if (n== 6) LCD_enviarCMD ( WRITE_CMD + '6' );
		else if (n== 7) LCD_enviarCMD ( WRITE_CMD + '7' );
		else if (n== 8) LCD_enviarCMD ( WRITE_CMD + '8' );
		else if (n== 9) LCD_enviarCMD ( WRITE_CMD + '9' );
		return;
	}
	else {
		pintarSegundaFila(n / 10);
		if (n%10 == 0) LCD_enviarCMD ( WRITE_CMD + '0' );
		else if (n%10 == 1) LCD_enviarCMD ( WRITE_CMD + '1' );
		else if (n%10 == 2) LCD_enviarCMD ( WRITE_CMD + '2' );
		else if (n%10 == 3) LCD_enviarCMD ( WRITE_CMD + '3' );
		else if (n%10 == 4) LCD_enviarCMD ( WRITE_CMD + '4' );
		else if (n%10 == 5) LCD_enviarCMD ( WRITE_CMD + '5' );
		else if (n%10 == 6) LCD_enviarCMD ( WRITE_CMD + '6' );
		else if (n%10 == 7) LCD_enviarCMD ( WRITE_CMD + '7' );
		else if (n%10 == 8) LCD_enviarCMD ( WRITE_CMD + '8' );
		else if (n%10 == 9) LCD_enviarCMD ( WRITE_CMD + '9' );
		return;
	}
}

char keypadtochar(Xuint32 tecla){
	if(tecla == 0x0FFFFFFF) return 0;
	else if (tecla == 0x1FFFFFFF) return '1';
	else if (tecla == 0x2FFFFFFF) return '2';
	else if (tecla == 0x3FFFFFFF) return '3';
	else if (tecla == 0x4FFFFFFF) return '4';
	else if (tecla == 0x5FFFFFFF) return '5';
	else if (tecla == 0x6FFFFFFF) return '6';
	else if (tecla == 0x7FFFFFFF) return '7';
	else if (tecla == 0x8FFFFFFF) return '8';
	else if (tecla == 0x9FFFFFFF) return '9';
	else if (tecla == 0xAFFFFFFF) return 'A';
	else if (tecla == 0xBFFFFFFF) return 'B';
	else if (tecla == 0xCFFFFFFF) return 'C';
	else if (tecla == 0xDFFFFFFF) return 'D';
	else if (tecla == 0xEFFFFFFF) return 'E';
}

int main()
{


   Xil_ICacheEnable();
   Xil_DCacheEnable();

   print("---Entering main---\n\r");

   int totalPasos = 0;
   baseaddr = XPAR_KEYPAD_0_BASEADDR;
   Reg32Value = 0;



   print("--------Prueba del LED RGB----------\n\r");
   LEDRGB_mWriteSlaveReg0(XPAR_LEDRGB_0_BASEADDR, 0, 0); 	 //Red
   LEDRGB_mWriteSlaveReg1(XPAR_LEDRGB_0_BASEADDR, 0, 255);   //Green
   LEDRGB_mWriteSlaveReg2(XPAR_LEDRGB_0_BASEADDR, 0, 0);   //Blue
   print("---FIN PRUEBA RGB---\n\r");

   while(Reg32Value != 0xFFFFFFFF){

	   xil_printf (" Pulse una tecla cualquiera \n\r");
	   Reg32Value = KEYPAD_mReadReg ( baseaddr , 0);
	   char c = keypadtochar(Reg32Value);
	   xil_printf (" Se ha leido %c del registro 0 del teclado \n\r" , c );

	   if(c == '0'){
		   Data =0x90000000 ;
		   MOTOR_HW_mWriteReg ( XPAR_MOTOR_HW_0_BASEADDR , 0, Data );
		   totalPasos += 0;
		   pintarPrimeraFila();
		   pintarSegundaFila(totalPasos);
	   }else if (c == '1'){
		   Data =0x91000000 ;
		   MOTOR_HW_mWriteReg ( XPAR_MOTOR_HW_0_BASEADDR , 0, Data );
		   totalPasos += 1;
		   pintarPrimeraFila();
		   pintarSegundaFila(totalPasos);
	   }else if (c == '2'){
		   Data =0x92000000 ;
		   MOTOR_HW_mWriteReg ( XPAR_MOTOR_HW_0_BASEADDR , 0, Data );
		   totalPasos += 2;
		   pintarPrimeraFila();
		   pintarSegundaFila(totalPasos);
	   }else if (c == '3'){
		   Data = 0x93000000 ;
		   MOTOR_HW_mWriteReg ( XPAR_MOTOR_HW_0_BASEADDR , 0, Data );
		   totalPasos += 3;
		   pintarPrimeraFila();
		   pintarSegundaFila(totalPasos);
	   }else if (c == '4'){
		   Data =0x94000000 ;
		   MOTOR_HW_mWriteReg ( XPAR_MOTOR_HW_0_BASEADDR , 0, Data );
		   totalPasos += 4;
		   pintarPrimeraFila();
		   pintarSegundaFila(totalPasos);
	   }else if (c == '5'){
		   Data =0x95000000 ;
		   MOTOR_HW_mWriteReg ( XPAR_MOTOR_HW_0_BASEADDR , 0, Data );
		   totalPasos += 5;
		   pintarPrimeraFila();
		   pintarSegundaFila(totalPasos);
	   }else if (c == '6'){
		   Data =0x96000000 ;
		   MOTOR_HW_mWriteReg ( XPAR_MOTOR_HW_0_BASEADDR , 0, Data );
		   totalPasos += 6;
		   pintarPrimeraFila();
		   pintarSegundaFila(totalPasos);
	   }else if (c == '7'){
		   Data =0x97000000 ;
		   MOTOR_HW_mWriteReg ( XPAR_MOTOR_HW_0_BASEADDR , 0, Data );
		   totalPasos += 7;
		   pintarPrimeraFila();
		   pintarSegundaFila(totalPasos);
	   }else if (c == '8'){
		   Data =0x98000000 ;
		   MOTOR_HW_mWriteReg ( XPAR_MOTOR_HW_0_BASEADDR , 0, Data );
		   totalPasos += 8;
		   pintarPrimeraFila();
		   pintarSegundaFila(totalPasos);
	   }else if (c == '9'){
		   Data =0x99000000 ;
		   MOTOR_HW_mWriteReg ( XPAR_MOTOR_HW_0_BASEADDR , 0, Data );
		   totalPasos += 9;
		   pintarPrimeraFila();
		   pintarSegundaFila(totalPasos);
	   }else if (c == 'A'){
		   Data =0x9A000000 ;
		   MOTOR_HW_mWriteReg ( XPAR_MOTOR_HW_0_BASEADDR , 0, Data );
		   totalPasos += 10;
		   pintarPrimeraFila();
		   pintarSegundaFila(totalPasos);
	   }else if (c == 'B'){
		   Data =0x9B000000 ;
		   MOTOR_HW_mWriteReg ( XPAR_MOTOR_HW_0_BASEADDR , 0, Data );
		   totalPasos += 11;
		   pintarPrimeraFila();
		   pintarSegundaFila(totalPasos);
	   }else if (c == 'C'){
		   Data =0x9C000000 ;
		   MOTOR_HW_mWriteReg ( XPAR_MOTOR_HW_0_BASEADDR , 0, Data );
		   totalPasos += 12;
		   pintarPrimeraFila();
		   pintarSegundaFila(totalPasos);
	   }else if (c == 'D'){
		   Data =0x9D000000 ;
		   MOTOR_HW_mWriteReg ( XPAR_MOTOR_HW_0_BASEADDR , 0, Data );
		   totalPasos += 13;
		   pintarPrimeraFila();
		   pintarSegundaFila(totalPasos);
	   }else if (c == 'E'){
		   Data =0x9E000000 ;
		   MOTOR_HW_mWriteReg ( XPAR_MOTOR_HW_0_BASEADDR , 0, Data );
		   totalPasos += 14;
		   pintarPrimeraFila();
		   pintarSegundaFila(totalPasos);
	   }
	   KEYPAD_mWriteReg ( baseaddr , 0 ,0xFFFFFFFF);
   }








   /*xil_printf (" Se ha leido %08x del registro 0 del teclado \n\r" , Reg32Value );

   KEYPAD_mWriteReg ( baseaddr , 0 ,0xFFFFFFFF);
   TeclaOld = Reg32Value ; /* Se escribe un 0 para borrar la última tecla leída */

   /*while (1) {
	   if ( Reg32Value != TeclaOld ) {
		   	   xil_printf (" Se ha leido %08x del registro 0 del teclado \n\r" , Reg32Value );
		   	   TeclaOld = Reg32Value ;
	   }
	   Reg32Value = KEYPAD_mReadReg ( baseaddr , 0);
	   KEYPAD_mWriteReg ( baseaddr , 0 ,0xFFFFFFFF); /* Se escribe un 0 para borrar la última tecla leída */
   //}*/

   print("---Exiting main---\n\r");

   Xil_DCacheDisable();
   Xil_ICacheDisable();

   return 0;
}

