/*
 * Copyright (c) 2009-2012 Xilinx, Inc.  All rights reserved.
 *
 * Xilinx, Inc.
 * XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" AS A
 * COURTESY TO YOU.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION AS
 * ONE POSSIBLE   IMPLEMENTATION OF THIS FEATURE, APPLICATION OR
 * STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION
 * IS FREE FROM ANY CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE
 * FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.
 * XILINX EXPRESSLY DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO
 * THE ADEQUACY OF THE IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO
 * ANY WARRANTIES OR REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE
 * FROM CLAIMS OF INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY
 * AND FITNESS FOR A PARTICULAR PURPOSE.
 *
 */

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include <xparameters.h> // add
#include <xiomodule.h>

void init_gpio(void);
void init_uart_interrupt(void);

char inbyte(void);
void rx_interrupt(void* hi);

void decode_and_print(void);
void read_from_mp(void);
void send_to_mp(u8 index, u32 data);

XIOModule gpio;
XIOModule gpo_int;

u32 MP_DATA;
u32 IO_DATA;
u32 buffer[32];


int main()
{
    init_platform();
    init_gpio();
    init_uart_interrupt();

	while(1){
		read_from_mp();
		decode_and_print();
	}



    return 0;
}

void rx_interrupt(void* hi){
	u8 data = inbyte();

	if( ((~MP_DATA) & 0x40000000) && ((~IO_DATA) & 0x80000000) ) { //Send only when both MP_ACK and IO_VALID are low
		send_to_mp(0,data);
	}
}

void decode_and_print(void){
	u8 DISP[4];
	u8 RD;
	u8 STATE[7];
	u8 SYSCLK;
	u8 P2CLK;

	u8 P1PT;
	u8 P2PT;
	u8 P1ADD_READ;
	u8 P1PLAYED_READ;
	u8 P1SEL_READ;
	u8 P1SKIP_READ;
	u8 P2ADD_READ;
	u8 P2PLAYED_READ;
	u8 P2SEL_READ;
	u8 P2SKIP_READ;
	u8 NSD;

	u8 RWD;

	DISP[0]  = (u8) (buffer[0] & 0x0000000F);
	DISP[1]  = (u8)((buffer[0] & 0x000000F0) >>  4);
	DISP[2]  = (u8)((buffer[0] & 0x00000F00) >>  8);
	DISP[3]  = (u8)((buffer[0] & 0x0000F000) >> 12);
	STATE[0] = (u8)((buffer[0] & 0x00010000) >> 16);
	STATE[1] = (u8)((buffer[0] & 0x00020000) >> 17);
	STATE[2] = (u8)((buffer[0] & 0x00040000) >> 18);
	STATE[3] = (u8)((buffer[0] & 0x00080000) >> 19);
	STATE[4] = (u8)((buffer[0] & 0x00100000) >> 20);
	STATE[5] = (u8)((buffer[0] & 0x00200000) >> 21);
	STATE[6] = (u8)((buffer[0] & 0x00400000) >> 22);

	P1PT   = (u8) (buffer[1] & 0x000000FF);
	P2PT   = (u8)((buffer[1] & 0x0000FF00) >>  8);
	RD     = (u8)((buffer[1] & 0x000F0000) >> 16);
	SYSCLK = (u8)((buffer[1] & 0x00100000) >> 20);
	P2CLK  = (u8)((buffer[1] & 0x00200000) >> 21);

	P1ADD_READ    = (u8) (buffer[2] & 0x00000001);
	P1PLAYED_READ = (u8)((buffer[2] & 0x00000002) >>  1);
	P1SEL_READ    = (u8)((buffer[2] & 0x0000002C) >>  2);
	P1SKIP_READ   = (u8)((buffer[2] & 0x00000040) >>  6);
	P2ADD_READ    = (u8)((buffer[2] & 0x00000080) >>  7);
	P2PLAYED_READ = (u8)((buffer[2] & 0x00000100) >>  8);
	P2SEL_READ    = (u8)((buffer[2] & 0x00001E00) >>  9);
	P2SKIP_READ   = (u8)((buffer[2] & 0x00002000) >> 13);
	RWD           = (u8)((buffer[2] & 0x003FC000) >> 14);
	NSD           = (u8)((buffer[2] & 0x00C00000) >> 22);


	/////////////////////////////////////////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////// DATA PRINTED ///////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////
	xil_printf("STATE:%d%d%d%d%d%d%d,",STATE[0],STATE[1],STATE[2],STATE[3],STATE[4],STATE[5],STATE[6]);
	xil_printf("disp3:%x,disp2:%x,disp1:%x,disp0:%x,",DISP[3],DISP[2],DISP[1],DISP[0]);
	xil_printf("RD:%x,", RD);
	xil_printf("p1pt1:%x,p1pt2:%x,p2pt1:%x,p2pt2:%x\n", (P1PT&0xF0)>>4, P1PT&0x0F, (P2PT&0xF0)>>4, P2PT&0x0F);
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////// DATA PRINTED ///////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////

//	xil_printf("p1add:%d,p1played:%d,p1sel:%d,p1skip:%d,", P1ADD_READ, P1PLAYED_READ, P1SEL_READ, P1SKIP_READ);
//	xil_printf("p2add:%d,p2played:%d,p2sel:%d,p2skip:%d,", P2ADD_READ, P2PLAYED_READ, P2SEL_READ, P2SKIP_READ);
//	xil_printf("RWD:%x,NSD:%x,", RWD, NSD);
}


void read_from_mp(void){
	// Read data:
	MP_DATA = XIOModule_DiscreteRead(&gpio, 1);

	if(MP_DATA & 0x80000000){ // if MP_VALID is high
		u8 index = (u8)((MP_DATA & 0x3F000000)>>24);  // store data into buffer
		buffer[index] = MP_DATA & 0x00FFFFFF;

		IO_DATA |= 0x40000000;  // raise IO_ACK

		XIOModule_DiscreteWrite(&gpio, 1, IO_DATA);
	}

	if( (~MP_DATA) & 0x80000000) { // Clear IO_ACK when MP_VALID is low
		IO_DATA &= 0xBFFFFFFF;
		XIOModule_DiscreteWrite(&gpio, 1, IO_DATA);
	}

	if(MP_DATA & 0x40000000){	// Clear IO_VALID when MP_ACK is high
//		IO_DATA &= 0x7FFFFFFF;
		IO_DATA &= 0x40000000;   // note: clear IO_DATA in addition to IO_VALID
		XIOModule_DiscreteWrite(&gpio, 1, IO_DATA);
	}
}

void send_to_mp(u8 index, u32 data){
	IO_DATA &= 0x40000000;  // clear all bits but the ack

	IO_DATA |= ((u32)(index & 0x3F)) << 24;
	IO_DATA |= (data & 0x00FFFFFF);    // set MP_DATA bits

	IO_DATA |= 0x80000000; // add the IO_VALID bit

	XIOModule_DiscreteWrite(&gpio, 1, IO_DATA); // set IO_DATA and IO_VALID high
}


void init_gpio(void){
	XIOModule_Initialize(&gpio, XPAR_IOMODULE_0_DEVICE_ID);
	XIOModule_Start(&gpio);
}

void init_uart_interrupt(void){
	XIOModule_Initialize(&gpo_int, XPAR_IOMODULE_0_DEVICE_ID); // Initialize the GPO module

	microblaze_register_handler(XIOModule_DeviceInterruptHandler,
							  XPAR_IOMODULE_0_DEVICE_ID); // register the interrupt handler

	XIOModule_Start(&gpo_int); // start the GPO module

	XIOModule_Connect(&gpo_int, XIN_IOMODULE_UART_RX_INTERRUPT_INTR, rx_interrupt,
					NULL); // register timerTick() as our interrupt handler
	XIOModule_Enable(&gpo_int, XIN_IOMODULE_UART_RX_INTERRUPT_INTR); // enable the interrupt

	microblaze_enable_interrupts(); // enable global interrupts

}
