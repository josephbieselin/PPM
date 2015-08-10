--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : ppm.vhf
-- /___/   /\     Timestamp : 06/13/2015 17:12:40
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family artix7 -flat -suppress -vhdl S:/newcs2204/pfhvsmnexys48displays/ppm.vhf -w S:/newcs2204/pfhvsmnexys48displays/ppm.sch
--Design Name: ppm
--Device: artix7
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL COMPM2_HXILINX_ppm -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;
--use IEEE.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity COMPM2_HXILINX_ppm is
  
port(
    GT  : out std_logic;
    LT  : out std_logic;

    A0  : in std_logic;
    A1  : in std_logic;
    B0  : in std_logic;
    B1  : in std_logic
  );
end COMPM2_HXILINX_ppm;

architecture COMPM2_HXILINX_ppm_V of COMPM2_HXILINX_ppm is

  signal a_tmp: std_logic_vector(1 downto 0);
  signal b_tmp: std_logic_vector(1 downto 0);

begin

 a_tmp <= A1&A0;
 b_tmp <= B1&B0; 
 GT <= '1' when (a_tmp > b_tmp) else '0';
 LT <= '1' when (a_tmp < b_tmp) else '0';
     
end COMPM2_HXILINX_ppm_V;
----- CELL COMPM4_HXILINX_ppm -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_unsigned.all;

entity COMPM4_HXILINX_ppm is
  
port(
    GT  : out std_logic;
    LT  : out std_logic;

    A0  : in std_logic;
    A1  : in std_logic;
    A2  : in std_logic;
    A3  : in std_logic;
    B0  : in std_logic;
    B1  : in std_logic;
    B2  : in std_logic;
    B3  : in std_logic
  );
end COMPM4_HXILINX_ppm;

architecture COMPM4_HXILINX_ppm_V of COMPM4_HXILINX_ppm is
  signal a_tmp: std_logic_vector(3 downto 0);
  signal b_tmp: std_logic_vector(3 downto 0);

begin

   a_tmp <= A3&A2&A1&A0;
   b_tmp <= B3&B2&B1&B0;
   
   GT <= '1' when (a_tmp > b_tmp ) else '0';
   LT <= '1' when (a_tmp < b_tmp ) else '0';
     
end COMPM4_HXILINX_ppm_V;
----- CELL COMPM8_HXILINX_ppm -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_unsigned.all;

entity COMPM8_HXILINX_ppm is
port(
    GT  : out std_logic;
    LT  : out std_logic;

    A   : in std_logic_vector(7 downto 0);
    B   : in std_logic_vector(7 downto 0)
  );
end COMPM8_HXILINX_ppm;

architecture COMPM8_HXILINX_ppm_V of COMPM8_HXILINX_ppm is
begin
     
  GT <= '1' when (A > B) else '0';
  LT <= '1' when (A < B) else '0';
 
end COMPM8_HXILINX_ppm_V;
----- CELL FD8CE_HXILINX_ppm -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FD8CE_HXILINX_ppm is
port (
    Q   : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');

    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    CLR : in STD_LOGIC;
    D   : in STD_LOGIC_VECTOR(7 downto 0)
    );
end FD8CE_HXILINX_ppm;

architecture Behavioral of FD8CE_HXILINX_ppm is

begin

process(C, CLR)
begin
  if (CLR='1') then
    Q <= (others => '0');
  elsif (C'event and C = '1') then
    if (CE='1') then 
      Q <= D;
    end if;
  end if;
end process;


end Behavioral;

----- CELL CB4CE_HXILINX_ppm -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CB4CE_HXILINX_ppm is
  
port (
    CEO  : out STD_LOGIC;
    Q0   : out STD_LOGIC;
    Q1   : out STD_LOGIC;
    Q2   : out STD_LOGIC;
    Q3   : out STD_LOGIC;
    TC   : out STD_LOGIC;
    C    : in STD_LOGIC;
    CE   : in STD_LOGIC;
    CLR  : in STD_LOGIC
    );
end CB4CE_HXILINX_ppm;

architecture Behavioral of CB4CE_HXILINX_ppm is

  signal COUNT : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
  constant TERMINAL_COUNT : STD_LOGIC_VECTOR(3 downto 0) := (others => '1');
  
begin

process(C, CLR)
begin
  if (CLR='1') then
    COUNT <= (others => '0');
  elsif (C'event and C = '1') then
    if (CE='1') then 
      COUNT <= COUNT+1;
    end if;
  end if;
end process;

TC   <= '1' when (COUNT = TERMINAL_COUNT) else '0';
CEO  <= '1' when ((COUNT = TERMINAL_COUNT) and CE='1') else '0';

Q3 <= COUNT(3);
Q2 <= COUNT(2);
Q1 <= COUNT(1);
Q0 <= COUNT(0);

end Behavioral;

----- CELL M2_1E_HXILINX_ppm -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M2_1E_HXILINX_ppm is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    E   : in std_logic;
    S0  : in std_logic
  );
end M2_1E_HXILINX_ppm;

architecture M2_1E_HXILINX_ppm_V of M2_1E_HXILINX_ppm is
begin
  process (D0, D1, E, S0)
  begin
    if( E = '0') then
    O <= '0';
    else
      case S0 is
      when '0' => O <= D0;
      when '1' => O <= D1;
      when others => NULL;
      end case;
    end if;
    end process; 
end M2_1E_HXILINX_ppm_V;
----- CELL ADD4_HXILINX_ppm -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity ADD4_HXILINX_ppm is
  port(
    CO  : out std_logic;
    OFL : out std_logic;
    S0  : out std_logic;
    S1  : out std_logic;
    S2  : out std_logic;
    S3  : out std_logic;

    A0  : in std_logic;
    A1  : in std_logic;
    A2  : in std_logic;
    A3  : in std_logic;
    B0  : in std_logic;
    B1  : in std_logic;
    B2  : in std_logic;
    B3  : in std_logic;
    CI  : in std_logic
  );
end ADD4_HXILINX_ppm;

architecture ADD4_HXILINX_ppm_V of ADD4_HXILINX_ppm is
begin
 adsu_p : process (A0, A1, A2, A3, B0, B1, B2, B3, CI)
    variable adsu_tmp : std_logic_vector(4 downto 0);
    variable a_tmp    : std_logic_vector(3 downto 0);
    variable b_tmp    : std_logic_vector(3 downto 0);
  begin
    a_tmp := A3 & A2 & A1 & A0;
    b_tmp := B3 & B2 & B1 & B0;
    adsu_tmp := conv_std_logic_vector((conv_integer(a_tmp) + conv_integer(b_tmp) + conv_integer(CI)),5);
      
    S3 <= adsu_tmp(3);
    S2 <= adsu_tmp(2);
    S1 <= adsu_tmp(1);
    S0 <= adsu_tmp(0);
    CO <= adsu_tmp(4);
    OFL <= ( A3 and B3 and (not adsu_tmp(3)) ) or ( (not A3) and (not B3) and adsu_tmp(3) ); 
  end process; 

end ADD4_HXILINX_ppm_V;
----- CELL ADD8_HXILINX_ppm -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity ADD8_HXILINX_ppm is
port(
    CO  : out std_logic;
    OFL : out std_logic;
    S   : out std_logic_vector(7 downto 0);
    A   : in std_logic_vector(7 downto 0);
    B   : in std_logic_vector(7 downto 0);
    CI  : in std_logic
  );
end ADD8_HXILINX_ppm;

architecture ADD8_HXILINX_ppm_V of ADD8_HXILINX_ppm is
  signal adder_tmp: std_logic_vector(8 downto 0);
begin
  adder_tmp <= conv_std_logic_vector((conv_integer(A) + conv_integer(B) + conv_integer(CI)),9);
  S  <= adder_tmp(7 downto 0);
  CO <= adder_tmp(8);
  OFL <=  ( A(7) and B(7) and (not adder_tmp(7)) ) or ( (not A(7)) and (not B(7)) and adder_tmp(7) );  
end ADD8_HXILINX_ppm_V;
----- CELL COMP4_HXILINX_ppm -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity COMP4_HXILINX_ppm is
  
port(
    EQ  : out std_logic;

    A0  : in std_logic;
    A1  : in std_logic;
    A2  : in std_logic;
    A3  : in std_logic;
    B0  : in std_logic;
    B1  : in std_logic;
    B2  : in std_logic;
    B3  : in std_logic
  );
end COMP4_HXILINX_ppm;

architecture COMP4_HXILINX_ppm_V of COMP4_HXILINX_ppm is
begin
  EQ <= '1' when (A0=B0 and A1=B1 and A2=B2 and A3=B3) else '0';
end COMP4_HXILINX_ppm_V;
----- CELL M8_1E_HXILINX_ppm -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M8_1E_HXILINX_ppm is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    D2  : in std_logic;
    D3  : in std_logic;
    D4  : in std_logic;
    D5  : in std_logic;
    D6  : in std_logic;
    D7  : in std_logic;
    E   : in std_logic;
    S0  : in std_logic;
    S1  : in std_logic;
    S2  : in std_logic
  );
end M8_1E_HXILINX_ppm;

architecture M8_1E_HXILINX_ppm_V of M8_1E_HXILINX_ppm is
begin
  process (D0, D1, D2, D3, D4, D5, D6, D7, E, S0, S1, S2)
  variable sel : std_logic_vector(2 downto 0);
  begin
    sel := S2&S1&S0;
    if( E = '0') then
    O <= '0';
    else
      case sel is
      when "000" => O <= D0;
      when "001" => O <= D1;
      when "010" => O <= D2;
      when "011" => O <= D3;
      when "100" => O <= D4;
      when "101" => O <= D5;
      when "110" => O <= D6;
      when "111" => O <= D7;
      when others => NULL;
      end case;
    end if;
    end process; 
end M8_1E_HXILINX_ppm_V;
----- CELL CD4CE_HXILINX_ppm -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CD4CE_HXILINX_ppm is
  
port (
    CEO  : out STD_LOGIC;
    Q0   : out STD_LOGIC;
    Q1   : out STD_LOGIC;
    Q2   : out STD_LOGIC;
    Q3   : out STD_LOGIC;
    TC   : out STD_LOGIC;
    C    : in STD_LOGIC;
    CE   : in STD_LOGIC;
    CLR  : in STD_LOGIC
    );
end CD4CE_HXILINX_ppm;

architecture Behavioral of CD4CE_HXILINX_ppm is

  signal COUNT : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
  constant TERMINAL_COUNT : STD_LOGIC_VECTOR(3 downto 0) := "1001";
  
begin

process(C, CLR)
begin
  if (CLR='1') then
    COUNT <= (others => '0');
  elsif (C'event and C = '1') then
    if (CE='1') then 

      if (COUNT = "1001") then
        COUNT <= "0000";
      elsif (COUNT = "1011") then
        COUNT <= "0110";
      elsif (COUNT = "1101") then
        COUNT <= "0100";
      elsif (COUNT = "1111") then
        COUNT <= "0010";
      else
        COUNT <= COUNT+1;
      end if;

    end if;
  end if;
end process;

TC   <= '0' when (CLR = '1') else
        '1' when (COUNT = TERMINAL_COUNT) else '0';
CEO  <= '1' when ((COUNT = TERMINAL_COUNT) and CE='1') else '0';

Q3   <= COUNT(3);
Q2   <= COUNT(2);
Q1   <= COUNT(1);
Q0   <= COUNT(0);

end Behavioral;

----- CELL FD4CE_HXILINX_ppm -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FD4CE_HXILINX_ppm is
port (
    Q0  : out STD_LOGIC := '0';
    Q1  : out STD_LOGIC := '0';
    Q2  : out STD_LOGIC := '0';
    Q3  : out STD_LOGIC := '0';

    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    CLR : in STD_LOGIC;
    D0  : in STD_LOGIC;
    D1  : in STD_LOGIC;
    D2  : in STD_LOGIC;
    D3  : in STD_LOGIC
    );
end FD4CE_HXILINX_ppm;

architecture Behavioral of FD4CE_HXILINX_ppm is

begin

process(C, CLR)
begin
  if (CLR='1') then
    Q3 <= '0';
    Q2 <= '0';
    Q1 <= '0';
    Q0 <= '0';
  elsif (C'event and C = '1') then
    if (CE='1') then 
      Q3 <= D3;
      Q2 <= D2;
      Q1 <= D1;
      Q0 <= D0;
    end if;
  end if;
end process;


end Behavioral;

----- CELL CB16CE_HXILINX_ppm -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CB16CE_HXILINX_ppm is
port (
    CEO : out STD_LOGIC;
    Q   : out STD_LOGIC_VECTOR(15 downto 0);
    TC  : out STD_LOGIC;
    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    CLR : in STD_LOGIC
    );
end CB16CE_HXILINX_ppm;

architecture Behavioral of CB16CE_HXILINX_ppm is

  signal COUNT : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
  constant TERMINAL_COUNT : STD_LOGIC_VECTOR(15 downto 0) := (others => '1');
  
begin

process(C, CLR)
begin
  if (CLR='1') then
    COUNT <= (others => '0');
  elsif (C'event and C = '1') then
    if (CE='1') then 
      COUNT <= COUNT+1;
    end if;
  end if;
end process;

TC  <= '1' when (COUNT = TERMINAL_COUNT) else '0';
CEO <= '1' when ((COUNT = TERMINAL_COUNT) and CE='1') else '0';
Q   <= COUNT;

end Behavioral;

----- CELL D3_8E_HXILINX_ppm -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity D3_8E_HXILINX_ppm is
  
port(
    D0  : out std_logic;
    D1  : out std_logic;
    D2  : out std_logic;
    D3  : out std_logic;
    D4  : out std_logic;
    D5  : out std_logic;
    D6  : out std_logic;
    D7  : out std_logic;

    A0  : in std_logic;
    A1  : in std_logic;
    A2  : in std_logic;
    E   : in std_logic
  );
end D3_8E_HXILINX_ppm;

architecture D3_8E_HXILINX_ppm_V of D3_8E_HXILINX_ppm is
  signal d_tmp : std_logic_vector(7 downto 0);
begin
  process (A0, A1, A2, E)
  variable sel   : std_logic_vector(2 downto 0);
  begin
    sel := A2&A1&A0;
    if( E = '0') then
    d_tmp <= "00000000";
    else
      case sel is
      when "000" => d_tmp <= "00000001";
      when "001" => d_tmp <= "00000010";
      when "010" => d_tmp <= "00000100";
      when "011" => d_tmp <= "00001000";
      when "100" => d_tmp <= "00010000";
      when "101" => d_tmp <= "00100000";
      when "110" => d_tmp <= "01000000";
      when "111" => d_tmp <= "10000000";
      when others => NULL;
      end case;
    end if;
  end process; 

    D7 <= d_tmp(7);
    D6 <= d_tmp(6);
    D5 <= d_tmp(5);
    D4 <= d_tmp(4);
    D3 <= d_tmp(3);
    D2 <= d_tmp(2);
    D1 <= d_tmp(1);
    D0 <= d_tmp(0);

end D3_8E_HXILINX_ppm_V;
----- CELL M4_1E_HXILINX_ppm -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M4_1E_HXILINX_ppm is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    D2  : in std_logic;
    D3  : in std_logic;
    E   : in std_logic;
    S0  : in std_logic;
    S1  : in std_logic
  );
end M4_1E_HXILINX_ppm;

architecture M4_1E_HXILINX_ppm_V of M4_1E_HXILINX_ppm is
begin
  process (D0, D1, D2, D3, E, S0, S1)
  variable sel : std_logic_vector(1 downto 0);
  begin
    sel := S1&S0;
    if( E = '0') then
    O <= '0';
    else
      case sel is
      when "00" => O <= D0;
      when "01" => O <= D1;
      when "10" => O <= D2;
      when "11" => O <= D3;
      when others => NULL;
      end case;
    end if;
    end process; 
end M4_1E_HXILINX_ppm_V;
----- CELL CB4CLE_HXILINX_ppm -----

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CB4CLE_HXILINX_ppm is
  
port (
    CEO : out STD_LOGIC;
    Q0  : out STD_LOGIC;
    Q1  : out STD_LOGIC;
    Q2  : out STD_LOGIC;
    Q3  : out STD_LOGIC;
    TC  : out STD_LOGIC;
    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    CLR : in STD_LOGIC;
    D0  : in STD_LOGIC;	
    D1  : in STD_LOGIC;	
    D2  : in STD_LOGIC;	
    D3  : in STD_LOGIC;	
    L   : in STD_LOGIC );
end CB4CLE_HXILINX_ppm;

architecture Behavioral of CB4CLE_HXILINX_ppm is

  signal COUNT : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
  constant TERMINAL_COUNT : STD_LOGIC_VECTOR(3 downto 0) := (others => '1');

begin

process(C, CLR)
begin
  if (CLR='1') then
    COUNT <= (others => '0');
  elsif (C'event and C ='1') then
    if (L = '1') then
      COUNT <= D3&D2&D1&D0;
    elsif (CE='1') then 
      COUNT <= COUNT+1;
    end if;
  end if;
end process;

TC  <=  '0' when (CLR = '1') else
        '1' when (COUNT = TERMINAL_COUNT) else '0'; 
CEO <= '1' when ((COUNT = TERMINAL_COUNT) and CE='1') else '0';
 
Q3  <= COUNT(3);
Q2  <= COUNT(2);
Q1  <= COUNT(1);
Q0  <= COUNT(0);

end Behavioral;
----- CELL D2_4E_HXILINX_ppm -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity D2_4E_HXILINX_ppm is
  
port(
    D0  : out std_logic;
    D1  : out std_logic;
    D2  : out std_logic;
    D3  : out std_logic;

    A0  : in std_logic;
    A1  : in std_logic;
    E   : in std_logic
  );
end D2_4E_HXILINX_ppm;

architecture D2_4E_HXILINX_ppm_V of D2_4E_HXILINX_ppm is
  signal d_tmp : std_logic_vector(3 downto 0);
begin
  process (A0, A1, E)
  variable sel   : std_logic_vector(1 downto 0);
  begin
    sel := A1&A0;
    if( E = '0') then
    d_tmp <= "0000";
    else
      case sel is
      when "00" => d_tmp <= "0001";
      when "01" => d_tmp <= "0010";
      when "10" => d_tmp <= "0100";
      when "11" => d_tmp <= "1000";
      when others => NULL;
      end case;
    end if;
  end process; 

    D3 <= d_tmp(3);
    D2 <= d_tmp(2);
    D1 <= d_tmp(1);
    D0 <= d_tmp(0);

end D2_4E_HXILINX_ppm_V;
----- CELL M2_1_HXILINX_ppm -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M2_1_HXILINX_ppm is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    S0  : in std_logic
  );
end M2_1_HXILINX_ppm;

architecture M2_1_HXILINX_ppm_V of M2_1_HXILINX_ppm is
begin
  process (D0, D1, S0)
  begin
    case S0 is
    when '0' => O <= D0;
    when '1' => O <= D1;
    when others => NULL;
    end case;
    end process; 
end M2_1_HXILINX_ppm_V;
----- CELL CB2CE_HXILINX_ppm -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CB2CE_HXILINX_ppm is
  
port (
    CEO  : out STD_LOGIC;
    Q0   : out STD_LOGIC;
    Q1   : out STD_LOGIC;
    TC   : out STD_LOGIC;
    C    : in STD_LOGIC;
    CE   : in STD_LOGIC;
    CLR  : in STD_LOGIC
    );
end CB2CE_HXILINX_ppm;

architecture Behavioral of CB2CE_HXILINX_ppm is

  signal COUNT : STD_LOGIC_VECTOR(1 downto 0) := (others => '0');
  constant TERMINAL_COUNT : STD_LOGIC_VECTOR(1 downto 0) := (others => '1');
  
begin

process(C, CLR)
begin
  if (CLR='1') then
    COUNT <= (others => '0');
  elsif (C'event and C = '1') then
    if (CE='1') then 
      COUNT <= COUNT+1;
    end if;
  end if;
end process;

TC   <= '1' when (COUNT = TERMINAL_COUNT) else '0';
CEO  <= '1' when ((COUNT = TERMINAL_COUNT) and CE='1') else '0';

Q1 <= COUNT(1);
Q0 <= COUNT(0);

end Behavioral;


library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity X74_157_MUSER_ppm is
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
end X74_157_MUSER_ppm;

architecture BEHAVIORAL of X74_157_MUSER_ppm is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_196 : std_logic;
   component M2_1E_HXILINX_ppm
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
   XLXI_114 : M2_1E_HXILINX_ppm
      port map (D0=>A0,
                D1=>B0,
                E=>XLXN_196,
                S0=>S,
                O=>Y0);
   
   XLXI_115 : M2_1E_HXILINX_ppm
      port map (D0=>A1,
                D1=>B1,
                E=>XLXN_196,
                S0=>S,
                O=>Y1);
   
   XLXI_116 : M2_1E_HXILINX_ppm
      port map (D0=>A2,
                D1=>B2,
                E=>XLXN_196,
                S0=>S,
                O=>Y2);
   
   XLXI_117 : M2_1E_HXILINX_ppm
      port map (D0=>A3,
                D1=>B3,
                E=>XLXN_196,
                S0=>S,
                O=>Y3);
   
   XLXI_118 : INV
      port map (I=>G,
                O=>XLXN_196);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity X74_153_MUSER_ppm is
   port ( A0 : in    std_logic; 
          A1 : in    std_logic; 
          A2 : in    std_logic; 
          A3 : in    std_logic; 
          B0 : in    std_logic; 
          B1 : in    std_logic; 
          B2 : in    std_logic; 
          B3 : in    std_logic; 
          G0 : in    std_logic; 
          G1 : in    std_logic; 
          S0 : in    std_logic; 
          S1 : in    std_logic; 
          Y1 : out   std_logic; 
          Y2 : out   std_logic);
end X74_153_MUSER_ppm;

architecture BEHAVIORAL of X74_153_MUSER_ppm is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_1  : std_logic;
   signal XLXN_2  : std_logic;
   signal XLXN_13 : std_logic;
   signal XLXN_14 : std_logic;
   signal XLXN_15 : std_logic;
   signal XLXN_22 : std_logic;
   component M2_1_HXILINX_ppm
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component M2_1E_HXILINX_ppm
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
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_4";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_5";
   attribute HU_SET of XLXI_3 : label is "XLXI_3_6";
   attribute HU_SET of XLXI_4 : label is "XLXI_4_7";
   attribute HU_SET of XLXI_5 : label is "XLXI_5_8";
   attribute HU_SET of XLXI_6 : label is "XLXI_6_9";
begin
   XLXI_1 : M2_1_HXILINX_ppm
      port map (D0=>A0,
                D1=>A1,
                S0=>S0,
                O=>XLXN_1);
   
   XLXI_2 : M2_1_HXILINX_ppm
      port map (D0=>A2,
                D1=>A3,
                S0=>S0,
                O=>XLXN_2);
   
   XLXI_3 : M2_1_HXILINX_ppm
      port map (D0=>B0,
                D1=>B1,
                S0=>S0,
                O=>XLXN_13);
   
   XLXI_4 : M2_1_HXILINX_ppm
      port map (D0=>B2,
                D1=>B3,
                S0=>S0,
                O=>XLXN_14);
   
   XLXI_5 : M2_1E_HXILINX_ppm
      port map (D0=>XLXN_1,
                D1=>XLXN_2,
                E=>XLXN_22,
                S0=>S1,
                O=>Y1);
   
   XLXI_6 : M2_1E_HXILINX_ppm
      port map (D0=>XLXN_13,
                D1=>XLXN_14,
                E=>XLXN_15,
                S0=>S1,
                O=>Y2);
   
   XLXI_7 : INV
      port map (I=>G0,
                O=>XLXN_22);
   
   XLXI_8 : INV
      port map (I=>G1,
                O=>XLXN_15);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity ppm is
   port ( CLOCK_NP2B  : in    std_logic; 
          P1ADD_NP2B  : in    std_logic; 
          P1PLAY_NP2B : in    std_logic; 
          P1SEL0_NP2B : in    std_logic; 
          P1SEL1_NP2B : in    std_logic; 
          P1SEL2_NP2B : in    std_logic; 
          P1SEL3_NP2B : in    std_logic; 
          P2PLAY_NP2B : in    std_logic; 
          RESET_NP2B  : in    std_logic; 
          SHPTS_NP2B  : in    std_logic; 
          TRD1_NP2B   : in    std_logic; 
          TRD2_NP2B   : in    std_logic; 
          TRD3_NP2B   : in    std_logic; 
          ADD_NB2P    : out   std_logic; 
          A0_NB2P     : out   std_logic; 
          A1_NB2P     : out   std_logic; 
          A2_NB2P     : out   std_logic; 
          A3_NB2P     : out   std_logic; 
          A4_NB2P     : out   std_logic; 
          A5_NB2P     : out   std_logic; 
          A6_NB2P     : out   std_logic; 
          A7_NB2P     : out   std_logic; 
          CA_NB2P     : out   std_logic; 
          CB_NB2P     : out   std_logic; 
          CC_NB2P     : out   std_logic; 
          CD_NB2P     : out   std_logic; 
          CE_NB2P     : out   std_logic; 
          CF_NB2P     : out   std_logic; 
          CG_NB2P     : out   std_logic; 
          LED8        : out   std_logic; 
          LED9        : out   std_logic; 
          LED10       : out   std_logic; 
          LED11       : out   std_logic; 
          LED12       : out   std_logic; 
          LED13       : out   std_logic; 
          LED14       : out   std_logic; 
          LED15       : out   std_logic; 
          RD0_NB2P    : out   std_logic; 
          RD1_NB2P    : out   std_logic; 
          RD2_NB2P    : out   std_logic; 
          RD3_NB2P    : out   std_logic; 
          STR0_NB2P   : out   std_logic; 
          STR1_NB2P   : out   std_logic; 
          STR2_NB2P   : out   std_logic; 
          sw8         : out   std_logic; 
          sw9         : out   std_logic; 
          sw10        : out   std_logic; 
          sw11        : out   std_logic; 
          sw12        : out   std_logic; 
          sw13        : out   std_logic; 
          sw14        : out   std_logic; 
          sw15        : out   std_logic);
end ppm;

architecture BEHAVIORAL of ppm is
   attribute BOX_TYPE    : string ;
   attribute HU_SET      : string ;
   attribute INIT        : string ;
   attribute IOSTANDARD  : string ;
   attribute CAPACITANCE : string ;
   attribute SLEW        : string ;
   attribute DRIVE       : string ;
   signal ACTION0            : std_logic;
   signal ACTION1            : std_logic;
   signal ACTION2            : std_logic;
   signal ACTION3            : std_logic;
   signal ACTION4            : std_logic;
   signal ADD                : std_logic;
   signal ADJ                : std_logic;
   signal ADJCODE            : std_logic;
   signal APOSZERO           : std_logic;
   signal BPDF               : std_logic;
   signal BPDS               : std_logic;
   signal BRWDEQCD           : std_logic;
   signal BRWD0              : std_logic;
   signal BRWD1              : std_logic;
   signal BRWD2              : std_logic;
   signal BRWD3              : std_logic;
   signal CALCPTS            : std_logic;
   signal CDEQBRWD0          : std_logic;
   signal CDEQBRWD1          : std_logic;
   signal CDEQPD0            : std_logic;
   signal CDEQPD1            : std_logic;
   signal CENLD              : std_logic;
   signal CLEAR              : std_logic;
   signal CLEARP2FFS         : std_logic;
   signal CLFF               : std_logic;
   signal CLKEN              : std_logic;
   signal CLOCK              : std_logic;
   signal CLOCK_B2B          : std_logic;
   signal CLPXNSDFF          : std_logic;
   signal CLRRDREGS          : std_logic;
   signal CLRSHFTREG         : std_logic;
   signal CLRTOPLAY          : std_logic;
   signal CODEKNOWN          : std_logic;
   signal CODEPOS0           : std_logic;
   signal CODEPOS1           : std_logic;
   signal CODERWD            : std_logic_vector (7 downto 0);
   signal CODERWDMUXSEL1     : std_logic;
   signal CODE0              : std_logic;
   signal CODE1              : std_logic;
   signal CODE2              : std_logic;
   signal CODE3              : std_logic;
   signal CODE4              : std_logic;
   signal CODE5              : std_logic;
   signal CODE6              : std_logic;
   signal CODE7              : std_logic;
   signal CRNTADJ            : std_logic;
   signal DCDEN0             : std_logic;
   signal DCDEN1             : std_logic;
   signal DCDEN2             : std_logic;
   signal DCDEN3             : std_logic;
   signal DCDEN4             : std_logic;
   signal DCDEN5             : std_logic;
   signal DCDEN6             : std_logic;
   signal DCDEN7             : std_logic;
   signal DDISP0             : std_logic;
   signal DDISP1             : std_logic;
   signal DDISP2             : std_logic;
   signal DDISP3             : std_logic;
   signal DDISP4             : std_logic;
   signal DDISP5             : std_logic;
   signal DDISP6             : std_logic;
   signal DDISP7             : std_logic;
   signal DDISP8             : std_logic;
   signal DDISP9             : std_logic;
   signal DDISP10            : std_logic;
   signal DDISP11            : std_logic;
   signal DDISP12            : std_logic;
   signal DDISP13            : std_logic;
   signal DDISP14            : std_logic;
   signal DDISP15            : std_logic;
   signal DIGEQCD            : std_logic;
   signal DIGEQCDADD         : std_logic;
   signal DIGEQCDPOSSEL0     : std_logic;
   signal DISPEN             : std_logic_vector (3 downto 0);
   signal DISPSEL0           : std_logic;
   signal DISPSEL1           : std_logic;
   signal DISP0              : std_logic;
   signal DISP1              : std_logic;
   signal DISP2              : std_logic;
   signal DISP3              : std_logic;
   signal DISP4              : std_logic;
   signal DISP5              : std_logic;
   signal DISP6              : std_logic;
   signal DISP7              : std_logic;
   signal DISP8              : std_logic;
   signal DISP9              : std_logic;
   signal DISP10             : std_logic;
   signal DISP11             : std_logic;
   signal DISP12             : std_logic;
   signal DISP13             : std_logic;
   signal DISP14             : std_logic;
   signal DISP15             : std_logic;
   signal DUMMY_2            : std_logic;
   signal ENCODERWDMUX       : std_logic;
   signal ENCPOSN0           : std_logic;
   signal ENCPOSN1           : std_logic;
   signal ENCPSEL0           : std_logic;
   signal ENCPSEL1           : std_logic;
   signal EQ0                : std_logic;
   signal EQ1                : std_logic;
   signal EQ2                : std_logic;
   signal EQ3                : std_logic;
   signal GETCODE            : std_logic;
   signal GRD                : std_logic;
   signal INITIALPLAYS       : std_logic;
   signal INITIALSHIFT       : std_logic;
   signal INITPLAYONZERODISP : std_logic;
   signal INT_NET0           : std_logic;
   signal INT_NET1           : std_logic;
   signal INT_NET2           : std_logic;
   signal INT_NET6           : std_logic;
   signal INT_NET8           : std_logic;
   signal INT_NET10          : std_logic;
   signal INT_NET11          : std_logic;
   signal KSBUS              : std_logic_vector (3 downto 0);
   signal LADJCODE           : std_logic;
   signal LARGESTNSD0        : std_logic;
   signal LARGESTNSD1        : std_logic;
   signal LARGESTRWD         : std_logic_vector (7 downto 0);
   signal LNSDADD            : std_logic;
   signal LNSDPOSSEL0        : std_logic;
   signal LNSDPOSSEL1        : std_logic;
   signal LPDPRD             : std_logic;
   signal LPSEL0             : std_logic;
   signal LPSEL1             : std_logic;
   signal LPSEL2             : std_logic;
   signal LPSEL3             : std_logic;
   signal LPTOVF             : std_logic;
   signal LP1NSD             : std_logic;
   signal LP2NSD             : std_logic;
   signal LRGDISPPOS0        : std_logic;
   signal LRGDISPPOS1        : std_logic;
   signal LRGRWDLTEIGHT      : std_logic;
   signal LRGRWDWINSGAME     : std_logic;
   signal LRWDRDADD          : std_logic;
   signal LRWDRDPOSSEL0      : std_logic;
   signal LRWDRDPOSSEL1      : std_logic;
   signal MC0                : std_logic;
   signal MC1                : std_logic;
   signal MC2                : std_logic;
   signal NEXTPLAY           : std_logic;
   signal NOWCNRD            : std_logic;
   signal NPDISP0            : std_logic;
   signal NPDISP1            : std_logic;
   signal NPDISP2            : std_logic;
   signal NPDISP3            : std_logic;
   signal NPDISP4            : std_logic;
   signal NPDISP5            : std_logic;
   signal NPDISP6            : std_logic;
   signal NPDISP7            : std_logic;
   signal NPDISP8            : std_logic;
   signal NPDISP9            : std_logic;
   signal NPDISP10           : std_logic;
   signal NPDISP11           : std_logic;
   signal NPDISP12           : std_logic;
   signal NPDISP13           : std_logic;
   signal NPDISP14           : std_logic;
   signal NPDISP15           : std_logic;
   signal NPSELDISP0         : std_logic;
   signal NPSELDISP1         : std_logic;
   signal NPSELDISP2         : std_logic;
   signal NPSELDISP3         : std_logic;
   signal NPT                : std_logic_vector (7 downto 0);
   signal NSDGTLARGEST       : std_logic;
   signal NSD0               : std_logic;
   signal NSD1               : std_logic;
   signal PDPRD              : std_logic;
   signal PD0PD1LT           : std_logic;
   signal PD0PRD             : std_logic;
   signal PD1PRD             : std_logic;
   signal PD2PD3LT           : std_logic;
   signal PD2PRD             : std_logic;
   signal PD3PRD             : std_logic;
   signal PLAYONLRGSTDISP    : std_logic;
   signal PLAYPOS0           : std_logic;
   signal PLAYPOS1           : std_logic;
   signal PLAYPOS2           : std_logic;
   signal POS0ZERO           : std_logic;
   signal POS1ZERO           : std_logic;
   signal POS2ZERO           : std_logic;
   signal POS3ZERO           : std_logic;
   signal PSEL0              : std_logic;
   signal PSEL1              : std_logic;
   signal PSEL2              : std_logic;
   signal PSEL3              : std_logic;
   signal PT                 : std_logic_vector (7 downto 0);
   signal PTOVF              : std_logic;
   signal P1ADD              : std_logic;
   signal P1PLAY             : std_logic;
   signal P1PLAYED           : std_logic;
   signal P1PLAYSYNCH        : std_logic;
   signal P1PT               : std_logic_vector (7 downto 0);
   signal P1SEL              : std_logic_vector (3 downto 0);
   signal P1SKIP             : std_logic;
   signal P2ADD              : std_logic;
   signal P2CANPLAY          : std_logic;
   signal P2CANTEST          : std_logic;
   signal P2CLK              : std_logic;
   signal P2CODE0            : std_logic;
   signal P2CODE1            : std_logic;
   signal P2CODE2            : std_logic;
   signal P2CODE3            : std_logic;
   signal P2CODE4            : std_logic;
   signal P2CODE5            : std_logic;
   signal P2CODE6            : std_logic;
   signal P2CODE7            : std_logic;
   signal P2PLAY             : std_logic;
   signal P2PLAYED           : std_logic;
   signal P2PLAYSYNCH        : std_logic;
   signal P2PT               : std_logic_vector (7 downto 0);
   signal P2PTGTP1PT         : std_logic;
   signal P2SELCD0           : std_logic;
   signal P2SELCD1           : std_logic;
   signal P2SELCD2           : std_logic;
   signal P2SELCD3           : std_logic;
   signal P2SEL0             : std_logic;
   signal P2SEL1             : std_logic;
   signal P2SEL2             : std_logic;
   signal P2SEL3             : std_logic;
   signal P2SKIP             : std_logic;
   signal P2STR0             : std_logic;
   signal P2STR1             : std_logic;
   signal P2STR2             : std_logic;
   signal P2STR3             : std_logic;
   signal P2STURN            : std_logic;
   signal P2S0               : std_logic;
   signal P2S1               : std_logic;
   signal P2S2               : std_logic;
   signal P2S3               : std_logic;
   signal P2S4               : std_logic;
   signal P2S5               : std_logic;
   signal P2S6               : std_logic;
   signal P2S7               : std_logic;
   signal Q                  : std_logic_vector (15 downto 0);
   signal QA                 : std_logic_vector (15 downto 0);
   signal RDCLK              : std_logic;
   signal RDC0               : std_logic;
   signal RDC1               : std_logic;
   signal RDC2               : std_logic;
   signal RDC3               : std_logic;
   signal RDNOTZERO          : std_logic;
   signal RDPLAYABLE         : std_logic;
   signal RDP0EQ0            : std_logic;
   signal RDP0EQ1            : std_logic;
   signal RDP0EQ2            : std_logic;
   signal RDP1EQ0            : std_logic;
   signal RDP1EQ1            : std_logic;
   signal RDP1EQ2            : std_logic;
   signal RDP2EQ0            : std_logic;
   signal RDP2EQ1            : std_logic;
   signal RDP2EQ2            : std_logic;
   signal RDP3EQ0            : std_logic;
   signal RDP3EQ1            : std_logic;
   signal RDP3EQ2            : std_logic;
   signal RD0                : std_logic;
   signal RD1                : std_logic;
   signal RD2                : std_logic;
   signal RD3                : std_logic;
   signal RESET              : std_logic;
   signal RWD                : std_logic_vector (7 downto 0);
   signal RWDCOT             : std_logic;
   signal RWDGTRDLARGEST     : std_logic;
   signal R0D0               : std_logic;
   signal R0D1               : std_logic;
   signal R0D2               : std_logic;
   signal R0D3               : std_logic;
   signal R1D0               : std_logic;
   signal R1D1               : std_logic;
   signal R1D2               : std_logic;
   signal R1D3               : std_logic;
   signal R2D0               : std_logic;
   signal R2D1               : std_logic;
   signal R2D2               : std_logic;
   signal R2D3               : std_logic;
   signal SBUS               : std_logic_vector (6 downto 0);
   signal SELPLYR            : std_logic;
   signal SHNXRDS            : std_logic;
   signal SHPTS              : std_logic;
   signal STCODE0            : std_logic;
   signal STCODE1            : std_logic;
   signal STDIGEQCD          : std_logic;
   signal STDISP0            : std_logic;
   signal STDISP1            : std_logic;
   signal STDISP2            : std_logic;
   signal STDISP3            : std_logic;
   signal STNLNSD            : std_logic;
   signal STNLRWDRD          : std_logic;
   signal STP1PT             : std_logic;
   signal STP2PT             : std_logic;
   signal STR0               : std_logic;
   signal STR1               : std_logic;
   signal STR2               : std_logic;
   signal SYSCLK             : std_logic;
   signal S0                 : std_logic;
   signal S0P1PLAYSYNCH      : std_logic;
   signal S1                 : std_logic;
   signal S1P1PLAYED         : std_logic;
   signal S1P1SKIP           : std_logic;
   signal S1S4S6COND         : std_logic;
   signal S2                 : std_logic;
   signal S2ORS5             : std_logic;
   signal S3                 : std_logic;
   signal S3P1PLAYSYNCHADJ   : std_logic;
   signal S3P2PLAYSYNCH      : std_logic;
   signal S3S6COND           : std_logic;
   signal S4                 : std_logic;
   signal S4P2PLAYED         : std_logic;
   signal S4P2SKIP           : std_logic;
   signal S5                 : std_logic;
   signal S6                 : std_logic;
   signal S6P1PLAYSYNCH      : std_logic;
   signal S6P2PLAYSYNCHADJ   : std_logic;
   signal TESTADD            : std_logic;
   signal TESTP2SEL0         : std_logic;
   signal TESTP2SEL1         : std_logic;
   signal TESTP2SEL2         : std_logic;
   signal TESTP2SEL3         : std_logic;
   signal TOTRWD             : std_logic_vector (7 downto 0);
   signal TRD1               : std_logic;
   signal TRD2               : std_logic;
   signal TRD3               : std_logic;
   signal UNENCNSD0          : std_logic;
   signal UNENCNSD1          : std_logic;
   signal UNENCNSD2          : std_logic;
   signal XLXN_1             : std_logic;
   signal XLXN_4             : std_logic;
   signal XLXN_7             : std_logic;
   signal XLXN_8             : std_logic;
   signal XLXN_12            : std_logic;
   signal XLXN_19            : std_logic;
   signal XLXN_74            : std_logic;
   signal XLXN_88            : std_logic;
   signal XLXN_102           : std_logic;
   signal XLXN_140           : std_logic;
   signal XLXN_141           : std_logic;
   signal XLXN_149           : std_logic;
   signal XLXN_151           : std_logic;
   signal XLXN_156           : std_logic;
   signal XLXN_163           : std_logic;
   signal XLXN_164           : std_logic;
   signal XLXN_166           : std_logic;
   signal XLXN_181           : std_logic;
   signal XLXN_188           : std_logic;
   signal XLXN_193           : std_logic;
   signal XLXN_194           : std_logic;
   signal XLXN_195           : std_logic;
   signal XLXN_202           : std_logic;
   signal XLXN_203           : std_logic;
   signal XLXN_210           : std_logic;
   signal XLXN_211           : std_logic;
   signal XLXN_213           : std_logic;
   signal XLXN_460           : std_logic;
   signal XLXN_462           : std_logic;
   signal XLXN_474           : std_logic;
   signal XLXN_478           : std_logic;
   signal XLXN_482           : std_logic;
   signal XLXN_1195          : std_logic;
   signal XLXN_1196          : std_logic;
   signal XLXN_1346          : std_logic;
   signal XLXN_1347          : std_logic;
   signal XLXN_1361          : std_logic;
   signal XLXN_1363          : std_logic;
   signal XLXN_1364          : std_logic;
   signal XLXN_1577          : std_logic;
   signal XLXN_1595          : std_logic;
   signal XLXN_1615          : std_logic;
   signal XLXN_1623          : std_logic;
   signal XLXN_1635          : std_logic;
   signal XLXN_1738          : std_logic;
   signal XLXN_1754          : std_logic;
   signal XLXN_1764          : std_logic;
   signal XLXN_1771          : std_logic;
   signal XLXN_1785          : std_logic;
   signal XLXN_1801          : std_logic;
   signal XLXN_1802          : std_logic;
   signal XLXN_1809          : std_logic;
   signal XLXN_1811          : std_logic;
   signal XLXN_1823          : std_logic;
   signal XLXN_1839          : std_logic;
   signal XLXN_1877          : std_logic;
   signal XLXN_1891          : std_logic;
   signal XLXN_1907          : std_logic;
   signal XLXN_2029          : std_logic;
   signal XLXN_2061          : std_logic;
   signal XLXN_2072          : std_logic;
   signal XLXN_2186          : std_logic;
   signal XLXN_2272          : std_logic;
   signal XLXN_2274          : std_logic;
   signal XLXN_2275          : std_logic;
   signal XLXN_2277          : std_logic;
   signal XLXN_2304          : std_logic;
   signal XLXN_2308          : std_logic;
   signal XLXN_2309          : std_logic;
   signal XLXN_2310          : std_logic;
   signal XLXN_2312          : std_logic;
   signal XLXN_2313          : std_logic;
   signal XLXN_2331          : std_logic;
   signal XLXN_2332          : std_logic;
   signal XLXN_2340          : std_logic;
   signal XLXN_2346          : std_logic;
   signal XLXN_2350          : std_logic;
   signal XLXN_2372          : std_logic;
   signal XLXN_9551          : std_logic;
   signal XLXN_9714          : std_logic;
   signal XLXN_10388         : std_logic;
   signal XLXN_10389         : std_logic;
   signal XLXN_10394         : std_logic;
   signal XLXN_10395         : std_logic;
   signal XLXN_10400         : std_logic;
   signal XLXN_10402         : std_logic;
   signal XLXN_10403         : std_logic;
   signal XLXN_10404         : std_logic;
   signal XLXN_10405         : std_logic;
   signal XLXN_10406         : std_logic;
   signal XLXN_10471         : std_logic;
   signal XLXN_10478         : std_logic;
   signal XLXN_10482         : std_logic;
   signal XLXN_10484         : std_logic;
   signal XLXN_10495         : std_logic;
   signal XLXN_10716         : std_logic;
   signal XLXN_10958         : std_logic;
   signal XLXN_10960         : std_logic;
   signal XLXN_10962         : std_logic;
   signal XLXN_10993         : std_logic;
   signal XLXN_11102         : std_logic;
   signal XLXN_11110         : std_logic;
   signal XLXN_11259         : std_logic;
   signal XLXN_11260         : std_logic;
   signal XLXN_11261         : std_logic;
   signal XLXN_11263         : std_logic;
   signal XLXN_11265         : std_logic;
   signal XLXN_11266         : std_logic;
   signal XLXN_11270         : std_logic;
   signal XLXN_11271         : std_logic;
   signal XLXN_11292         : std_logic;
   signal XLXN_11294         : std_logic;
   signal XLXN_11295         : std_logic;
   signal XLXN_11310         : std_logic;
   signal XLXN_11347         : std_logic;
   signal XLXN_11610         : std_logic;
   signal XLXN_11612         : std_logic;
   signal XLXN_11622         : std_logic;
   signal XLXN_11623         : std_logic;
   signal XLXN_11624         : std_logic;
   signal XLXN_11625         : std_logic;
   signal XLXN_11627         : std_logic;
   signal XLXN_11628         : std_logic;
   signal XLXN_11634         : std_logic;
   signal XLXN_11644         : std_logic;
   signal XLXN_11645         : std_logic;
   signal XLXN_11646         : std_logic;
   signal XLXN_11673         : std_logic;
   signal XLXN_11675         : std_logic;
   signal XLXN_11808         : std_logic;
   signal XLXN_11809         : std_logic;
   signal XLXN_11824         : std_logic;
   signal XLXN_11941         : std_logic;
   signal XLXN_11980         : std_logic;
   signal XLXN_11981         : std_logic;
   signal XLXN_11982         : std_logic;
   signal XLXN_12041         : std_logic;
   signal XLXN_12042         : std_logic;
   signal XLXN_12043         : std_logic;
   signal XLXN_12049         : std_logic;
   signal ZERODISP0          : std_logic;
   signal ZERODISP1          : std_logic;
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component BUFG
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUFG : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
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
   
   component AND3B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B1 : component is "BLACK_BOX";
   
   component CB2CE_HXILINX_ppm
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             TC  : out   std_logic);
   end component;
   
   component FDC
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDC : component is "BLACK_BOX";
   
   component OR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR3 : component is "BLACK_BOX";
   
   component AND3B2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B2 : component is "BLACK_BOX";
   
   component FDCE
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDCE : component is "BLACK_BOX";
   
   component OR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR4 : component is "BLACK_BOX";
   
   component NOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NOR2 : component is "BLACK_BOX";
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component CB4CLE_HXILINX_ppm
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D0  : in    std_logic; 
             D1  : in    std_logic; 
             D2  : in    std_logic; 
             D3  : in    std_logic; 
             L   : in    std_logic; 
             CEO : out   std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             Q2  : out   std_logic; 
             Q3  : out   std_logic; 
             TC  : out   std_logic);
   end component;
   
   component D3_8E_HXILINX_ppm
      port ( A0 : in    std_logic; 
             A1 : in    std_logic; 
             A2 : in    std_logic; 
             E  : in    std_logic; 
             D0 : out   std_logic; 
             D1 : out   std_logic; 
             D2 : out   std_logic; 
             D3 : out   std_logic; 
             D4 : out   std_logic; 
             D5 : out   std_logic; 
             D6 : out   std_logic; 
             D7 : out   std_logic);
   end component;
   
   component CB16CE_HXILINX_ppm
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q   : out   std_logic_vector (15 downto 0); 
             TC  : out   std_logic);
   end component;
   
   component FD4CE_HXILINX_ppm
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
   
   component X74_157_MUSER_ppm
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
             Y3 : out   std_logic; 
             Y1 : out   std_logic; 
             Y2 : out   std_logic);
   end component;
   
   component X74_153_MUSER_ppm
      port ( A0 : in    std_logic; 
             A1 : in    std_logic; 
             A2 : in    std_logic; 
             A3 : in    std_logic; 
             B0 : in    std_logic; 
             B1 : in    std_logic; 
             B2 : in    std_logic; 
             B3 : in    std_logic; 
             G0 : in    std_logic; 
             G1 : in    std_logic; 
             S0 : in    std_logic; 
             S1 : in    std_logic; 
             Y1 : out   std_logic; 
             Y2 : out   std_logic);
   end component;
   
   component OR2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2B1 : component is "BLACK_BOX";
   
   component NAND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NAND2 : component is "BLACK_BOX";
   
   component ROM16X1
      -- synopsys translate_off
      generic( INIT : bit_vector :=  x"0000");
      -- synopsys translate_on
      port ( A0 : in    std_logic; 
             A1 : in    std_logic; 
             A2 : in    std_logic; 
             A3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute INIT of ROM16X1 : component is "0000";
   attribute BOX_TYPE of ROM16X1 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component M8_1E_HXILINX_ppm
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             D2 : in    std_logic; 
             D3 : in    std_logic; 
             D4 : in    std_logic; 
             D5 : in    std_logic; 
             D6 : in    std_logic; 
             D7 : in    std_logic; 
             E  : in    std_logic; 
             S0 : in    std_logic; 
             S1 : in    std_logic; 
             S2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component FD8CE_HXILINX_ppm
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic_vector (7 downto 0); 
             Q   : out   std_logic_vector (7 downto 0));
   end component;
   
   component CD4CE_HXILINX_ppm
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             Q2  : out   std_logic; 
             Q3  : out   std_logic; 
             TC  : out   std_logic);
   end component;
   
   component NOR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NOR3 : component is "BLACK_BOX";
   
   component COMP4_HXILINX_ppm
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
   
   component ADD4_HXILINX_ppm
      port ( A0  : in    std_logic; 
             A1  : in    std_logic; 
             A2  : in    std_logic; 
             A3  : in    std_logic; 
             B0  : in    std_logic; 
             B1  : in    std_logic; 
             B2  : in    std_logic; 
             B3  : in    std_logic; 
             CI  : in    std_logic; 
             CO  : out   std_logic; 
             OFL : out   std_logic; 
             S0  : out   std_logic; 
             S1  : out   std_logic; 
             S2  : out   std_logic; 
             S3  : out   std_logic);
   end component;
   
   component M4_1E_HXILINX_ppm
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             D2 : in    std_logic; 
             D3 : in    std_logic; 
             E  : in    std_logic; 
             S0 : in    std_logic; 
             S1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component M2_1E_HXILINX_ppm
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             E  : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component ADD8_HXILINX_ppm
      port ( A   : in    std_logic_vector (7 downto 0); 
             B   : in    std_logic_vector (7 downto 0); 
             CI  : in    std_logic; 
             CO  : out   std_logic; 
             OFL : out   std_logic; 
             S   : out   std_logic_vector (7 downto 0));
   end component;
   
   component COMPM8_HXILINX_ppm
      port ( A  : in    std_logic_vector (7 downto 0); 
             B  : in    std_logic_vector (7 downto 0); 
             GT : out   std_logic; 
             LT : out   std_logic);
   end component;
   
   component COMPM2_HXILINX_ppm
      port ( A0 : in    std_logic; 
             A1 : in    std_logic; 
             B0 : in    std_logic; 
             B1 : in    std_logic; 
             GT : out   std_logic; 
             LT : out   std_logic);
   end component;
   
   component NOR5
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NOR5 : component is "BLACK_BOX";
   
   component AND4B2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4B2 : component is "BLACK_BOX";
   
   component COMPM4_HXILINX_ppm
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
   
   component NOR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NOR4 : component is "BLACK_BOX";
   
   component AND2B2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B2 : component is "BLACK_BOX";
   
   component OR5
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR5 : component is "BLACK_BOX";
   
   component AND4B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4B1 : component is "BLACK_BOX";
   
   component AND3B3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B3 : component is "BLACK_BOX";
   
   component M2_1_HXILINX_ppm
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component D2_4E_HXILINX_ppm
      port ( A0 : in    std_logic; 
             A1 : in    std_logic; 
             E  : in    std_logic; 
             D0 : out   std_logic; 
             D1 : out   std_logic; 
             D2 : out   std_logic; 
             D3 : out   std_logic);
   end component;
   
   component CB4CE_HXILINX_ppm
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             Q2  : out   std_logic; 
             Q3  : out   std_logic; 
             TC  : out   std_logic);
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component IBUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute IOSTANDARD of IBUF : component is "DEFAULT";
   attribute CAPACITANCE of IBUF : component is "DONT_CARE";
   attribute BOX_TYPE of IBUF : component is "BLACK_BOX";
   
   component OBUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute IOSTANDARD of OBUF : component is "DEFAULT";
   attribute CAPACITANCE of OBUF : component is "DONT_CARE";
   attribute SLEW of OBUF : component is "SLOW";
   attribute DRIVE of OBUF : component is "12";
   attribute BOX_TYPE of OBUF : component is "BLACK_BOX";
   
   attribute HU_SET of U6 : label is "U6_39";
   attribute HU_SET of U64 : label is "U64_14";
   attribute HU_SET of U65 : label is "U65_15";
   attribute HU_SET of U66 : label is "U66_40";
   attribute HU_SET of U67 : label is "U67_41";
   attribute HU_SET of U69 : label is "U69_42";
   attribute INIT of U104 : label is "2812";
   attribute INIT of U105 : label is "D860";
   attribute INIT of U106 : label is "D004";
   attribute INIT of U107 : label is "8692";
   attribute INIT of U108 : label is "02BA";
   attribute INIT of U109 : label is "208E";
   attribute INIT of U110 : label is "1083";
   attribute HU_SET of U112 : label is "U112_10";
   attribute HU_SET of U113 : label is "U113_24";
   attribute HU_SET of U114 : label is "U114_25";
   attribute HU_SET of U115 : label is "U115_26";
   attribute HU_SET of U116 : label is "U116_27";
   attribute HU_SET of U117 : label is "U117_21";
   attribute HU_SET of U118 : label is "U118_22";
   attribute HU_SET of U119 : label is "U119_20";
   attribute HU_SET of U120 : label is "U120_19";
   attribute HU_SET of U121 : label is "U121_18";
   attribute HU_SET of U122 : label is "U122_17";
   attribute HU_SET of U128 : label is "U128_48";
   attribute HU_SET of U131 : label is "U131_47";
   attribute HU_SET of U132 : label is "U132_50";
   attribute HU_SET of U133 : label is "U133_51";
   attribute HU_SET of U134 : label is "U134_49";
   attribute HU_SET of U135 : label is "U135_52";
   attribute HU_SET of U148 : label is "U148_46";
   attribute HU_SET of U149 : label is "U149_45";
   attribute HU_SET of U150 : label is "U150_43";
   attribute HU_SET of U151 : label is "U151_44";
   attribute HU_SET of U155 : label is "U155_23";
   attribute HU_SET of U159 : label is "U159_55";
   attribute HU_SET of U160 : label is "U160_56";
   attribute HU_SET of U161 : label is "U161_54";
   attribute HU_SET of U162 : label is "U162_53";
   attribute HU_SET of U169 : label is "U169_58";
   attribute HU_SET of U171 : label is "U171_59";
   attribute HU_SET of U176 : label is "U176_57";
   attribute HU_SET of U181 : label is "U181_61";
   attribute HU_SET of U182 : label is "U182_60";
   attribute HU_SET of U183 : label is "U183_11";
   attribute HU_SET of U184 : label is "U184_12";
   attribute HU_SET of U185 : label is "U185_13";
   attribute HU_SET of U186 : label is "U186_28";
   attribute HU_SET of U188 : label is "U188_29";
   attribute HU_SET of U190 : label is "U190_36";
   attribute HU_SET of U191 : label is "U191_37";
   attribute HU_SET of U195 : label is "U195_32";
   attribute HU_SET of U198 : label is "U198_62";
   attribute HU_SET of U199 : label is "U199_63";
   attribute HU_SET of U202 : label is "U202_64";
   attribute HU_SET of U218 : label is "U218_66";
   attribute HU_SET of U220 : label is "U220_65";
   attribute HU_SET of U226 : label is "U226_67";
   attribute HU_SET of U227 : label is "U227_68";
   attribute HU_SET of U228 : label is "U228_38";
   attribute HU_SET of U245 : label is "U245_35";
   attribute HU_SET of U247 : label is "U247_16";
   attribute HU_SET of U253 : label is "U253_34";
   attribute HU_SET of U254 : label is "U254_33";
   attribute HU_SET of U269 : label is "U269_30";
   attribute HU_SET of U271 : label is "U271_31";
   attribute HU_SET of XLXI_1513 : label is "XLXI_1513_69";
   attribute HU_SET of XLXI_1542 : label is "XLXI_1542_70";
   attribute HU_SET of XLXI_1543 : label is "XLXI_1543_71";
   attribute HU_SET of XLXI_1544 : label is "XLXI_1544_72";
   attribute HU_SET of XLXI_1545 : label is "XLXI_1545_73";
   attribute HU_SET of XLXI_1564 : label is "XLXI_1564_74";
begin
   CALCPTS_BUF : BUF
      port map (I=>S2ORS5,
                O=>CALCPTS);
   
   CLEAR_BUF : BUF
      port map (I=>RESET,
                O=>CLEAR);
   
   CLOCK_BUFG : BUFG
      port map (I=>CLOCK_B2B,
                O=>CLOCK);
   
   ENCPOSN0_BUF : BUF
      port map (I=>P2STR0,
                O=>ENCPOSN0);
   
   ENCPOSN1_BUF : BUF
      port map (I=>P2STR1,
                O=>ENCPOSN1);
   
   PLAYPOS2_BUF : BUF
      port map (I=>ACTION4,
                O=>PLAYPOS2);
   
   P1SKIP_BUF : BUF
      port map (I=>P2PLAYSYNCH,
                O=>P1SKIP);
   
   P2CANPLAY_BUF : BUF
      port map (I=>P2STR3,
                O=>P2CANPLAY);
   
   P2CLK_BUFG : BUFG
      port map (I=>Q(4),
                O=>P2CLK);
   
   P2STURN_BUF : BUF
      port map (I=>S4,
                O=>P2STURN);
   
   RDCLK_BUFG : BUFG
      port map (I=>Q(2),
                O=>RDCLK);
   
   RDP0EQ2_BUF : BUF
      port map (I=>EQ1,
                O=>RDP0EQ2);
   
   RDP1EQ1_BUF : BUF
      port map (I=>EQ2,
                O=>RDP1EQ1);
   
   RDP1EQ2_B : BUF
      port map (I=>EQ0,
                O=>RDP1EQ2);
   
   RDP2EQ1_B : BUF
      port map (I=>EQ1,
                O=>RDP2EQ1);
   
   RDP2EQ2_BUF : BUF
      port map (I=>EQ3,
                O=>RDP2EQ2);
   
   RDP3EQ2_BUF : BUF
      port map (I=>EQ2,
                O=>RDP3EQ2);
   
   SELPLYR_BUF : BUF
      port map (I=>STR2,
                O=>SELPLYR);
   
   SYSCLK_BUFG : BUFG
      port map (I=>Q(7),
                O=>SYSCLK);
   
   TESTADD_BUF : BUF
      port map (I=>P2STR2,
                O=>TESTADD);
   
   U1 : OR2
      port map (I0=>S1,
                I1=>S6P2PLAYSYNCHADJ,
                O=>CLEARP2FFS);
   
   U2 : AND2B1
      port map (I0=>LPTOVF,
                I1=>XLXN_12,
                O=>CLFF);
   
   U3 : OR2
      port map (I0=>S0,
                I1=>NEXTPLAY,
                O=>XLXN_12);
   
   U4 : AND2
      port map (I0=>INITIALSHIFT,
                I1=>S0,
                O=>GETCODE);
   
   U5 : AND3B1
      port map (I0=>INITIALSHIFT,
                I1=>P1PLAYSYNCH,
                I2=>S0,
                O=>CLRSHFTREG);
   
   U6 : CB2CE_HXILINX_ppm
      port map (C=>SYSCLK,
                CE=>CLRSHFTREG,
                CLR=>CLRRDREGS,
                CEO=>open,
                Q0=>open,
                Q1=>open,
                TC=>INITIALSHIFT);
   
   U7 : OR2
      port map (I0=>XLXN_19,
                I1=>SHNXRDS,
                O=>DISPSEL1);
   
   U8 : OR2
      port map (I0=>SHPTS,
                I1=>XLXN_19,
                O=>DISPSEL0);
   
   U9 : AND2
      port map (I0=>SHPTS,
                I1=>P1PLAY,
                O=>XLXN_19);
   
   U10 : OR2
      port map (I0=>XLXN_141,
                I1=>XLXN_140,
                O=>SHNXRDS);
   
   U11 : AND2
      port map (I0=>S1,
                I1=>P1PLAY,
                O=>XLXN_140);
   
   U12 : AND3B1
      port map (I0=>LP1NSD,
                I1=>P1PLAY,
                I2=>S3,
                O=>XLXN_141);
   
   U13 : AND2
      port map (I0=>PSEL3,
                I1=>CALCPTS,
                O=>STDISP3);
   
   U14 : AND2
      port map (I0=>PSEL2,
                I1=>CALCPTS,
                O=>STDISP2);
   
   U15 : AND2
      port map (I0=>PSEL1,
                I1=>CALCPTS,
                O=>STDISP1);
   
   U16 : AND2
      port map (I0=>PSEL0,
                I1=>CALCPTS,
                O=>STDISP0);
   
   U17 : AND2B1
      port map (I0=>LPTOVF,
                I1=>S2,
                O=>STP1PT);
   
   U18 : AND2B1
      port map (I0=>LPTOVF,
                I1=>S5,
                O=>STP2PT);
   
   U19 : FDC
      port map (C=>P2CLK,
                CLR=>S1,
                D=>CLEAR,
                Q=>XLXN_10471);
   
   U20 : FDC
      port map (C=>P2CLK,
                CLR=>S1,
                D=>XLXN_10471,
                Q=>XLXN_10478);
   
   U21 : FDC
      port map (C=>P2CLK,
                CLR=>S1,
                D=>XLXN_10478,
                Q=>XLXN_11102);
   
   U22 : AND3B1
      port map (I0=>XLXN_11102,
                I1=>XLXN_10478,
                I2=>XLXN_10471,
                O=>CLRRDREGS);
   
   U23 : AND2B1
      port map (I0=>LPTOVF,
                I1=>XLXN_9551,
                O=>ADD);
   
   U24 : OR3
      port map (I0=>XLXN_151,
                I1=>XLXN_149,
                I2=>XLXN_9714,
                O=>XLXN_9551);
   
   U25 : AND2
      port map (I0=>P1ADD,
                I1=>S1,
                O=>XLXN_9714);
   
   U26 : AND2
      port map (I0=>P2ADD,
                I1=>S4,
                O=>XLXN_149);
   
   U27 : AND3B2
      port map (I0=>S4,
                I1=>S1,
                I2=>XLXN_156,
                O=>XLXN_151);
   
   U28 : FDCE
      port map (C=>SYSCLK,
                CE=>INT_NET10,
                CLR=>CLRTOPLAY,
                D=>XLXN_166,
                Q=>XLXN_156);
   
   U29 : AND2
      port map (I0=>S1P1PLAYED,
                I1=>P1ADD,
                O=>XLXN_164);
   
   U30 : AND2
      port map (I0=>S4P2PLAYED,
                I1=>P2ADD,
                O=>XLXN_163);
   
   U31 : OR2
      port map (I0=>XLXN_163,
                I1=>XLXN_164,
                O=>INT_NET10);
   
   U32 : AND2B1
      port map (I0=>LPTOVF,
                I1=>INT_NET6,
                O=>GRD);
   
   U33 : OR2
      port map (I0=>CLRSHFTREG,
                I1=>INT_NET8,
                O=>INT_NET6);
   
   U34 : AND2B1
      port map (I0=>S0,
                I1=>NEXTPLAY,
                O=>INT_NET8);
   
   U35 : AND2B1
      port map (I0=>INT_NET2,
                I1=>INT_NET1,
                O=>BPDS);
   
   U36 : AND2
      port map (I0=>INT_NET1,
                I1=>INT_NET2,
                O=>BPDF);
   
   U37 : AND2
      port map (I0=>ADD,
                I1=>LPDPRD,
                O=>INT_NET2);
   
   U38 : AND3B2
      port map (I0=>LPTOVF,
                I1=>SHPTS,
                I2=>XLXN_188,
                O=>INT_NET1);
   
   U39 : OR2
      port map (I0=>S3,
                I1=>S6,
                O=>XLXN_188);
   
   U40 : OR4
      port map (I0=>S3S6COND,
                I1=>S1P1SKIP,
                I2=>S6P2PLAYSYNCHADJ,
                I3=>S3P2PLAYSYNCH,
                O=>NEXTPLAY);
   
   U41 : OR3
      port map (I0=>NEXTPLAY,
                I1=>S0,
                I2=>S4P2SKIP,
                O=>CLRTOPLAY);
   
   U42 : NOR2
      port map (I0=>LP2NSD,
                I1=>LP1NSD,
                O=>INT_NET11);
   
   U43 : FDC
      port map (C=>SYSCLK,
                CLR=>INT_NET11,
                D=>CLRTOPLAY,
                Q=>CLPXNSDFF);
   
   U44 : AND3
      port map (I0=>INITIALSHIFT,
                I1=>P1PLAYSYNCH,
                I2=>S0,
                O=>S0P1PLAYSYNCH);
   
   U45 : AND2
      port map (I0=>P1PLAYED,
                I1=>S1,
                O=>S1P1PLAYED);
   
   U46 : AND2
      port map (I0=>P1SKIP,
                I1=>S1,
                O=>S1P1SKIP);
   
   U47 : AND3B1
      port map (I0=>LP1NSD,
                I1=>P2PLAYSYNCH,
                I2=>S3,
                O=>S3P2PLAYSYNCH);
   
   U48 : AND3
      port map (I0=>LP1NSD,
                I1=>P1PLAYSYNCH,
                I2=>S3,
                O=>S3P1PLAYSYNCHADJ);
   
   U49 : OR2
      port map (I0=>NSD1,
                I1=>NSD0,
                O=>CRNTADJ);
   
   U50 : FDCE
      port map (C=>SYSCLK,
                CE=>S2,
                CLR=>CLPXNSDFF,
                D=>CRNTADJ,
                Q=>LP1NSD);
   
   U51 : AND2
      port map (I0=>P2PLAYED,
                I1=>S4,
                O=>S4P2PLAYED);
   
   U52 : AND2
      port map (I0=>P2SKIP,
                I1=>S4,
                O=>S4P2SKIP);
   
   U53 : AND3B1
      port map (I0=>LP2NSD,
                I1=>P1PLAYSYNCH,
                I2=>S6,
                O=>S6P1PLAYSYNCH);
   
   U54 : AND3
      port map (I0=>LP2NSD,
                I1=>P2PLAYSYNCH,
                I2=>S6,
                O=>S6P2PLAYSYNCHADJ);
   
   U55 : FDCE
      port map (C=>SYSCLK,
                CE=>S5,
                CLR=>CLPXNSDFF,
                D=>CRNTADJ,
                Q=>LP2NSD);
   
   U56 : OR4
      port map (I0=>S4P2PLAYED,
                I1=>S3P2PLAYSYNCH,
                I2=>S1P1PLAYED,
                I3=>S0P1PLAYSYNCH,
                O=>XLXN_460);
   
   U57 : OR2
      port map (I0=>S5,
                I1=>S2,
                O=>S2ORS5);
   
   U58 : OR3
      port map (I0=>CENLD,
                I1=>S2ORS5,
                I2=>XLXN_460,
                O=>XLXN_462);
   
   U59 : AND2B1
      port map (I0=>LPTOVF,
                I1=>XLXN_462,
                O=>CLKEN);
   
   U60 : OR2
      port map (I0=>S3P1PLAYSYNCHADJ,
                I1=>S6P1PLAYSYNCH,
                O=>S3S6COND);
   
   U61 : OR3
      port map (I0=>S6P2PLAYSYNCHADJ,
                I1=>S4P2SKIP,
                I2=>S1P1SKIP,
                O=>S1S4S6COND);
   
   U62 : OR2
      port map (I0=>S1S4S6COND,
                I1=>S3S6COND,
                O=>CENLD);
   
   U63 : AND2B1
      port map (I0=>LPTOVF,
                I1=>CENLD,
                O=>XLXN_474);
   
   U64 : CB4CLE_HXILINX_ppm
      port map (C=>SYSCLK,
                CE=>CLKEN,
                CLR=>RESET,
                D0=>S3S6COND,
                D1=>S4P2SKIP,
                D2=>S1S4S6COND,
                D3=>XLXN_478,
                L=>XLXN_474,
                CEO=>open,
                Q0=>STR0,
                Q1=>STR1,
                Q2=>STR2,
                Q3=>open,
                TC=>open);
   
   U65 : D3_8E_HXILINX_ppm
      port map (A0=>STR0,
                A1=>STR1,
                A2=>STR2,
                E=>XLXN_482,
                D0=>S0,
                D1=>S1,
                D2=>S2,
                D3=>S3,
                D4=>S4,
                D5=>S5,
                D6=>S6,
                D7=>open);
   
   U66 : CB16CE_HXILINX_ppm
      port map (C=>CLOCK,
                CE=>XLXN_1,
                CLR=>XLXN_4,
                CEO=>open,
                Q(15 downto 0)=>QA(15 downto 0),
                TC=>open);
   
   U67 : CB16CE_HXILINX_ppm
      port map (C=>QA(15),
                CE=>XLXN_8,
                CLR=>XLXN_7,
                CEO=>open,
                Q(15 downto 0)=>Q(15 downto 0),
                TC=>open);
   
   U68 : FDCE
      port map (C=>SYSCLK,
                CE=>CALCPTS,
                CLR=>CLFF,
                D=>PDPRD,
                Q=>LPDPRD);
   
   U69 : FD4CE_HXILINX_ppm
      port map (C=>SYSCLK,
                CE=>CALCPTS,
                CLR=>CLFF,
                D0=>PSEL0,
                D1=>PSEL1,
                D2=>PSEL2,
                D3=>PSEL3,
                Q0=>LPSEL0,
                Q1=>LPSEL1,
                Q2=>LPSEL2,
                Q3=>LPSEL3);
   
   U70 : OR2
      port map (I0=>STP2PT,
                I1=>STP1PT,
                O=>XLXN_74);
   
   U71 : FDCE
      port map (C=>SYSCLK,
                CE=>XLXN_74,
                CLR=>CLEAR,
                D=>PTOVF,
                Q=>LPTOVF);
   
   U72 : FDC
      port map (C=>RDCLK,
                CLR=>XLXN_10716,
                D=>P2PLAY,
                Q=>XLXN_10484);
   
   U73 : FDC
      port map (C=>P2CLK,
                CLR=>XLXN_10716,
                D=>XLXN_10484,
                Q=>XLXN_10482);
   
   U74 : FDC
      port map (C=>SYSCLK,
                CLR=>XLXN_10716,
                D=>XLXN_10482,
                Q=>XLXN_10495);
   
   U75 : AND3B1
      port map (I0=>XLXN_10495,
                I1=>XLXN_10482,
                I2=>XLXN_10484,
                O=>P2PLAYSYNCH);
   
   U76 : FDC
      port map (C=>RDCLK,
                CLR=>XLXN_10993,
                D=>P1PLAY,
                Q=>XLXN_10962);
   
   U77 : FDC
      port map (C=>P2CLK,
                CLR=>XLXN_10993,
                D=>XLXN_10962,
                Q=>XLXN_10958);
   
   U78 : FDC
      port map (C=>SYSCLK,
                CLR=>XLXN_10993,
                D=>XLXN_10958,
                Q=>XLXN_10960);
   
   U79 : AND3B1
      port map (I0=>XLXN_10960,
                I1=>XLXN_10958,
                I2=>XLXN_10962,
                O=>P1PLAYSYNCH);
   
   U80 : X74_157_MUSER_ppm
      port map (A0=>DISP12,
                A1=>DISP13,
                A2=>DISP14,
                A3=>DISP15,
                B0=>P2PT(4),
                B1=>P2PT(5),
                B2=>P2PT(6),
                B3=>P2PT(7),
                G=>XLXN_88,
                S=>DISPSEL0,
                Y0=>DDISP12,
                Y1=>DDISP13,
                Y2=>DDISP14,
                Y3=>DDISP15);
   
   U81 : X74_157_MUSER_ppm
      port map (A0=>DISP8,
                A1=>DISP9,
                A2=>DISP10,
                A3=>DISP11,
                B0=>P2PT(0),
                B1=>P2PT(1),
                B2=>P2PT(2),
                B3=>P2PT(3),
                G=>XLXN_102,
                S=>DISPSEL0,
                Y0=>DDISP8,
                Y1=>DDISP9,
                Y2=>DDISP10,
                Y3=>DDISP11);
   
   U82 : X74_153_MUSER_ppm
      port map (A0=>DISP6,
                A1=>P1PT(6),
                A2=>R2D2,
                A3=>P2CODE6,
                B0=>DISP7,
                B1=>P1PT(7),
                B2=>R2D3,
                B3=>P2CODE7,
                G0=>XLXN_10402,
                G1=>XLXN_10400,
                S0=>DISPSEL0,
                S1=>DISPSEL1,
                Y1=>DDISP6,
                Y2=>DDISP7);
   
   U83 : X74_153_MUSER_ppm
      port map (A0=>DISP4,
                A1=>P1PT(4),
                A2=>R2D0,
                A3=>P2CODE4,
                B0=>DISP5,
                B1=>P1PT(5),
                B2=>R2D1,
                B3=>P2CODE5,
                G0=>XLXN_10404,
                G1=>XLXN_10403,
                S0=>DISPSEL0,
                S1=>DISPSEL1,
                Y1=>DDISP4,
                Y2=>DDISP5);
   
   U84 : X74_153_MUSER_ppm
      port map (A0=>DISP2,
                A1=>P1PT(2),
                A2=>R1D2,
                A3=>P2CODE2,
                B0=>DISP3,
                B1=>P1PT(3),
                B2=>R1D3,
                B3=>P2CODE3,
                G0=>XLXN_10395,
                G1=>XLXN_10394,
                S0=>DISPSEL0,
                S1=>DISPSEL1,
                Y1=>DDISP2,
                Y2=>DDISP3);
   
   U85 : X74_153_MUSER_ppm
      port map (A0=>DISP0,
                A1=>P1PT(0),
                A2=>R1D0,
                A3=>P2CODE0,
                B0=>DISP1,
                B1=>P1PT(1),
                B2=>R1D1,
                B3=>P2CODE1,
                G0=>XLXN_10406,
                G1=>XLXN_10405,
                S0=>DISPSEL0,
                S1=>DISPSEL1,
                Y1=>DDISP0,
                Y2=>DDISP1);
   
   U87 : OR2B1
      port map (I0=>BPDF,
                I1=>Q(6),
                O=>XLXN_202);
   
   U88 : OR2B1
      port map (I0=>BPDS,
                I1=>Q(8),
                O=>XLXN_203);
   
   U89 : AND2
      port map (I0=>XLXN_203,
                I1=>XLXN_202,
                O=>INT_NET0);
   
   U90 : OR2B1
      port map (I0=>LPTOVF,
                I1=>Q(8),
                O=>XLXN_210);
   
   U92 : OR2B1
      port map (I0=>LPSEL0,
                I1=>INT_NET0,
                O=>XLXN_181);
   
   U93 : NAND2
      port map (I0=>DCDEN0,
                I1=>XLXN_181,
                O=>DISPEN(0));
   
   U94 : OR2B1
      port map (I0=>LPSEL1,
                I1=>INT_NET0,
                O=>XLXN_195);
   
   U95 : NAND2
      port map (I0=>DCDEN1,
                I1=>XLXN_195,
                O=>DISPEN(1));
   
   U96 : OR2B1
      port map (I0=>LPSEL2,
                I1=>INT_NET0,
                O=>XLXN_194);
   
   U97 : NAND2
      port map (I0=>DCDEN2,
                I1=>XLXN_194,
                O=>DISPEN(2));
   
   U98 : OR2B1
      port map (I0=>LPSEL3,
                I1=>INT_NET0,
                O=>XLXN_193);
   
   U99 : NAND2
      port map (I0=>DCDEN3,
                I1=>XLXN_193,
                O=>DISPEN(3));
   
   U104 : ROM16X1
   -- synopsys translate_off
   generic map( INIT => x"2812")
   -- synopsys translate_on
      port map (A0=>KSBUS(0),
                A1=>KSBUS(1),
                A2=>KSBUS(2),
                A3=>KSBUS(3),
                O=>SBUS(6));
   
   U105 : ROM16X1
   -- synopsys translate_off
   generic map( INIT => x"D860")
   -- synopsys translate_on
      port map (A0=>KSBUS(0),
                A1=>KSBUS(1),
                A2=>KSBUS(2),
                A3=>KSBUS(3),
                O=>SBUS(5));
   
   U106 : ROM16X1
   -- synopsys translate_off
   generic map( INIT => x"D004")
   -- synopsys translate_on
      port map (A0=>KSBUS(0),
                A1=>KSBUS(1),
                A2=>KSBUS(2),
                A3=>KSBUS(3),
                O=>SBUS(4));
   
   U107 : ROM16X1
   -- synopsys translate_off
   generic map( INIT => x"8692")
   -- synopsys translate_on
      port map (A0=>KSBUS(0),
                A1=>KSBUS(1),
                A2=>KSBUS(2),
                A3=>KSBUS(3),
                O=>SBUS(3));
   
   U108 : ROM16X1
   -- synopsys translate_off
   generic map( INIT => x"02BA")
   -- synopsys translate_on
      port map (A0=>KSBUS(0),
                A1=>KSBUS(1),
                A2=>KSBUS(2),
                A3=>KSBUS(3),
                O=>SBUS(2));
   
   U109 : ROM16X1
   -- synopsys translate_off
   generic map( INIT => x"208E")
   -- synopsys translate_on
      port map (A0=>KSBUS(0),
                A1=>KSBUS(1),
                A2=>KSBUS(2),
                A3=>KSBUS(3),
                O=>SBUS(1));
   
   U110 : ROM16X1
   -- synopsys translate_off
   generic map( INIT => x"1083")
   -- synopsys translate_on
      port map (A0=>KSBUS(0),
                A1=>KSBUS(1),
                A2=>KSBUS(2),
                A3=>KSBUS(3),
                O=>SBUS(0));
   
   U111 : INV
      port map (I=>P1SEL(0),
                O=>XLXN_1195);
   
   U112 : M8_1E_HXILINX_ppm
      port map (D0=>P1SEL(0),
                D1=>XLXN_1195,
                D2=>XLXN_1195,
                D3=>XLXN_1196,
                D4=>XLXN_1195,
                D5=>XLXN_1196,
                D6=>XLXN_1196,
                D7=>XLXN_1196,
                E=>XLXN_11110,
                S0=>P1SEL(1),
                S1=>P1SEL(2),
                S2=>P1SEL(3),
                O=>P1PLAYED);
   
   U113 : FD4CE_HXILINX_ppm
      port map (C=>SYSCLK,
                CE=>STDISP3,
                CLR=>CLEAR,
                D0=>BRWD0,
                D1=>BRWD1,
                D2=>BRWD2,
                D3=>BRWD3,
                Q0=>DISP12,
                Q1=>DISP13,
                Q2=>DISP14,
                Q3=>DISP15);
   
   U114 : FD4CE_HXILINX_ppm
      port map (C=>SYSCLK,
                CE=>STDISP2,
                CLR=>CLEAR,
                D0=>BRWD0,
                D1=>BRWD1,
                D2=>BRWD2,
                D3=>BRWD3,
                Q0=>DISP8,
                Q1=>DISP9,
                Q2=>DISP10,
                Q3=>DISP11);
   
   U115 : FD4CE_HXILINX_ppm
      port map (C=>SYSCLK,
                CE=>STDISP1,
                CLR=>CLEAR,
                D0=>BRWD0,
                D1=>BRWD1,
                D2=>BRWD2,
                D3=>BRWD3,
                Q0=>DISP4,
                Q1=>DISP5,
                Q2=>DISP6,
                Q3=>DISP7);
   
   U116 : FD4CE_HXILINX_ppm
      port map (C=>SYSCLK,
                CE=>STDISP0,
                CLR=>CLEAR,
                D0=>BRWD0,
                D1=>BRWD1,
                D2=>BRWD2,
                D3=>BRWD3,
                Q0=>DISP0,
                Q1=>DISP1,
                Q2=>DISP2,
                Q3=>DISP3);
   
   U117 : FD8CE_HXILINX_ppm
      port map (C=>SYSCLK,
                CE=>STP1PT,
                CLR=>CLEAR,
                D(7 downto 0)=>NPT(7 downto 0),
                Q(7 downto 0)=>P1PT(7 downto 0));
   
   U118 : FD8CE_HXILINX_ppm
      port map (C=>SYSCLK,
                CE=>STP2PT,
                CLR=>CLEAR,
                D(7 downto 0)=>NPT(7 downto 0),
                Q(7 downto 0)=>P2PT(7 downto 0));
   
   U119 : CD4CE_HXILINX_ppm
      port map (C=>RDCLK,
                CE=>XLXN_1361,
                CLR=>XLXN_1363,
                CEO=>open,
                Q0=>RDC0,
                Q1=>RDC1,
                Q2=>RDC2,
                Q3=>RDC3,
                TC=>open);
   
   U120 : FD4CE_HXILINX_ppm
      port map (C=>SYSCLK,
                CE=>GRD,
                CLR=>CLRRDREGS,
                D0=>Q(8),
                D1=>RDC1,
                D2=>RDC2,
                D3=>RDC3,
                Q0=>R2D0,
                Q1=>R2D1,
                Q2=>R2D2,
                Q3=>R2D3);
   
   U121 : FD4CE_HXILINX_ppm
      port map (C=>SYSCLK,
                CE=>GRD,
                CLR=>CLRRDREGS,
                D0=>R2D0,
                D1=>R2D1,
                D2=>R2D2,
                D3=>R2D3,
                Q0=>R1D0,
                Q1=>R1D1,
                Q2=>R1D2,
                Q3=>R1D3);
   
   U122 : FD4CE_HXILINX_ppm
      port map (C=>SYSCLK,
                CE=>GRD,
                CLR=>CLRRDREGS,
                D0=>R1D0,
                D1=>R1D1,
                D2=>R1D2,
                D3=>R1D3,
                Q0=>R0D0,
                Q1=>R0D1,
                Q2=>R0D2,
                Q3=>R0D3);
   
   U123 : OR4
      port map (I0=>P1SEL(0),
                I1=>P1SEL(1),
                I2=>P1SEL(2),
                I3=>P1SEL(3),
                O=>XLXN_1347);
   
   U124 : AND2
      port map (I0=>XLXN_1347,
                I1=>SELPLYR,
                O=>XLXN_1346);
   
   U126 : NOR3
      port map (I0=>R1D0,
                I1=>RDC1,
                I2=>R2D2,
                O=>XLXN_11295);
   
   U127 : OR2
      port map (I0=>XLXN_11295,
                I1=>R1D1,
                O=>XLXN_11310);
   
   U128 : FD4CE_HXILINX_ppm
      port map (C=>SYSCLK,
                CE=>GETCODE,
                CLR=>CLRRDREGS,
                D0=>XLXN_11310,
                D1=>R2D2,
                D2=>RDC1,
                D3=>R1D0,
                Q0=>CODE0,
                Q1=>CODE1,
                Q2=>CODE2,
                Q3=>CODE3);
   
   U129 : NOR3
      port map (I0=>R2D0,
                I1=>RDC3,
                I2=>R1D3,
                O=>XLXN_11294);
   
   U130 : OR2
      port map (I0=>XLXN_11294,
                I1=>R2D1,
                O=>XLXN_11292);
   
   U131 : FD4CE_HXILINX_ppm
      port map (C=>SYSCLK,
                CE=>GETCODE,
                CLR=>CLRRDREGS,
                D0=>XLXN_11292,
                D1=>R1D3,
                D2=>RDC3,
                D3=>R2D0,
                Q0=>CODE4,
                Q1=>CODE5,
                Q2=>CODE6,
                Q3=>CODE7);
   
   U132 : COMP4_HXILINX_ppm
      port map (A0=>CODE0,
                A1=>CODE1,
                A2=>CODE2,
                A3=>CODE3,
                B0=>BRWD0,
                B1=>BRWD1,
                B2=>BRWD2,
                B3=>BRWD3,
                EQ=>CDEQBRWD0);
   
   U133 : COMP4_HXILINX_ppm
      port map (A0=>CODE4,
                A1=>CODE5,
                A2=>CODE6,
                A3=>CODE7,
                B0=>BRWD0,
                B1=>BRWD1,
                B2=>BRWD2,
                B3=>BRWD3,
                EQ=>CDEQBRWD1);
   
   U134 : COMP4_HXILINX_ppm
      port map (A0=>CODE0,
                A1=>CODE1,
                A2=>CODE2,
                A3=>CODE3,
                B0=>DISP0,
                B1=>DISP1,
                B2=>DISP2,
                B3=>DISP3,
                EQ=>CDEQPD0);
   
   U135 : COMP4_HXILINX_ppm
      port map (A0=>CODE4,
                A1=>CODE5,
                A2=>CODE6,
                A3=>CODE7,
                B0=>DISP4,
                B1=>DISP5,
                B2=>DISP6,
                B3=>DISP7,
                EQ=>CDEQPD1);
   
   U136 : AND3
      port map (I0=>CALCPTS,
                I1=>CDEQBRWD0,
                I2=>PSEL0,
                O=>XLXN_11265);
   
   U137 : AND3
      port map (I0=>CALCPTS,
                I1=>CDEQBRWD1,
                I2=>PSEL1,
                O=>XLXN_11266);
   
   U138 : NOR2
      port map (I0=>XLXN_11266,
                I1=>XLXN_11265,
                O=>ENCODERWDMUX);
   
   U139 : AND2
      port map (I0=>CDEQPD1,
                I1=>XLXN_11265,
                O=>XLXN_11270);
   
   U140 : AND2
      port map (I0=>XLXN_11266,
                I1=>CDEQPD0,
                O=>XLXN_11271);
   
   U141 : OR2
      port map (I0=>XLXN_11271,
                I1=>XLXN_11270,
                O=>CODERWDMUXSEL1);
   
   U142 : X74_157_MUSER_ppm
      port map (A0=>BRWD0,
                A1=>BRWD1,
                A2=>BRWD2,
                A3=>BRWD3,
                B0=>CODE3,
                B1=>CODE4,
                B2=>CODE5,
                B3=>CODE6,
                G=>ENCODERWDMUX,
                S=>CODERWDMUXSEL1,
                Y0=>CODERWD(3),
                Y1=>CODERWD(4),
                Y2=>CODERWD(5),
                Y3=>CODERWD(6));
   
   U143 : AND2
      port map (I0=>XLXN_11347,
                I1=>CODE7,
                O=>CODERWD(7));
   
   U144 : AND2
      port map (I0=>XLXN_11347,
                I1=>CODE2,
                O=>CODERWD(2));
   
   U145 : AND2
      port map (I0=>XLXN_11347,
                I1=>CODE1,
                O=>CODERWD(1));
   
   U146 : AND2
      port map (I0=>XLXN_11347,
                I1=>CODE0,
                O=>CODERWD(0));
   
   U147 : AND2B1
      port map (I0=>ENCODERWDMUX,
                I1=>CODERWDMUXSEL1,
                O=>XLXN_11347);
   
   U148 : ADD4_HXILINX_ppm
      port map (A0=>RD0,
                A1=>RD1,
                A2=>RD2,
                A3=>RD3,
                B0=>DISP4,
                B1=>DISP5,
                B2=>DISP6,
                B3=>DISP7,
                CI=>XLXN_11259,
                CO=>PD1PRD,
                OFL=>open,
                S0=>NPDISP4,
                S1=>NPDISP5,
                S2=>NPDISP6,
                S3=>NPDISP7);
   
   U149 : ADD4_HXILINX_ppm
      port map (A0=>RD0,
                A1=>RD1,
                A2=>RD2,
                A3=>RD3,
                B0=>DISP0,
                B1=>DISP1,
                B2=>DISP2,
                B3=>DISP3,
                CI=>XLXN_11260,
                CO=>PD0PRD,
                OFL=>open,
                S0=>NPDISP0,
                S1=>NPDISP1,
                S2=>NPDISP2,
                S3=>NPDISP3);
   
   U150 : ADD4_HXILINX_ppm
      port map (A0=>RD0,
                A1=>RD1,
                A2=>RD2,
                A3=>RD3,
                B0=>DISP12,
                B1=>DISP13,
                B2=>DISP14,
                B3=>DISP15,
                CI=>XLXN_11261,
                CO=>PD3PRD,
                OFL=>open,
                S0=>NPDISP12,
                S1=>NPDISP13,
                S2=>NPDISP14,
                S3=>NPDISP15);
   
   U151 : ADD4_HXILINX_ppm
      port map (A0=>RD0,
                A1=>RD1,
                A2=>RD2,
                A3=>RD3,
                B0=>DISP8,
                B1=>DISP9,
                B2=>DISP10,
                B3=>DISP11,
                CI=>XLXN_11263,
                CO=>PD2PRD,
                OFL=>open,
                S0=>NPDISP8,
                S1=>NPDISP9,
                S2=>NPDISP10,
                S3=>NPDISP11);
   
   U152 : X74_157_MUSER_ppm
      port map (A0=>P1SEL(0),
                A1=>P1SEL(1),
                A2=>P1SEL(2),
                A3=>P1SEL(3),
                B0=>P2SEL0,
                B1=>P2SEL1,
                B2=>P2SEL2,
                B3=>P2SEL3,
                G=>XLXN_1595,
                S=>SELPLYR,
                Y0=>PSEL0,
                Y1=>PSEL1,
                Y2=>PSEL2,
                Y3=>PSEL3);
   
   U153 : OR2
      port map (I0=>PSEL3,
                I1=>PSEL1,
                O=>ENCPSEL0);
   
   U154 : OR2
      port map (I0=>PSEL2,
                I1=>PSEL3,
                O=>ENCPSEL1);
   
   U155 : M4_1E_HXILINX_ppm
      port map (D0=>PD0PRD,
                D1=>PD1PRD,
                D2=>PD2PRD,
                D3=>PD3PRD,
                E=>XLXN_1577,
                S0=>ENCPSEL0,
                S1=>ENCPSEL1,
                O=>PDPRD);
   
   U156 : X74_153_MUSER_ppm
      port map (A0=>NPDISP2,
                A1=>NPDISP6,
                A2=>NPDISP10,
                A3=>NPDISP14,
                B0=>NPDISP3,
                B1=>NPDISP7,
                B2=>NPDISP11,
                B3=>NPDISP15,
                G0=>XLXN_1615,
                G1=>XLXN_1615,
                S0=>ENCPSEL0,
                S1=>ENCPSEL1,
                Y1=>NPSELDISP2,
                Y2=>NPSELDISP3);
   
   U157 : X74_153_MUSER_ppm
      port map (A0=>NPDISP0,
                A1=>NPDISP4,
                A2=>NPDISP8,
                A3=>NPDISP12,
                B0=>NPDISP1,
                B1=>NPDISP5,
                B2=>NPDISP9,
                B3=>NPDISP13,
                G0=>XLXN_1623,
                G1=>XLXN_1623,
                S0=>ENCPSEL0,
                S1=>ENCPSEL1,
                Y1=>NPSELDISP0,
                Y2=>NPSELDISP1);
   
   U158 : X74_157_MUSER_ppm
      port map (A0=>RD0,
                A1=>RD1,
                A2=>RD2,
                A3=>RD3,
                B0=>NPSELDISP0,
                B1=>NPSELDISP1,
                B2=>NPSELDISP2,
                B3=>NPSELDISP3,
                G=>XLXN_1635,
                S=>ADD,
                Y0=>BRWD0,
                Y1=>BRWD1,
                Y2=>BRWD2,
                Y3=>BRWD3);
   
   U159 : COMP4_HXILINX_ppm
      port map (A0=>BRWD0,
                A1=>BRWD1,
                A2=>BRWD2,
                A3=>BRWD3,
                B0=>DISP4,
                B1=>DISP5,
                B2=>DISP6,
                B3=>DISP7,
                EQ=>EQ1);
   
   U160 : COMP4_HXILINX_ppm
      port map (A0=>BRWD0,
                A1=>BRWD1,
                A2=>BRWD2,
                A3=>BRWD3,
                B0=>DISP0,
                B1=>DISP1,
                B2=>DISP2,
                B3=>DISP3,
                EQ=>EQ0);
   
   U161 : COMP4_HXILINX_ppm
      port map (A0=>BRWD0,
                A1=>BRWD1,
                A2=>BRWD2,
                A3=>BRWD3,
                B0=>DISP12,
                B1=>DISP13,
                B2=>DISP14,
                B3=>DISP15,
                EQ=>EQ3);
   
   U162 : COMP4_HXILINX_ppm
      port map (A0=>BRWD0,
                A1=>BRWD1,
                A2=>BRWD2,
                A3=>BRWD3,
                B0=>DISP8,
                B1=>DISP9,
                B2=>DISP10,
                B3=>DISP11,
                EQ=>EQ2);
   
   U163 : AND2
      port map (I0=>RDP3EQ2,
                I1=>EQ1,
                O=>RDP3EQ1);
   
   U164 : AND2
      port map (I0=>RDP3EQ1,
                I1=>EQ0,
                O=>RDP3EQ0);
   
   U165 : AND2
      port map (I0=>RDP2EQ1,
                I1=>EQ0,
                O=>RDP2EQ0);
   
   U166 : AND2
      port map (I0=>RDP1EQ1,
                I1=>EQ3,
                O=>RDP1EQ0);
   
   U167 : AND2
      port map (I0=>RDP0EQ2,
                I1=>EQ2,
                O=>RDP0EQ1);
   
   U168 : AND2
      port map (I0=>RDP0EQ1,
                I1=>EQ3,
                O=>RDP0EQ0);
   
   U169 : M4_1E_HXILINX_ppm
      port map (D0=>RDP0EQ2,
                D1=>RDP1EQ2,
                D2=>RDP2EQ2,
                D3=>RDP3EQ2,
                E=>XLXN_2372,
                S0=>ENCPSEL0,
                S1=>ENCPSEL1,
                O=>UNENCNSD2);
   
   U170 : X74_153_MUSER_ppm
      port map (A0=>RDP0EQ0,
                A1=>RDP1EQ0,
                A2=>RDP2EQ0,
                A3=>RDP3EQ0,
                B0=>RDP0EQ1,
                B1=>RDP1EQ1,
                B2=>RDP2EQ1,
                B3=>RDP3EQ1,
                G0=>XLXN_1738,
                G1=>XLXN_1738,
                S0=>ENCPSEL0,
                S1=>ENCPSEL1,
                Y1=>UNENCNSD0,
                Y2=>UNENCNSD1);
   
   U171 : ADD4_HXILINX_ppm
      port map (A0=>UNENCNSD1,
                A1=>XLXN_1754,
                A2=>XLXN_1754,
                A3=>XLXN_1754,
                B0=>UNENCNSD2,
                B1=>XLXN_1754,
                B2=>XLXN_1754,
                B3=>XLXN_1754,
                CI=>UNENCNSD0,
                CO=>open,
                OFL=>open,
                S0=>NSD0,
                S1=>NSD1,
                S2=>open,
                S3=>open);
   
   U172 : AND3
      port map (I0=>NSD1,
                I1=>NSD0,
                I2=>BRWD3,
                O=>RWD(6));
   
   U173 : X74_153_MUSER_ppm
      port map (A0=>XLXN_1811,
                A1=>BRWD3,
                A2=>BRWD2,
                A3=>BRWD1,
                B0=>XLXN_1811,
                B1=>XLXN_1811,
                B2=>BRWD3,
                B3=>BRWD2,
                G0=>XLXN_1811,
                G1=>XLXN_1811,
                S0=>NSD0,
                S1=>NSD1,
                Y1=>RWD(4),
                Y2=>RWD(5));
   
   U174 : X74_153_MUSER_ppm
      port map (A0=>BRWD2,
                A1=>BRWD1,
                A2=>BRWD0,
                A3=>XLXN_1823,
                B0=>BRWD3,
                B1=>BRWD2,
                B2=>BRWD1,
                B3=>BRWD0,
                G0=>XLXN_1823,
                G1=>XLXN_1823,
                S0=>NSD0,
                S1=>NSD1,
                Y1=>RWD(2),
                Y2=>RWD(3));
   
   U175 : INV
      port map (I=>NSD1,
                O=>XLXN_1764);
   
   U176 : M2_1E_HXILINX_ppm
      port map (D0=>BRWD1,
                D1=>BRWD0,
                E=>XLXN_1764,
                S0=>NSD0,
                O=>RWD(1));
   
   U177 : AND3B2
      port map (I0=>NSD1,
                I1=>NSD0,
                I2=>BRWD0,
                O=>RWD(0));
   
   U178 : X74_157_MUSER_ppm
      port map (A0=>P1PT(4),
                A1=>P1PT(5),
                A2=>P1PT(6),
                A3=>P1PT(7),
                B0=>P2PT(4),
                B1=>P2PT(5),
                B2=>P2PT(6),
                B3=>P2PT(7),
                G=>XLXN_1785,
                S=>SELPLYR,
                Y0=>PT(4),
                Y1=>PT(5),
                Y2=>PT(6),
                Y3=>PT(7));
   
   U179 : X74_157_MUSER_ppm
      port map (A0=>P1PT(0),
                A1=>P1PT(1),
                A2=>P1PT(2),
                A3=>P1PT(3),
                B0=>P2PT(0),
                B1=>P2PT(1),
                B2=>P2PT(2),
                B3=>P2PT(3),
                G=>XLXN_1771,
                S=>SELPLYR,
                Y0=>PT(0),
                Y1=>PT(1),
                Y2=>PT(2),
                Y3=>PT(3));
   
   U180 : OR2
      port map (I0=>RWDCOT,
                I1=>XLXN_1802,
                O=>PTOVF);
   
   U181 : ADD8_HXILINX_ppm
      port map (A(7 downto 0)=>PT(7 downto 0),
                B(7 downto 0)=>TOTRWD(7 downto 0),
                CI=>XLXN_1801,
                CO=>XLXN_1802,
                OFL=>open,
                S(7 downto 0)=>NPT(7 downto 0));
   
   U182 : ADD8_HXILINX_ppm
      port map (A(7 downto 0)=>RWD(7 downto 0),
                B(7 downto 0)=>CODERWD(7 downto 0),
                CI=>XLXN_1809,
                CO=>RWDCOT,
                OFL=>open,
                S(7 downto 0)=>TOTRWD(7 downto 0));
   
   U183 : COMPM8_HXILINX_ppm
      port map (A(7 downto 0)=>RWD(7 downto 0),
                B(7 downto 0)=>LARGESTRWD(7 downto 0),
                GT=>RWDGTRDLARGEST,
                LT=>open);
   
   U184 : FD4CE_HXILINX_ppm
      port map (C=>P2CLK,
                CE=>STNLRWDRD,
                CLR=>CLEARP2FFS,
                D0=>ENCPOSN0,
                D1=>ENCPOSN1,
                D2=>TESTADD,
                D3=>XLXN_1839,
                Q0=>LRWDRDPOSSEL0,
                Q1=>LRWDRDPOSSEL1,
                Q2=>LRWDRDADD,
                Q3=>open);
   
   U185 : FD8CE_HXILINX_ppm
      port map (C=>P2CLK,
                CE=>STNLRWDRD,
                CLR=>CLEARP2FFS,
                D(7 downto 0)=>RWD(7 downto 0),
                Q(7 downto 0)=>LARGESTRWD(7 downto 0));
   
   U186 : COMPM2_HXILINX_ppm
      port map (A0=>NSD0,
                A1=>NSD1,
                B0=>LARGESTNSD0,
                B1=>LARGESTNSD1,
                GT=>NSDGTLARGEST,
                LT=>open);
   
   U187 : FDCE
      port map (C=>P2CLK,
                CE=>STNLNSD,
                CLR=>CLEARP2FFS,
                D=>NSD0,
                Q=>LARGESTNSD0);
   
   U188 : FD4CE_HXILINX_ppm
      port map (C=>P2CLK,
                CE=>STNLNSD,
                CLR=>CLEARP2FFS,
                D0=>NSD1,
                D1=>ENCPOSN0,
                D2=>ENCPOSN1,
                D3=>TESTADD,
                Q0=>LARGESTNSD1,
                Q1=>LNSDPOSSEL0,
                Q2=>LNSDPOSSEL1,
                Q3=>LNSDADD);
   
   U189 : OR2
      port map (I0=>LARGESTNSD1,
                I1=>LARGESTNSD0,
                O=>ADJ);
   
   U190 : ADD8_HXILINX_ppm
      port map (A(7 downto 0)=>LARGESTRWD(7 downto 0),
                B(7 downto 0)=>P2PT(7 downto 0),
                CI=>XLXN_1877,
                CO=>LRGRWDWINSGAME,
                OFL=>open,
                S=>open);
   
   U191 : COMPM8_HXILINX_ppm
      port map (A(7 downto 0)=>P2PT(7 downto 0),
                B(7 downto 0)=>P1PT(7 downto 0),
                GT=>P2PTGTP1PT,
                LT=>open);
   
   U192 : NOR5
      port map (I0=>LARGESTRWD(7),
                I1=>LARGESTRWD(6),
                I2=>LARGESTRWD(5),
                I3=>LARGESTRWD(4),
                I4=>LARGESTRWD(3),
                O=>LRGRWDLTEIGHT);
   
   U193 : AND2
      port map (I0=>LRGRWDLTEIGHT,
                I1=>RDNOTZERO,
                O=>PLAYONLRGSTDISP);
   
   U194 : AND2B1
      port map (I0=>INITIALPLAYS,
                I1=>STP2PT,
                O=>XLXN_2029);
   
   U195 : CB2CE_HXILINX_ppm
      port map (C=>SYSCLK,
                CE=>XLXN_2029,
                CLR=>CLEAR,
                CEO=>open,
                Q0=>open,
                Q1=>open,
                TC=>INITIALPLAYS);
   
   U196 : OR4
      port map (I0=>RD3,
                I1=>RD2,
                I2=>RD1,
                I3=>RD0,
                O=>RDNOTZERO);
   
   U197 : AND4B2
      port map (I0=>INITIALPLAYS,
                I1=>ADJ,
                I2=>RDNOTZERO,
                I3=>APOSZERO,
                O=>INITPLAYONZERODISP);
   
   U198 : COMPM4_HXILINX_ppm
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
   
   U199 : COMPM4_HXILINX_ppm
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
   
   U200 : X74_157_MUSER_ppm
      port map (A0=>DISP0,
                A1=>DISP1,
                A2=>DISP2,
                A3=>DISP3,
                B0=>DISP4,
                B1=>DISP5,
                B2=>DISP6,
                B3=>DISP7,
                G=>XLXN_11622,
                S=>PD0PD1LT,
                Y0=>XLXN_11610,
                Y1=>XLXN_11623,
                Y2=>XLXN_11624,
                Y3=>XLXN_11625);
   
   U201 : X74_157_MUSER_ppm
      port map (A0=>DISP8,
                A1=>DISP9,
                A2=>DISP10,
                A3=>DISP11,
                B0=>DISP12,
                B1=>DISP13,
                B2=>DISP14,
                B3=>DISP15,
                G=>XLXN_11634,
                S=>PD2PD3LT,
                Y0=>XLXN_11644,
                Y1=>XLXN_11645,
                Y2=>XLXN_11646,
                Y3=>XLXN_11612);
   
   U202 : COMPM4_HXILINX_ppm
      port map (A0=>XLXN_11610,
                A1=>XLXN_11623,
                A2=>XLXN_11624,
                A3=>XLXN_11625,
                B0=>XLXN_11644,
                B1=>XLXN_11645,
                B2=>XLXN_11646,
                B3=>XLXN_11612,
                GT=>open,
                LT=>LRGDISPPOS1);
   
   U203 : AND2B1
      port map (I0=>LRGDISPPOS1,
                I1=>PD0PD1LT,
                O=>XLXN_11628);
   
   U204 : AND2
      port map (I0=>PD2PD3LT,
                I1=>LRGDISPPOS1,
                O=>XLXN_11627);
   
   U205 : OR2
      port map (I0=>XLXN_11627,
                I1=>XLXN_11628,
                O=>LRGDISPPOS0);
   
   U206 : NOR4
      port map (I0=>DISP7,
                I1=>DISP6,
                I2=>DISP5,
                I3=>DISP4,
                O=>POS1ZERO);
   
   U207 : NOR4
      port map (I0=>DISP3,
                I1=>DISP2,
                I2=>DISP1,
                I3=>DISP0,
                O=>POS0ZERO);
   
   U208 : NOR4
      port map (I0=>DISP15,
                I1=>DISP14,
                I2=>DISP13,
                I3=>DISP12,
                O=>POS3ZERO);
   
   U209 : NOR4
      port map (I0=>DISP11,
                I1=>DISP10,
                I2=>DISP9,
                I3=>DISP8,
                O=>POS2ZERO);
   
   U210 : OR4
      port map (I0=>POS3ZERO,
                I1=>POS2ZERO,
                I2=>POS1ZERO,
                I3=>POS0ZERO,
                O=>APOSZERO);
   
   U211 : AND2B2
      port map (I0=>POS0ZERO,
                I1=>POS1ZERO,
                O=>ZERODISP1);
   
   U212 : AND2B1
      port map (I0=>POS0ZERO,
                I1=>POS1ZERO,
                O=>XLXN_11673);
   
   U213 : AND2B2
      port map (I0=>POS0ZERO,
                I1=>POS2ZERO,
                O=>XLXN_11675);
   
   U214 : OR2
      port map (I0=>XLXN_11675,
                I1=>XLXN_11673,
                O=>ZERODISP0);
   
   U215 : OR5
      port map (I0=>CODERWD(7),
                I1=>CODERWD(6),
                I2=>CODERWD(5),
                I3=>CODERWD(4),
                I4=>CODERWD(3),
                O=>DUMMY_2);
   
   U216 : AND2
      port map (I0=>PSEL0,
                I1=>DUMMY_2,
                O=>STCODE0);
   
   U217 : AND2
      port map (I0=>DUMMY_2,
                I1=>PSEL1,
                O=>STCODE1);
   
   U218 : FD4CE_HXILINX_ppm
      port map (C=>SYSCLK,
                CE=>STCODE0,
                CLR=>CLEAR,
                D0=>BRWD0,
                D1=>BRWD1,
                D2=>BRWD2,
                D3=>BRWD3,
                Q0=>P2CODE0,
                Q1=>P2CODE1,
                Q2=>P2CODE2,
                Q3=>P2CODE3);
   
   U219 : OR4
      port map (I0=>P2CODE3,
                I1=>P2CODE2,
                I2=>P2CODE1,
                I3=>P2CODE0,
                O=>CODEPOS0);
   
   U220 : FD4CE_HXILINX_ppm
      port map (C=>SYSCLK,
                CE=>STCODE1,
                CLR=>CLEAR,
                D0=>BRWD0,
                D1=>BRWD1,
                D2=>BRWD2,
                D3=>BRWD3,
                Q0=>P2CODE4,
                Q1=>P2CODE5,
                Q2=>P2CODE6,
                Q3=>P2CODE7);
   
   U221 : OR4
      port map (I0=>P2CODE7,
                I1=>P2CODE6,
                I2=>P2CODE5,
                I3=>P2CODE4,
                O=>CODEPOS1);
   
   U222 : AND2
      port map (I0=>TESTP2SEL0,
                I1=>CODEPOS0,
                O=>XLXN_11808);
   
   U223 : AND2
      port map (I0=>TESTP2SEL1,
                I1=>CODEPOS1,
                O=>XLXN_11809);
   
   U224 : OR2
      port map (I0=>XLXN_11809,
                I1=>XLXN_11808,
                O=>CODEKNOWN);
   
   U225 : X74_157_MUSER_ppm
      port map (A0=>P2CODE0,
                A1=>P2CODE1,
                A2=>P2CODE2,
                A3=>P2CODE3,
                B0=>P2CODE4,
                B1=>P2CODE5,
                B2=>P2CODE6,
                B3=>P2CODE7,
                G=>ENCPOSN1,
                S=>ENCPOSN0,
                Y0=>P2SELCD0,
                Y1=>P2SELCD1,
                Y2=>P2SELCD2,
                Y3=>P2SELCD3);
   
   U226 : COMP4_HXILINX_ppm
      port map (A0=>BRWD0,
                A1=>BRWD1,
                A2=>BRWD2,
                A3=>BRWD3,
                B0=>P2SELCD0,
                B1=>P2SELCD1,
                B2=>P2SELCD2,
                B3=>P2SELCD3,
                EQ=>DIGEQCD);
   
   U227 : FD4CE_HXILINX_ppm
      port map (C=>P2CLK,
                CE=>STDIGEQCD,
                CLR=>CLEARP2FFS,
                D0=>ENCPOSN0,
                D1=>TESTADD,
                D2=>DIGEQCD,
                D3=>XLXN_11824,
                Q0=>DIGEQCDPOSSEL0,
                Q1=>DIGEQCDADD,
                Q2=>BRWDEQCD,
                Q3=>open);
   
   U228 : COMP4_HXILINX_ppm
      port map (A0=>R1D0,
                A1=>R1D1,
                A2=>R1D2,
                A3=>R1D3,
                B0=>P2SELCD0,
                B1=>P2SELCD1,
                B2=>P2SELCD2,
                B3=>P2SELCD3,
                EQ=>ADJCODE);
   
   U229 : FDCE
      port map (C=>P2CLK,
                CE=>CODEKNOWN,
                CLR=>CLEARP2FFS,
                D=>ADJCODE,
                Q=>XLXN_2186);
   
   U230 : AND2
      port map (I0=>ADJ,
                I1=>XLXN_2186,
                O=>LADJCODE);
   
   U231 : OR4
      port map (I0=>ACTION4,
                I1=>PLAYPOS0,
                I2=>PLAYPOS1,
                I3=>ACTION0,
                O=>RDPLAYABLE);
   
   U232 : OR2
      port map (I0=>ACTION3,
                I1=>ACTION2,
                O=>PLAYPOS1);
   
   U233 : OR2
      port map (I0=>ACTION3,
                I1=>ACTION1,
                O=>PLAYPOS0);
   
   U234 : OR2
      port map (I0=>LRGRWDWINSGAME,
                I1=>XLXN_2272,
                O=>ACTION0);
   
   U235 : AND3B2
      port map (I0=>INITPLAYONZERODISP,
                I1=>P2PTGTP1PT,
                I2=>NOWCNRD,
                O=>XLXN_2272);
   
   U236 : OR2
      port map (I0=>XLXN_2275,
                I1=>XLXN_2274,
                O=>ACTION1);
   
   U237 : AND4B1
      port map (I0=>INITPLAYONZERODISP,
                I1=>NOWCNRD,
                I2=>P2PTGTP1PT,
                I3=>ADJ,
                O=>XLXN_2274);
   
   U238 : AND3B2
      port map (I0=>LRGRWDWINSGAME,
                I1=>BRWDEQCD,
                I2=>LADJCODE,
                O=>XLXN_2275);
   
   U239 : AND2
      port map (I0=>XLXN_2277,
                I1=>NOWCNRD,
                O=>ACTION3);
   
   U240 : AND3B3
      port map (I0=>LRGRWDWINSGAME,
                I1=>BRWDEQCD,
                I2=>LADJCODE,
                O=>NOWCNRD);
   
   U241 : AND4B2
      port map (I0=>INITPLAYONZERODISP,
                I1=>ADJ,
                I2=>PLAYONLRGSTDISP,
                I3=>P2PTGTP1PT,
                O=>XLXN_2277);
   
   U242 : AND2B1
      port map (I0=>LRGRWDWINSGAME,
                I1=>BRWDEQCD,
                O=>ACTION4);
   
   U243 : AND2
      port map (I0=>NOWCNRD,
                I1=>INITPLAYONZERODISP,
                O=>ACTION2);
   
   U244 : X74_153_MUSER_ppm
      port map (A0=>LRWDRDPOSSEL0,
                A1=>LNSDPOSSEL0,
                A2=>ZERODISP0,
                A3=>LRGDISPPOS0,
                B0=>LRWDRDPOSSEL1,
                B1=>LNSDPOSSEL1,
                B2=>ZERODISP1,
                B3=>LRGDISPPOS1,
                G0=>XLXN_10389,
                G1=>XLXN_10388,
                S0=>PLAYPOS0,
                S1=>PLAYPOS1,
                Y1=>XLXN_2304,
                Y2=>XLXN_2308);
   
   U245 : M2_1_HXILINX_ppm
      port map (D0=>XLXN_2304,
                D1=>DIGEQCDPOSSEL0,
                S0=>PLAYPOS2,
                O=>XLXN_2309);
   
   U246 : AND2B1
      port map (I0=>PLAYPOS2,
                I1=>XLXN_2308,
                O=>XLXN_2310);
   
   U247 : D2_4E_HXILINX_ppm
      port map (A0=>XLXN_2309,
                A1=>XLXN_2310,
                E=>P2CANPLAY,
                D0=>XLXN_2331,
                D1=>XLXN_2312,
                D2=>XLXN_2313,
                D3=>XLXN_2332);
   
   U248 : OR2
      port map (I0=>TESTP2SEL0,
                I1=>XLXN_2331,
                O=>P2SEL0);
   
   U249 : OR2
      port map (I0=>TESTP2SEL1,
                I1=>XLXN_2312,
                O=>P2SEL1);
   
   U250 : OR2
      port map (I0=>TESTP2SEL2,
                I1=>XLXN_2313,
                O=>P2SEL2);
   
   U251 : OR2
      port map (I0=>TESTP2SEL3,
                I1=>XLXN_2332,
                O=>P2SEL3);
   
   U252 : INV
      port map (I=>PLAYPOS1,
                O=>XLXN_2350);
   
   U253 : M2_1E_HXILINX_ppm
      port map (D0=>LRWDRDADD,
                D1=>LNSDADD,
                E=>XLXN_2350,
                S0=>PLAYPOS0,
                O=>XLXN_2346);
   
   U254 : M2_1E_HXILINX_ppm
      port map (D0=>XLXN_2346,
                D1=>DIGEQCDADD,
                E=>P2CANPLAY,
                S0=>PLAYPOS2,
                O=>XLXN_2340);
   
   U255 : OR2
      port map (I0=>XLXN_2340,
                I1=>TESTADD,
                O=>P2ADD);
   
   U256 : AND2
      port map (I0=>RDPLAYABLE,
                I1=>P2CANPLAY,
                O=>P2PLAYED);
   
   U257 : AND2B1
      port map (I0=>RDPLAYABLE,
                I1=>P2CANPLAY,
                O=>P2SKIP);
   
   U258 : AND3
      port map (I0=>P2CANTEST,
                I1=>DIGEQCD,
                I2=>CODEKNOWN,
                O=>STDIGEQCD);
   
   U259 : AND2
      port map (I0=>P2CANTEST,
                I1=>XLXN_1891,
                O=>STNLNSD);
   
   U260 : OR2
      port map (I0=>P2S0,
                I1=>NSDGTLARGEST,
                O=>XLXN_1891);
   
   U261 : AND2
      port map (I0=>P2CANTEST,
                I1=>XLXN_1907,
                O=>STNLRWDRD);
   
   U262 : OR2
      port map (I0=>P2S0,
                I1=>RWDGTRDLARGEST,
                O=>XLXN_1907);
   
   U263 : OR2
      port map (I0=>P2S1,
                I1=>P2S5,
                O=>TESTP2SEL1);
   
   U264 : OR2
      port map (I0=>P2S0,
                I1=>P2S4,
                O=>TESTP2SEL0);
   
   U265 : OR2
      port map (I0=>P2S3,
                I1=>P2S7,
                O=>TESTP2SEL3);
   
   U266 : OR2
      port map (I0=>P2S2,
                I1=>P2S6,
                O=>TESTP2SEL2);
   
   U267 : AND2B1
      port map (I0=>P2CANPLAY,
                I1=>P2STURN,
                O=>P2CANTEST);
   
   U268 : AND3B2
      port map (I0=>P2SKIP,
                I1=>P2PLAYED,
                I2=>P2STURN,
                O=>XLXN_2072);
   
   U269 : CB4CE_HXILINX_ppm
      port map (C=>P2CLK,
                CE=>XLXN_2072,
                CLR=>CLEARP2FFS,
                CEO=>open,
                Q0=>P2STR0,
                Q1=>P2STR1,
                Q2=>P2STR2,
                Q3=>P2STR3,
                TC=>open);
   
   U270 : INV
      port map (I=>P2STR3,
                O=>XLXN_2061);
   
   U271 : D3_8E_HXILINX_ppm
      port map (A0=>P2STR0,
                A1=>P2STR1,
                A2=>P2STR2,
                E=>XLXN_2061,
                D0=>P2S0,
                D1=>P2S1,
                D2=>P2S2,
                D3=>P2S3,
                D4=>P2S4,
                D5=>P2S5,
                D6=>P2S6,
                D7=>P2S7);
   
   XLXI_24 : VCC
      port map (P=>XLXN_1361);
   
   XLXI_25 : GND
      port map (G=>XLXN_1363);
   
   XLXI_26 : GND
      port map (G=>XLXN_11622);
   
   XLXI_27 : GND
      port map (G=>XLXN_88);
   
   XLXI_28 : GND
      port map (G=>XLXN_102);
   
   XLXI_31 : GND
      port map (G=>XLXN_10400);
   
   XLXI_33 : GND
      port map (G=>XLXN_10403);
   
   XLXI_34 : GND
      port map (G=>XLXN_11263);
   
   XLXI_35 : GND
      port map (G=>XLXN_11259);
   
   XLXI_37 : GND
      port map (G=>XLXN_10405);
   
   XLXI_39 : GND
      port map (G=>XLXN_1635);
   
   XLXI_42 : GND
      port map (G=>XLXN_1623);
   
   XLXI_43 : GND
      port map (G=>XLXN_1615);
   
   XLXI_45 : GND
      port map (G=>XLXN_10388);
   
   XLXI_47 : VCC
      port map (P=>XLXN_1577);
   
   XLXI_49 : GND
      port map (G=>XLXN_1595);
   
   XLXI_54 : VCC
      port map (P=>XLXN_2372);
   
   XLXI_55 : VCC
      port map (P=>XLXN_211);
   
   XLXI_56 : GND
      port map (G=>XLXN_213);
   
   XLXI_61 : GND
      port map (G=>XLXN_11824);
   
   XLXI_65 : VCC
      port map (P=>XLXN_11941);
   
   XLXI_66 : VCC
      port map (P=>XLXN_166);
   
   XLXI_69 : GND
      port map (G=>RWD(7));
   
   XLXI_120 : GND
      port map (G=>XLXN_1771);
   
   XLXI_122 : GND
      port map (G=>XLXN_1785);
   
   XLXI_127 : GND
      port map (G=>XLXN_1801);
   
   XLXI_128 : GND
      port map (G=>XLXN_1809);
   
   XLXI_139 : GND
      port map (G=>XLXN_1738);
   
   XLXI_140 : GND
      port map (G=>XLXN_1811);
   
   XLXI_141 : GND
      port map (G=>XLXN_1823);
   
   XLXI_191 : VCC
      port map (P=>XLXN_482);
   
   XLXI_193 : GND
      port map (G=>XLXN_478);
   
   XLXI_245 : GND
      port map (G=>XLXN_10394);
   
   XLXI_424 : VCC
      port map (P=>XLXN_11110);
   
   XLXI_425 : GND
      port map (G=>XLXN_1196);
   
   XLXI_454 : GND
      port map (G=>XLXN_1364);
   
   XLXI_459 : GND
      port map (G=>XLXN_11261);
   
   XLXI_462 : GND
      port map (G=>XLXN_11260);
   
   XLXI_541 : GND
      port map (G=>XLXN_1754);
   
   XLXI_563 : GND
      port map (G=>XLXN_1839);
   
   XLXI_571 : GND
      port map (G=>XLXN_1877);
   
   XLXI_687 : GND
      port map (G=>XLXN_4);
   
   XLXI_939 : GND
      port map (G=>XLXN_11634);
   
   XLXI_1049 : GND
      port map (G=>XLXN_10389);
   
   XLXI_1050 : GND
      port map (G=>XLXN_10395);
   
   XLXI_1051 : GND
      port map (G=>XLXN_10402);
   
   XLXI_1052 : GND
      port map (G=>XLXN_10404);
   
   XLXI_1053 : GND
      port map (G=>XLXN_10406);
   
   XLXI_1217 : GND
      port map (G=>XLXN_10993);
   
   XLXI_1231 : GND
      port map (G=>XLXN_10716);
   
   XLXI_1233 : VCC
      port map (P=>XLXN_1);
   
   XLXI_1240 : VCC
      port map (P=>XLXN_8);
   
   XLXI_1241 : GND
      port map (G=>XLXN_7);
   
   XLXI_1287 : X74_157_MUSER_ppm
      port map (A0=>R0D0,
                A1=>R0D1,
                A2=>R0D2,
                A3=>R0D3,
                B0=>P1ADD,
                B1=>TRD1,
                B2=>TRD2,
                B3=>TRD3,
                G=>XLXN_1364,
                S=>XLXN_1346,
                Y0=>RD0,
                Y1=>RD1,
                Y2=>RD2,
                Y3=>RD3);
   
   XLXI_1290 : IBUF
      port map (I=>P1SEL3_NP2B,
                O=>P1SEL(3));
   
   XLXI_1291 : IBUF
      port map (I=>P1SEL2_NP2B,
                O=>P1SEL(2));
   
   XLXI_1292 : IBUF
      port map (I=>P1SEL1_NP2B,
                O=>P1SEL(1));
   
   XLXI_1293 : IBUF
      port map (I=>P1SEL0_NP2B,
                O=>P1SEL(0));
   
   XLXI_1294 : IBUF
      port map (I=>TRD3_NP2B,
                O=>TRD3);
   
   XLXI_1295 : IBUF
      port map (I=>TRD2_NP2B,
                O=>TRD2);
   
   XLXI_1296 : IBUF
      port map (I=>TRD1_NP2B,
                O=>TRD1);
   
   XLXI_1297 : IBUF
      port map (I=>P1ADD_NP2B,
                O=>P1ADD);
   
   XLXI_1298 : IBUF
      port map (I=>P1PLAY_NP2B,
                O=>P1PLAY);
   
   XLXI_1299 : IBUF
      port map (I=>P2PLAY_NP2B,
                O=>P2PLAY);
   
   XLXI_1300 : IBUF
      port map (I=>RESET_NP2B,
                O=>RESET);
   
   XLXI_1301 : IBUF
      port map (I=>SHPTS_NP2B,
                O=>SHPTS);
   
   XLXI_1302 : IBUF
      port map (I=>CLOCK_NP2B,
                O=>CLOCK_B2B);
   
   XLXI_1303 : OBUF
      port map (I=>RD3,
                O=>RD3_NB2P);
   
   XLXI_1304 : OBUF
      port map (I=>RD2,
                O=>RD2_NB2P);
   
   XLXI_1305 : OBUF
      port map (I=>RD1,
                O=>RD1_NB2P);
   
   XLXI_1306 : OBUF
      port map (I=>RD0,
                O=>RD0_NB2P);
   
   XLXI_1307 : OBUF
      port map (I=>ADD,
                O=>ADD_NB2P);
   
   XLXI_1308 : OBUF
      port map (I=>STR2,
                O=>STR2_NB2P);
   
   XLXI_1309 : OBUF
      port map (I=>STR1,
                O=>STR1_NB2P);
   
   XLXI_1310 : OBUF
      port map (I=>STR0,
                O=>STR0_NB2P);
   
   XLXI_1311 : OBUF
      port map (I=>DISPEN(2),
                O=>A2_NB2P);
   
   XLXI_1312 : OBUF
      port map (I=>DISPEN(1),
                O=>A1_NB2P);
   
   XLXI_1313 : OBUF
      port map (I=>DISPEN(0),
                O=>A0_NB2P);
   
   XLXI_1314 : OBUF
      port map (I=>DISPEN(3),
                O=>A3_NB2P);
   
   XLXI_1315 : OBUF
      port map (I=>SBUS(0),
                O=>CG_NB2P);
   
   XLXI_1316 : OBUF
      port map (I=>SBUS(1),
                O=>CF_NB2P);
   
   XLXI_1317 : OBUF
      port map (I=>SBUS(2),
                O=>CE_NB2P);
   
   XLXI_1318 : OBUF
      port map (I=>SBUS(3),
                O=>CD_NB2P);
   
   XLXI_1319 : OBUF
      port map (I=>SBUS(4),
                O=>CC_NB2P);
   
   XLXI_1320 : OBUF
      port map (I=>SBUS(5),
                O=>CB_NB2P);
   
   XLXI_1321 : OBUF
      port map (I=>SBUS(6),
                O=>CA_NB2P);
   
   XLXI_1509 : OBUF
      port map (I=>XLXN_12049,
                O=>A4_NB2P);
   
   XLXI_1510 : OBUF
      port map (I=>XLXN_12041,
                O=>A5_NB2P);
   
   XLXI_1511 : OBUF
      port map (I=>XLXN_12042,
                O=>A6_NB2P);
   
   XLXI_1512 : OBUF
      port map (I=>XLXN_12043,
                O=>A7_NB2P);
   
   XLXI_1513 : CB4CE_HXILINX_ppm
      port map (C=>Q(0),
                CE=>XLXN_211,
                CLR=>XLXN_213,
                CEO=>open,
                Q0=>MC0,
                Q1=>MC1,
                Q2=>MC2,
                Q3=>open,
                TC=>open);
   
   XLXI_1542 : M8_1E_HXILINX_ppm
      port map (D0=>DDISP1,
                D1=>DDISP5,
                D2=>DDISP9,
                D3=>DDISP13,
                D4=>P1PT(1),
                D5=>P1PT(5),
                D6=>P2PT(1),
                D7=>P2PT(5),
                E=>XLXN_11941,
                S0=>MC0,
                S1=>MC1,
                S2=>MC2,
                O=>KSBUS(1));
   
   XLXI_1543 : M8_1E_HXILINX_ppm
      port map (D0=>DDISP3,
                D1=>DDISP7,
                D2=>DDISP11,
                D3=>DDISP15,
                D4=>P1PT(3),
                D5=>P1PT(7),
                D6=>P2PT(3),
                D7=>P2PT(7),
                E=>XLXN_11980,
                S0=>MC0,
                S1=>MC1,
                S2=>MC2,
                O=>KSBUS(3));
   
   XLXI_1544 : M8_1E_HXILINX_ppm
      port map (D0=>DDISP0,
                D1=>DDISP4,
                D2=>DDISP8,
                D3=>DDISP12,
                D4=>P1PT(0),
                D5=>P1PT(4),
                D6=>P2PT(0),
                D7=>P2PT(4),
                E=>XLXN_11981,
                S0=>MC0,
                S1=>MC1,
                S2=>MC2,
                O=>KSBUS(0));
   
   XLXI_1545 : M8_1E_HXILINX_ppm
      port map (D0=>DDISP2,
                D1=>DDISP6,
                D2=>DDISP10,
                D3=>DDISP14,
                D4=>P1PT(2),
                D5=>P1PT(6),
                D6=>P2PT(2),
                D7=>P2PT(6),
                E=>XLXN_11982,
                S0=>MC0,
                S1=>MC1,
                S2=>MC2,
                O=>KSBUS(2));
   
   XLXI_1550 : VCC
      port map (P=>XLXN_11980);
   
   XLXI_1551 : VCC
      port map (P=>XLXN_11981);
   
   XLXI_1552 : VCC
      port map (P=>XLXN_11982);
   
   XLXI_1564 : D3_8E_HXILINX_ppm
      port map (A0=>MC0,
                A1=>MC1,
                A2=>MC2,
                E=>XLXN_210,
                D0=>DCDEN0,
                D1=>DCDEN1,
                D2=>DCDEN2,
                D3=>DCDEN3,
                D4=>DCDEN4,
                D5=>DCDEN5,
                D6=>DCDEN6,
                D7=>DCDEN7);
   
   XLXI_1566 : INV
      port map (I=>DCDEN4,
                O=>XLXN_12049);
   
   XLXI_1575 : INV
      port map (I=>DCDEN5,
                O=>XLXN_12041);
   
   XLXI_1576 : INV
      port map (I=>DCDEN6,
                O=>XLXN_12042);
   
   XLXI_1577 : INV
      port map (I=>DCDEN7,
                O=>XLXN_12043);
   
end BEHAVIORAL;


