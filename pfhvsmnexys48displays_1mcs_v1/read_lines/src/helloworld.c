#include <stdio.h>
#include "platform.h"
#include <xparameters.h> // add
#include <xiomodule.h>

void print(char *str);
u8 count_num_adjacencies(u8 position, u8 new_digit);
void INPUT_BLOCK_decode_gpi();
void OUTPUT_BLOCK_write_gpo();
void machine_player_think();
char inbyte(void);


u32 ct = 0;
u32 time = 0;
u32 inc = 1000;

void timerTick(void* ref) {
  ct++; // increase ct every millisecond
}


u8 P2STURN;     // these variables store the inputs to the machine player
u8 DISP[4];
u8 RD;
u8 STATE[7];


u8 P2ADD;       // these variables set the outputs of the machine player
u8 P2PLAYED;
u8 P2SEL;
u8 P2SKIP;

XIOModule gpi;  // necessary to initialize gpio
XIOModule gpo;
XIOModule gpo_fit;

int main()
{
	init_platform();
	XIOModule_Initialize(&gpi, XPAR_IOMODULE_0_DEVICE_ID);
	XIOModule_Start(&gpi);
	XIOModule_Initialize(&gpo, XPAR_IOMODULE_0_DEVICE_ID);
	XIOModule_Start(&gpo);
	XIOModule_Initialize(&gpo_fit, XPAR_IOMODULE_0_DEVICE_ID);
	XIOModule_Start(&gpo_fit);

//	microblaze_register_handler(XIOModule_DeviceInterruptHandler,                                   //
//								  XPAR_IOMODULE_0_DEVICE_ID); // register the interrupt handler     //
//																							        //
//		XIOModule_Connect(&gpo_fit, XIN_IOMODULE_FIT_1_INTERRUPT_INTR, timerTick,                       //
//						NULL); // register timerTick() as our interrupt handler                     //
//		XIOModule_Enable(&gpo_fit, XIN_IOMODULE_FIT_1_INTERRUPT_INTR); // enable the interrupt          //
//		                                                                                            //
//		microblaze_enable_interrupts(); // enable global interrupts                                 //

	int bite = 0;

	while(1){
		INPUT_BLOCK_decode_gpi();
		if(STATE[4] == 1) machine_player_think();
		OUTPUT_BLOCK_write_gpo();

//		if(bite = inbyte())
//			xil_printf("%d\t%c\n\r", bite, bite);
		//inbyte();
//		if(ct >= (time + inc)) {
//			time = ct;
//
//
//			char bite = inbyte();
//
//			xil_printf("%d\n\r", bite);
//			//xil_printf("DISP = %x %x %x %x\n\r", DISP[3], DISP[2], DISP[1], DISP[0]);
//			//xil_printf("RD = %x\n\r\n", RD);
//		}
	}

    return 0;
}

void INPUT_BLOCK_decode_gpi(){
	u32 gpi1_data = XIOModule_DiscreteRead(&gpi, 1); // read inputs on gpi channel 1

	DISP[0] = (u8)( gpi1_data & 0x0000000F       );  // DISP(15:0) are the lower 16 bits
	DISP[1] = (u8)((gpi1_data & 0x000000F0) >>  4);
	DISP[2] = (u8)((gpi1_data & 0x00000F00) >>  8);
	DISP[3] = (u8)((gpi1_data & 0x0000F000) >> 12);

	RD      = (u8)((gpi1_data & 0x000F0000) >> 16);  // RD(3:0) are bits (19:16)

	P2STURN = (u8)((gpi1_data & 0x00100000) >> 20);  // p2's turn is the 20th bit

	//STATE   = (u8)((gpi1_data & 0x0FE00000) >> 21);   // state signals S6..S0 are bits (27:21)
	// The STATE array contains separate variables to indicate each state. The index of the array is the state number.
	// Ex. STATE[1] == 1  means the current state is S1.
	STATE[6]   = (u8)((gpi1_data & 0x08000000) >> 27);
	STATE[5]   = (u8)((gpi1_data & 0x04000000) >> 26);
	STATE[4]   = (u8)((gpi1_data & 0x02000000) >> 25);
	STATE[3]   = (u8)((gpi1_data & 0x01000000) >> 24);
	STATE[2]   = (u8)((gpi1_data & 0x00800000) >> 23);
	STATE[1]   = (u8)((gpi1_data & 0x00400000) >> 22);
	STATE[0]   = (u8)((gpi1_data & 0x00200000) >> 21); // 0000 0000 0010 0000 0000 0000 0000 0000 >> 21  =>   0..01
}

void OUTPUT_BLOCK_write_gpo(){
	if(STATE[4]==1) {
		//XIOModule_DiscreteWrite(&gpo, 1, 0);    // Output zero for the duration of state 4

		u32 gpo1_output = 0;               // Set the bits to write
		gpo1_output |= (P2ADD << 0);       // P2ADD is gpo1 bit 0
		gpo1_output |= (P2PLAYED << 1);    // P2PLAYED is gpo1 bit 1
		gpo1_output |= (1 << (P2SEL+2));   // P2SEL are gpo1 bits (5:2)
//		switch (P2SEL) {
//			case 0: gpo1_output |= 0x00000004; break;
//			case 1: gpo1_output |= 0x00000008; break;
//			case 2: gpo1_output |= 0x00000010; break;
//			case 3: gpo1_output |= 0x00000020; break;
//		}
		gpo1_output |= (P2SKIP << 6);      // P2SKIP is gpo1 bit 6

		XIOModule_DiscreteWrite(&gpo, 1, 0x0000003F & gpo1_output);  // Set P2PLAYED <= 1 to move into state 5
	} else if( !(STATE[5]==1 || STATE[6]==1) ) {       // Outputs are zero for all states except 5 and 6
		XIOModule_DiscreteWrite(&gpo, 1, 0);
	}
}

void machine_player_think(){


	u8 max_reg_reward_if_add = 0;
	u8 max_reg_reward_if_direct = 0;

//	u8 max_code_reward_if_add = 0;
//	u8 max_code_reward_if_direct = 0;

	u8 position_if_add = 0;
	u8 position_if_direct = 0;

	int i;           // loop index
	u8 n_adj;       // number of adjacencies (placeholder)
	u8 new_digit;   // new number at a position if we add
	u8 points;      // number of points to gain (for testing purposes)

	for (i=0; i<4; i++) {               // Info-gathering:  playing directly
		n_adj = count_num_adjacencies(i,RD);
		points = RD * (1 << n_adj);
		if(points > max_reg_reward_if_direct) {
			max_reg_reward_if_direct = points;
			position_if_direct = i;
		}
	}

	for (i=0; i<4; i++) {               // Info-gathering:  adding
		new_digit = RD+DISP[i];
		if(new_digit >= 16)
			new_digit -= 16;

		n_adj = count_num_adjacencies(i,new_digit);
		points = new_digit * (1 << n_adj);
		if(points > max_reg_reward_if_add) {
			max_reg_reward_if_add = points;
			position_if_add = i;
		}
	}

	if(max_reg_reward_if_add > max_reg_reward_if_direct) {
		P2ADD = 1;
		P2SEL = position_if_add;
	} else {
		P2ADD = 0;
		P2SEL = position_if_direct;
	}


	P2PLAYED = 1;
	P2SKIP = 0;
}

u8 count_num_adjacencies(u8 position, u8 new_digit) {
	// position  --  position that the machine player selects
    // new_digit --  the value that will be on that position after it is played there

	u8 num_adjacencies = 0;          // count the number of adjacencies
	int i;                            // loop index

	for(i = (int)position-1; i>=0; i--) { // check each digit to the right, stopping at zero
		if(new_digit == DISP[i])
			num_adjacencies++;
		else
			break;
	}

	for(i = (int)position+1; i<4; i++) { // check each digit to the left, stopping at 3
		if(new_digit == DISP[i])
			num_adjacencies++;
		else
			break;
	}
	return num_adjacencies;
}

// human player cannot play directly.  the led3 is on during state4 but turns off before it registers

