----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:42:55 04/21/2016 
-- Design Name: 
-- Module Name:    MOD1 - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MOD1 is
    Port ( D : in STD_LOGIC;
			  CLK : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           Y : out  STD_LOGIC_VECTOR (7 downto 0));
			  
			  
end MOD1;

architecture Behavioral of MOD1 is

signal QT : STD_LOGIC_VECTOR (7 downto 0);

begin

	process (CLK, RESET)
		begin
			if RESET = '1' then QT<=x"00" ;
			elsif rising_edge(CLK) then QT<=QT+1 ;
			end if ;
	end process ;
	
	Y <= QT ;
	

end Behavioral;

