----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:18:31 04/21/2016 
-- Design Name: 
-- Module Name:    mod1 - Behavioral 
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

entity mod1 is
    Port ( X : in  STD_LOGIC_VECTOR (7 downto 0);
           CLK : in  STD_LOGIC;
           EN : in  STD_LOGIC;
           DIR : in  STD_LOGIC;
           SET : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           Y : out  STD_LOGIC_VECTOR (7 downto 0));
end mod1;

architecture Behavioral of mod1 is

signal QT : STD_LOGIC_VECTOR (7 downto 0);

begin

	process (CLK, RESET)
		begin
			if RESET = '1' then QT<=x"00" ;
			elsif rising_edge(CLK) then QT<=QT+1 ;
				if EN='1' then
					if SET='1' then
						QT<=X;
					elsif DIR='1' then
						QT<=QT+1;
					elsif DIR='0' then
						QT<=QT-1;
					end if;
				end if;
			end if ;
	end process ;


end Behavioral;

