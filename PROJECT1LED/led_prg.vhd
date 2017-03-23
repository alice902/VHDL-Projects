library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity led_prg is
    Port ( CLK : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           LED : out  STD_LOGIC_VECTOR (7 downto 0));
end led_prg;

architecture Behavioral of led_prg is
	signal CNT: std_logic_vector(23 downto 0);
begin
	process(RESET, CLK)
	begin
		if RESET='1' then
			CNT <= (others=>'0');
		elsif rising_edge(CLK) then
			CNT <= CNT + 1;
		end if;
	end process;
	LED <= CNT (23 downto 16);
end Behavioral;

