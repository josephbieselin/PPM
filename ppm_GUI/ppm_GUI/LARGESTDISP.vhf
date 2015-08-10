--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 12.4
--  \   \         Application : sch2hdl
--  /   /         Filename : LARGESTDISP.vhf
-- /___/   /\     Timestamp : 08/17/2011 17:22:19
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl D:/work/academic/cs2204/upgradevivekcs2204work/termproject/LARGESTDISP.vhf -w D:/work/academic/cs2204/upgradevivekcs2204work/LARGESTDISP/LARGESTDISP.sch
--Design Name: LARGESTDISP
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

entity COMPM4_MXILINX_LARGESTDISP is
   port ( A0 : in    std_logic; 
          A1 : in    std_logic; 
          A2 : in    std_logic; 
          A3 : in    std_logic; 
          B0 : in    std_logic; 
          B1 : in    std_logic; 
          B2 : in    std_logic; 
          B3 : in    std_logic; 
          GT : out   std_logic; 
          LT : out   std_logic);
end COMPM4_MXILINX_LARGESTDISP;

architecture BEHAVIORAL of COMPM4_MXILINX_LARGESTDISP is
   attribute BOX_TYPE   : string ;
   signal EQ_1  : std_logic;
   signal EQ_3  : std_logic;
   signal EQ2_3 : std_logic;
   signal GE0_1 : std_logic;
   signal GE2_3 : std_logic;
   signal GTA   : std_logic;
   signal GTB   : std_logic;
   signal GT_1  : std_logic;
   signal GT_3  : std_logic;
   signal GT0_1 : std_logic;
   signal LE0_1 : std_logic;
   signal LE2_3 : std_logic;
   signal LTA   : std_logic;
   signal LTB   : std_logic;
   signal LT_1  : std_logic;
   signal LT_3  : std_logic;
   signal LT0_1 : std_logic;
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component NOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NOR2 : component is "BLACK_BOX";
   
   component AND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B1 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component XNOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XNOR2 : component is "BLACK_BOX";
   
   component AND3B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B1 : component is "BLACK_BOX";
   
begin
   I_36_1 : AND2
      port map (I0=>GT0_1,
                I1=>EQ2_3,
                O=>GTA);
   
   I_36_2 : AND2
      port map (I0=>EQ2_3,
                I1=>LT0_1,
                O=>LTA);
   
   I_36_3 : NOR2
      port map (I0=>GTB,
                I1=>LTB,
                O=>EQ2_3);
   
   I_36_4 : AND2B1
      port map (I0=>A3,
                I1=>B3,
                O=>LT_3);
   
   I_36_5 : OR2
      port map (I0=>LT_1,
                I1=>LE0_1,
                O=>LT0_1);
   
   I_36_6 : AND2B1
      port map (I0=>B3,
                I1=>A3,
                O=>GT_3);
   
   I_36_7 : AND2B1
      port map (I0=>A1,
                I1=>B1,
                O=>LT_1);
   
   I_36_8 : XNOR2
      port map (I0=>A3,
                I1=>B3,
                O=>EQ_3);
   
   I_36_9 : AND2B1
      port map (I0=>B1,
                I1=>A1,
                O=>GT_1);
   
   I_36_11 : OR2
      port map (I0=>LTB,
                I1=>LTA,
                O=>LT);
   
   I_36_12 : OR2
      port map (I0=>GTB,
                I1=>GTA,
                O=>GT);
   
   I_36_13 : XNOR2
      port map (I0=>A1,
                I1=>B1,
                O=>EQ_1);
   
   I_36_14 : AND3B1
      port map (I0=>B2,
                I1=>EQ_3,
                I2=>A2,
                O=>GE2_3);
   
   I_36_15 : AND3B1
      port map (I0=>A2,
                I1=>EQ_3,
                I2=>B2,
                O=>LE2_3);
   
   I_36_16 : AND3B1
      port map (I0=>B0,
                I1=>EQ_1,
                I2=>A0,
                O=>GE0_1);
   
   I_36_17 : AND3B1
      port map (I0=>A0,
                I1=>EQ_1,
                I2=>B0,
                O=>LE0_1);
   
   I_36_18 : OR2
      port map (I0=>GT_1,
                I1=>GE0_1,
                O=>GT0_1);
   
   I_36_19 : OR2
      port map (I0=>GT_3,
                I1=>GE2_3,
                O=>GTB);
   
   I_36_20 : OR2
      port map (I0=>LT_3,
                I1=>LE2_3,
                O=>LTB);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity LARGESTDISP is
   port ( DISP0       : in    std_logic; 
          DISP1       : in    std_logic; 
          DISP2       : in    std_logic; 
          DISP3       : in    std_logic; 
          DISP4       : in    std_logic; 
          DISP5       : in    std_logic; 
          DISP6       : in    std_logic; 
          DISP7       : in    std_logic; 
          DISP8       : in    std_logic; 
          DISP9       : in    std_logic; 
          DISP10      : in    std_logic; 
          DISP11      : in    std_logic; 
          DISP12      : in    std_logic; 
          DISP13      : in    std_logic; 
          DISP14      : in    std_logic; 
          DISP15      : in    std_logic; 
          LRGDISPPOS0 : out   std_logic; 
          LRGDISPPOS1 : out   std_logic);
end LARGESTDISP;

architecture BEHAVIORAL of LARGESTDISP is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal PD0PD1LT          : std_logic;
   signal PD2PD3LT          : std_logic;
   signal XLXN_1977         : std_logic;
   signal XLXN_1979         : std_logic;
   signal XLXN_1999         : std_logic;
   signal XLXN_2000         : std_logic;
   signal XLXN_2001         : std_logic;
   signal XLXN_2002         : std_logic;
   signal XLXN_2012         : std_logic;
   signal XLXN_2014         : std_logic;
   signal XLXN_2016         : std_logic;
   signal XLXN_2086         : std_logic;
   signal XLXN_2087         : std_logic;
   signal XLXN_9774         : std_logic;
   signal LRGDISPPOS1_DUMMY : std_logic;
   component COMPM4_MXILINX_LARGESTDISP
      port ( A0 : in    std_logic; 
             A1 : in    std_logic; 
             A2 : in    std_logic; 
             A3 : in    std_logic; 
             B0 : in    std_logic; 
             B1 : in    std_logic; 
             B2 : in    std_logic; 
             B3 : in    std_logic; 
             GT : out   std_logic; 
             LT : out   std_logic);
   end component;
   
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
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   attribute HU_SET of U193 : label is "U193_4";
   attribute HU_SET of U194 : label is "U194_5";
   attribute HU_SET of U197 : label is "U197_6";
begin
   LRGDISPPOS1 <= LRGDISPPOS1_DUMMY;
   U193 : COMPM4_MXILINX_LARGESTDISP
      port map (A0=>DISP0,
                A1=>DISP1,
                A2=>DISP2,
                A3=>DISP3,
                B0=>DISP4,
                B1=>DISP5,
                B2=>DISP6,
                B3=>DISP7,
                GT=>open,
                LT=>PD0PD1LT);
   
   U194 : COMPM4_MXILINX_LARGESTDISP
      port map (A0=>DISP8,
                A1=>DISP9,
                A2=>DISP10,
                A3=>DISP11,
                B0=>DISP12,
                B1=>DISP13,
                B2=>DISP14,
                B3=>DISP15,
                GT=>open,
                LT=>PD2PD3LT);
   
   U195 : u74_157
      port map (A1=>DISP0,
                A2=>DISP1,
                A3=>DISP2,
                A4=>DISP3,
                B1=>DISP4,
                B2=>DISP5,
                B3=>DISP6,
                B4=>DISP7,
                G=>XLXN_2002,
                S=>PD0PD1LT,
                Y1=>XLXN_1977,
                Y2=>XLXN_2001,
                Y3=>XLXN_2000,
                Y4=>XLXN_1999);
   
   U196 : u74_157
      port map (A1=>DISP8,
                A2=>DISP9,
                A3=>DISP10,
                A4=>DISP11,
                B1=>DISP12,
                B2=>DISP13,
                B3=>DISP14,
                B4=>DISP15,
                G=>XLXN_9774,
                S=>PD2PD3LT,
                Y1=>XLXN_2016,
                Y2=>XLXN_2014,
                Y3=>XLXN_2012,
                Y4=>XLXN_1979);
   
   U197 : COMPM4_MXILINX_LARGESTDISP
      port map (A0=>XLXN_1977,
                A1=>XLXN_2001,
                A2=>XLXN_2000,
                A3=>XLXN_1999,
                B0=>XLXN_2016,
                B1=>XLXN_2014,
                B2=>XLXN_2012,
                B3=>XLXN_1979,
                GT=>open,
                LT=>LRGDISPPOS1_DUMMY);
   
   U198 : AND2B1
      port map (I0=>LRGDISPPOS1_DUMMY,
                I1=>PD0PD1LT,
                O=>XLXN_2086);
   
   U199 : AND2
      port map (I0=>PD2PD3LT,
                I1=>LRGDISPPOS1_DUMMY,
                O=>XLXN_2087);
   
   U200 : OR2
      port map (I0=>XLXN_2087,
                I1=>XLXN_2086,
                O=>LRGDISPPOS0);
   
   XLXI_26 : GND
      port map (G=>XLXN_2002);
   
   XLXI_939 : GND
      port map (G=>XLXN_9774);
   
end BEHAVIORAL;


