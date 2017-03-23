----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:50:05 03/16/2016 
-- Design Name: 
-- Module Name:    module - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity module is
    Port ( DATA : in  STD_LOGIC_VECTOR (3 downto 0);
           DIG : in  STD_LOGIC_VECTOR (1 downto 0);
           DP : in  STD_LOGIC;
           EN : in  STD_LOGIC;
           SEG : out  STD_LOGIC_VECTOR (7 downto 0);
           AN : out  STD_LOGIC_VECTOR (3 downto 0));
end module;

architecture Behavioral of module is

begin

	SEG(7) <= not DP;
	
	SEG(6 downto 0) <=	"1000000" when DATA = "0000" else --0
								"1111001" when DATA = "0001" else --1
								"0100100" when DATA = "0010" else --2
								"0110000" when DATA = "0011" else --3
								"0011001" when DATA = "0100" else --4
								"0010010" when DATA = "0101" else --5
								"0000010" when DATA = "0110" else --6
								"1111000" when DATA = "0111" else --7
								"0000000" when DATA = "1000" else --8
								"0010000" when DATA = "1001" else --9
								"0001000" when DATA = "1010" else --a
								"0000011" when DATA = "1011" else --b
								"0000110" when DATA = "1100" else --c
								"0100001" when DATA = "1101" else --d
								"0000110" when DATA = "1110" else --e
								"0001110" when DATA = "1111" else --f
								"1111111" when EN = '1';			 --off
								
	AN(3 downto 0) <=		"1110" when DIG = "00" else 		--1
								"1101" when DIG = "01" else		--2
								"1011" when DIG = "10" else		--3
								"0111" when DIG = "11" else		--4
								"1111" when EN = '1'; 				--off


end Behavioral;

