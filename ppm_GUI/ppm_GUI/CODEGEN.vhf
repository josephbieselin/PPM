--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 12.4
--  \   \         Application : sch2hdl
--  /   /         Filename : CODEGEN.vhf
-- /___/   /\     Timestamp : 08/17/2011 17:22:19
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl D:/work/academic/cs2204/upgradevivekcs2204work/termproject/CODEGEN.vhf -w D:/work/academic/cs2204/upgradevivekcs2204work/CODEGEN/CODEGEN.sch
--Design Name: CODEGEN
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity COMP4_MXILINX_CODEGEN is
   port ( A0 : in    std_logic; 
          A1 : in    std_logic; 
          A2 : in    std_logic; 
          A3 : in    std_logic; 
          B0 : in    std_logic; 
          B1 : in    std_logic; 
          B2 : in    std_logic; 
          B3 : in    std_logic; 
          EQ : out   std_logic);
end COMP4_MXILINX_CODEGEN;

architecture BEHAVIORAL of COMP4_MXILINX_CODEGEN is
   attribute BOX_TYPE   : string ;
   signal AB0 : std_logic;
   signal AB1 : std_logic;
   signal AB2 : std_logic;
   signal AB3 : std_logic;
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
   component XNOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XNOR2 : component is "BLACK_BOX";
   
begin
   I_36_32 : AND4
      port map (I0=>AB3,
                I1=>AB2,
                I2=>AB1,
                I3=>AB0,
                O=>EQ);
   
   I_36_33 : XNOR2
      port map (I0=>B2,
                I1=>A2,
                O=>AB2);
   
   I_36_34 : XNOR2
      port map (I0=>B3,
                I1=>A3,
                O=>AB3);
   
   I_36_42 : XNOR2
      port map (I0=>B1,
                I1=>A1,
                O=>AB1);
   
   I_36_43 : XNOR2
      port map (I0=>B0,
                I1=>A0,
                O=>AB0);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity FD4CE_MXILINX_CODEGEN is
   port ( C   : in    std_logic; 
          CE  : in    std_logic; 
          CLR : in    std_logic; 
          D0  : in    std_logic; 
          D1  : in    std_logic; 
          D2  : in    std_logic; 
          D3  : in    std_logic; 
          Q0  : out   std_logic; 
          Q1  : out   std_logic; 
          Q2  : out   std_logic; 
          Q3  : out   std_logic);
end FD4CE_MXILINX_CODEGEN;

architecture BEHAVIORAL of FD4CE_MXILINX_CODEGEN is
   attribute BOX_TYPE   : string ;
   component FDCE
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDCE : component is "BLACK_BOX";
   
begin
   I_Q0 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D0,
                Q=>Q0);
   
   I_Q1 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D1,
                Q=>Q1);
   
   I_Q2 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D2,
                Q=>Q2);
   
   I_Q3 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D3,
                Q=>Q3);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity CODEGEN is
   port ( BRWD0     : in    std_logic; 
          BRWD1     : in    std_logic; 
          BRWD2     : in    std_logic; 
          BRWD3     : in    std_logic; 
          CALCPTS   : in    std_logic; 
          CLRRDREGS : in    std_logic; 
          DISP0     : in    std_logic; 
          DISP1     : in    std_logic; 
          DISP2     : in    std_logic; 
          DISP3     : in    std_logic; 
          DISP4     : in    std_logic; 
          DISP5     : in    std_logic; 
          DISP6     : in    std_logic; 
          DISP7     : in    std_logic; 
          GETCODE   : in    std_logic; 
          PSEL0     : in    std_logic; 
          PSEL1     : in    std_logic; 
          RDC1      : in    std_logic; 
          RDC3      : in    std_logic; 
          R1D0      : in    std_logic; 
          R1D1      : in    std_logic; 
          R1D3      : in    std_logic; 
          R2D0      : in    std_logic; 
          R2D1      : in    std_logic; 
          R2D2      : in    std_logic; 
          SYSCLK    : in    std_logic; 
          CODERWD   : out   std_logic_vector (0 to 7));
end CODEGEN;

architecture BEHAVIORAL of CODEGEN is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal CDEQBRWD0      : std_logic;
   signal CDEQBRWD1      : std_logic;
   signal CDEQPD0        : std_logic;
   signal CDEQPD1        : std_logic;
   signal CODERWDMUXSEL1 : std_logic;
   signal CODE0          : std_logic;
   signal CODE1          : std_logic;
   signal CODE2          : std_logic;
   signal CODE3          : std_logic;
   signal CODE4          : std_logic;
   signal CODE5          : std_logic;
   signal CODE6          : std_logic;
   signal CODE7          : std_logic;
   signal ENCODERWDMUX   : std_logic;
   signal XLXN_1431      : std_logic;
   signal XLXN_1433      : std_logic;
   signal XLXN_1463      : std_logic;
   signal XLXN_1467      : std_logic;
   signal XLXN_1538      : std_logic;
   signal XLXN_1539      : std_logic;
   signal XLXN_1543      : std_logic;
   signal XLXN_1544      : std_logic;
   signal XLXN_1560      : std_logic;
   component NOR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NOR3 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component FD4CE_MXILINX_CODEGEN
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D0  : in    std_logic; 
             D1  : in    std_logic; 
             D2  : in    std_logic; 
             D3  : in    std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             Q2  : out   std_logic; 
             Q3  : out   std_logic);
   end component;
   
   component COMP4_MXILINX_CODEGEN
      port ( A0 : in    std_logic; 
             A1 : in    std_logic; 
             A2 : in    std_logic; 
             A3 : in    std_logic; 
             B0 : in    std_logic; 
             B1 : in    std_logic; 
             B2 : in    std_logic; 
             B3 : in    std_logic; 
             EQ : out   std_logic);
   end component;
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component NOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NOR2 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component u74_157
      port ( B4 : in    std_logic; 
             A4 : in    std_logic; 
             A3 : in    std_logic; 
             B3 : in    std_logic; 
             A2 : in    std_logic; 
             B2 : in    std_logic; 
             A1 : in    std_logic; 
             B1 : in    std_logic; 
             S  : in    std_logic; 
             G  : in    std_logic; 
             Y1 : out   std_logic; 
             Y2 : out   std_logic; 
             Y3 : out   std_logic; 
             Y4 : out   std_logic);
   end component;
   
   component AND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B1 : component is "BLACK_BOX";
   
   attribute HU_SET of U123 : label is "U123_8";
   attribute HU_SET of U126 : label is "U126_7";
   attribute HU_SET of U127 : label is "U127_10";
   attribute HU_SET of U128 : label is "U128_11";
   attribute HU_SET of U129 : label is "U129_9";
   attribute HU_SET of U130 : label is "U130_12";
begin
   U121 : NOR3
      port map (I0=>R1D0,
                I1=>RDC1,
                I2=>R2D2,
                O=>XLXN_1431);
   
   U122 : OR2
      port map (I0=>XLXN_1431,
                I1=>R1D1,
                O=>XLXN_1433);
   
   U123 : FD4CE_MXILINX_CODEGEN
      port map (C=>SYSCLK,
                CE=>GETCODE,
                CLR=>CLRRDREGS,
                D0=>XLXN_1433,
                D1=>R2D2,
                D2=>RDC1,
                D3=>R1D0,
                Q0=>CODE0,
                Q1=>CODE1,
                Q2=>CODE2,
                Q3=>CODE3);
   
   u124 : NOR3
      port map (I0=>R2D0,
                I1=>RDC3,
                I2=>R1D3,
                O=>XLXN_1463);
   
   u125 : OR2
      port map (I0=>XLXN_1463,
                I1=>R2D1,
                O=>XLXN_1467);
   
   U126 : FD4CE_MXILINX_CODEGEN
      port map (C=>SYSCLK,
                CE=>GETCODE,
                CLR=>CLRRDREGS,
                D0=>XLXN_1467,
                D1=>R1D3,
                D2=>RDC3,
                D3=>R2D0,
                Q0=>CODE4,
                Q1=>CODE5,
                Q2=>CODE6,
                Q3=>CODE7);
   
   U127 : COMP4_MXILINX_CODEGEN
      port map (A0=>CODE0,
                A1=>CODE1,
                A2=>CODE2,
                A3=>CODE3,
                B0=>BRWD0,
                B1=>BRWD1,
                B2=>BRWD2,
                B3=>BRWD3,
                EQ=>CDEQBRWD0);
   
   U128 : COMP4_MXILINX_CODEGEN
      port map (A0=>CODE4,
                A1=>CODE5,
                A2=>CODE6,
                A3=>CODE7,
                B0=>BRWD0,
                B1=>BRWD1,
                B2=>BRWD2,
                B3=>BRWD3,
                EQ=>CDEQBRWD1);
   
   U129 : COMP4_MXILINX_CODEGEN
      port map (A0=>CODE0,
                A1=>CODE1,
                A2=>CODE2,
                A3=>CODE3,
                B0=>DISP0,
                B1=>DISP1,
                B2=>DISP2,
                B3=>DISP3,
                EQ=>CDEQPD0);
   
   U130 : COMP4_MXILINX_CODEGEN
      port map (A0=>CODE4,
                A1=>CODE5,
                A2=>CODE6,
                A3=>CODE7,
                B0=>DISP4,
                B1=>DISP5,
                B2=>DISP6,
                B3=>DISP7,
                EQ=>CDEQPD1);
   
   U131 : AND3
      port map (I0=>CALCPTS,
                I1=>CDEQBRWD0,
                I2=>PSEL0,
                O=>XLXN_1538);
   
   U132 : AND3
      port map (I0=>CALCPTS,
                I1=>CDEQBRWD1,
                I2=>PSEL1,
                O=>XLXN_1539);
   
   U133 : NOR2
      port map (I0=>XLXN_1539,
                I1=>XLXN_1538,
                O=>ENCODERWDMUX);
   
   U134 : AND2
      port map (I0=>CDEQPD1,
                I1=>XLXN_1538,
                O=>XLXN_1543);
   
   U135 : AND2
      port map (I0=>XLXN_1539,
                I1=>CDEQPD0,
                O=>XLXN_1544);
   
   U136 : OR2
      port map (I0=>XLXN_1544,
                I1=>XLXN_1543,
                O=>CODERWDMUXSEL1);
   
   U137 : u74_157
      port map (A1=>BRWD0,
                A2=>BRWD1,
                A3=>BRWD2,
                A4=>BRWD3,
                B1=>CODE3,
                B2=>CODE4,
                B3=>CODE5,
                B4=>CODE6,
                G=>ENCODERWDMUX,
                S=>CODERWDMUXSEL1,
                Y1=>CODERWD(3),
                Y2=>CODERWD(4),
                Y3=>CODERWD(5),
                Y4=>CODERWD(6));
   
   U138 : AND2
      port map (I0=>XLXN_1560,
                I1=>CODE7,
                O=>CODERWD(7));
   
   U139 : AND2
      port map (I0=>XLXN_1560,
                I1=>CODE2,
                O=>CODERWD(2));
   
   U140 : AND2
      port map (I0=>XLXN_1560,
                I1=>CODE1,
                O=>CODERWD(1));
   
   U141 : AND2
      port map (I0=>XLXN_1560,
                I1=>CODE0,
                O=>CODERWD(0));
   
   U142 : AND2B1
      port map (I0=>ENCODERWDMUX,
                I1=>CODERWDMUXSEL1,
                O=>XLXN_1560);
   
end BEHAVIORAL;


