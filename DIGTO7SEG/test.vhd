--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:44:38 03/16/2016
-- Design Name:   
-- Module Name:   D:/199987/DIGTO7SEG/test.vhd
-- Project Name:  DIGTO7SEG
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: module
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test IS
END test;
 
ARCHITECTURE behavior OF test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT module
    PORT(
         DATA : IN  std_logic_vector(3 downto 0);
         DIG : IN  std_logic_vector(1 downto 0);
         DP : IN  std_logic;
         EN : IN  std_logic;
         SEG : OUT  std_logic_vector(7 downto 0);
         AN : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal DATA : std_logic_vector(3 downto 0) := (others => '0');
   signal DIG : std_logic_vector(1 downto 0) := (others => '0');
   signal DP : std_logic := '0';
   signal EN : std_logic := '0';

 	--Outputs
   signal SEG : std_logic_vector(7 downto 0);
   signal AN : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: module PORT MAP (
          DATA => DATA,
          DIG => DIG,
          DP => DP,
          EN => EN,
          SEG => SEG,
          AN => AN
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;
		

      -- insert stimulus here 

      wait;
   end process;

END;
