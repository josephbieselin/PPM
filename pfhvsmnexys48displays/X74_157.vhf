--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : X74_157.vhf
-- /___/   /\     Timestamp : 06/07/2015 17:06:18
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl D:/work/academic/cs2204/fall2015/labs/pfhvsm/X74_157.vhf -w D:/work/academic/cs2204/fall2015/labs/pfhvsm/X74_157.sch
--Design Name: X74_157
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

entity M2_1E_MXILINX_X74_157 is
   port ( D0 : in    std_logic; 
          D1 : in    std_logic; 
          E  : in    std_logic; 
          S0 : in    std_logic; 
          O  : out   std_logic);
end M2_1E_MXILINX_X74_157;

architecture BEHAVIORAL of M2_1E_MXILINX_X74_157 is
   attribute BOX_TYPE   : string ;
   signal M0 : std_logic;
   signal M1 : std_logic;
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component AND3B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B1 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
begin
   I_36_30 : AND3
      port map (I0=>D1,
                I1=>E,
                I2=>S0,
                O=>M1);
   
   I_36_31 : AND3B1
      port map (I0=>S0,
                I1=>E,
                I2=>D0,
                O=>M0);
   
   I_36_38 : OR2
      port map (I0=>M1,
                I1=>M0,
                O=>O);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity X74_157 is
   port ( A0 : in    std_logic; 
          A1 : in    std_logic; 
          A2 : in    std_logic; 
          A3 : in    std_logic; 
          B0 : in    std_logic; 
          B1 : in    std_logic; 
          B2 : in    std_logic; 
          B3 : in    std_logic; 
          G  : in    std_logic; 
          S  : in    std_logic; 
          Y0 : out   std_logic; 
          Y1 : out   std_logic; 
          Y2 : out   std_logic; 
          Y3 : out   std_logic);
end X74_157;

architecture BEHAVIORAL of X74_157 is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_196 : std_logic;
   component M2_1E_MXILINX_X74_157
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             E  : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_114 : label is "XLXI_114_0";
   attribute HU_SET of XLXI_115 : label is "XLXI_115_1";
   attribute HU_SET of XLXI_116 : label is "XLXI_116_2";
   attribute HU_SET of XLXI_117 : label is "XLXI_117_3";
begin
   XLXI_114 : M2_1E_MXILINX_X74_157
      port map (D0=>A0,
                D1=>B0,
                E=>XLXN_196,
                S0=>S,
                O=>Y0);
   
   XLXI_115 : M2_1E_MXILINX_X74_157
      port map (D0=>A1,
                D1=>B1,
                E=>XLXN_196,
                S0=>S,
                O=>Y1);
   
   XLXI_116 : M2_1E_MXILINX_X74_157
      port map (D0=>A2,
                D1=>B2,
                E=>XLXN_196,
                S0=>S,
                O=>Y2);
   
   XLXI_117 : M2_1E_MXILINX_X74_157
      port map (D0=>A3,
                D1=>B3,
                E=>XLXN_196,
                S0=>S,
                O=>Y3);
   
   XLXI_118 : INV
      port map (I=>G,
                O=>XLXN_196);
   
end BEHAVIORAL;


