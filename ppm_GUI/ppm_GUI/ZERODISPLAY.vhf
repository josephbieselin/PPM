--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 12.4
--  \   \         Application : sch2hdl
--  /   /         Filename : ZERODISPLAY.vhf
-- /___/   /\     Timestamp : 08/17/2011 17:22:19
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl D:/work/academic/cs2204/upgradevivekcs2204work/termproject/ZERODISPLAY.vhf -w D:/work/academic/cs2204/upgradevivekcs2204work/ZERODISPLAY/ZERODISPLAY.sch
--Design Name: ZERODISPLAY
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

entity ZERODISPLAY is
   port ( DISP0     : in    std_logic; 
          DISP1     : in    std_logic; 
          DISP2     : in    std_logic; 
          DISP3     : in    std_logic; 
          DISP4     : in    std_logic; 
          DISP5     : in    std_logic; 
          DISP6     : in    std_logic; 
          DISP7     : in    std_logic; 
          DISP8     : in    std_logic; 
          DISP9     : in    std_logic; 
          DISP10    : in    std_logic; 
          DISP11    : in    std_logic; 
          DISP12    : in    std_logic; 
          DISP13    : in    std_logic; 
          DISP14    : in    std_logic; 
          DISP15    : in    std_logic; 
          APOSZERO  : out   std_logic; 
          ZERODISP0 : out   std_logic; 
          ZERODISP1 : out   std_logic);
end ZERODISPLAY;

architecture BEHAVIORAL of ZERODISPLAY is
   attribute BOX_TYPE   : string ;
   signal POS0ZERO  : std_logic;
   signal POS1ZERO  : std_logic;
   signal POS2ZERO  : std_logic;
   signal POS3ZERO  : std_logic;
   signal XLXN_2113 : std_logic;
   signal XLXN_9900 : std_logic;
   component NOR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NOR4 : component is "BLACK_BOX";
   
   component OR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR4 : component is "BLACK_BOX";
   
   component AND2B2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B2 : component is "BLACK_BOX";
   
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
   
begin
   U201 : NOR4
      port map (I0=>DISP7,
                I1=>DISP6,
                I2=>DISP5,
                I3=>DISP4,
                O=>POS1ZERO);
   
   U202 : NOR4
      port map (I0=>DISP3,
                I1=>DISP2,
                I2=>DISP1,
                I3=>DISP0,
                O=>POS0ZERO);
   
   U203 : NOR4
      port map (I0=>DISP15,
                I1=>DISP14,
                I2=>DISP13,
                I3=>DISP12,
                O=>POS3ZERO);
   
   U204 : NOR4
      port map (I0=>DISP11,
                I1=>DISP10,
                I2=>DISP9,
                I3=>DISP8,
                O=>POS2ZERO);
   
   U205 : OR4
      port map (I0=>POS3ZERO,
                I1=>POS2ZERO,
                I2=>POS1ZERO,
                I3=>POS0ZERO,
                O=>APOSZERO);
   
   U206 : AND2B2
      port map (I0=>POS0ZERO,
                I1=>POS1ZERO,
                O=>ZERODISP1);
   
   U207 : AND2B1
      port map (I0=>POS0ZERO,
                I1=>POS1ZERO,
                O=>XLXN_2113);
   
   U208 : AND2B2
      port map (I0=>POS0ZERO,
                I1=>POS2ZERO,
                O=>XLXN_9900);
   
   U209 : OR2
      port map (I0=>XLXN_9900,
                I1=>XLXN_2113,
                O=>ZERODISP0);
   
end BEHAVIORAL;


