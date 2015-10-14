--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:13:31 10/14/2015
-- Design Name:   
-- Module Name:   C:/Users/Cloud/Documents/P2/controladorserie/tb_shiftregister.vhd
-- Project Name:  controladorserie
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ShiftRegister
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
 
ENTITY tb_shiftregister IS
END tb_shiftregister;
 
ARCHITECTURE behavior OF tb_shiftregister IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ShiftRegister
    PORT(
         Reset : IN  std_logic;
         Clk : IN  std_logic;
         Enable : IN  std_logic;
         D : IN  std_logic;
         Q : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Reset : std_logic := '0';
   signal Clk : std_logic := '0';
   signal Enable : std_logic := '0';
   signal D : std_logic := '0';

 	--Outputs
   signal Q : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 50 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ShiftRegister PORT MAP (
          Reset => Reset,
          Clk => Clk,
          Enable => Enable,
          D => D,
          Q => Q
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;

	   reset<= 	'0' after 0 ns,
					'1' after 100 ns;
		
		enable <= '1' after 110 ns,
					 '0' after 310 ns;
					 
		d <=		 '1' after 110 ns,
					 '0' after 230 ns,
					 '1' after 400 ns;
					
   -- Stimulus process
--   stim_proc: process
--   begin		
--      reset <= '0';
--      wait for 100 ns;	
--
--      wait for Clk_period*10;
--
--      reset<= '1';
--		enable <= '1';
--		d <= '1';
--
--      wait;
--   end process;

END;
