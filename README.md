# PPM
Hardware & Software integration using an FPGA Board


###############################################################################
###############################################################################

# Project Description

These projects make use of the Digilent Nexys 4 DDR FPGA boards and the Xilinx ISE. All computational work is done directly on the FPGA with no use of a computer or any software. Since all computational work is done in hardware, the application can be run much faster than it would on software. The FPGA's reconfigurable nature also allows us to constantly update and test designs.

PPM stands for Poly Playing Machine. The designs create a number game that be played on the board or on a GUI depending on which project directory is used. The PPM's rules are located in a pdf file titled Description_PPM.
The PPM consists of a human player (played by you, the human) and a machine player not played by you. The machine player's logic/strategy is designed all in hardware or on a MicroBlaze soft core processor which is described in the last paragraph of this section.

The pfhvmnexys48displays_1mcs_v1 (human vs. machine using a Nexys 4 model FPGA with 8 displays and 1 MCS soft core processor) and pfhvsmnexys48displays (human vs. machine using a Nexys 4 model FPGA with 8 displays) directories both contain only hardware designs for the PPM. This means that the game is played directly on the FPGA using switches and buttons located on the FPGA.

The PPM_GUI directory contains hardware designs that work with the Qt framework to provide a GUI for the PPM game. The communication between the FPGA and the computer running the GUI is done via the serial communication port.

The pfhvmnexys48displays_1mcs_v1 and ppm_GUI directories both include something called a MicroBlaze MCS which is a soft core processor that is created on the FPGA when synthesizing the project. The MCS is programmed in C or C++ code but will run on the hardware of the FPGA.

###############################################################################
###############################################################################

# Project Files

  
# PPM (hardware files)

To see the hardware schematic designs, you'll need to download the WebPACK version of the Xilinx ISE v 14.7
The hardware schematics are converted to HDL files which is required to actually program a design onto the FPGA.
This is a very large piece of software if you do not already have it installed for work with the Xilinx FPGAs. 


# PPM GUI

MCS C Code (I/O and Machine Player):
  PPM_GUI -> ppm_GUI -> io -> src -> helloworld_io.c
  PPM_GUI -> ppm_GUI -> mp -> src -> helloworld_mp.c
Qt Code (all project files are in the same directory):
  PPM_GUI -> Qt_Files -> test_gui -> ***.cpp


# pfhvsmnexys48displays_1mcs_v1

MCS C Code:
  pfhvsmnexys48displays_1mcs_v1 -> read_lines -> src -> helloworld.c
