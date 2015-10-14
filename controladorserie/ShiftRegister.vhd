----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:12:47 10/13/2015 
-- Design Name: 
-- Module Name:    ShiftRegister - Behavioral 
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

entity ShiftRegister is
    Port ( 
			Reset  : in  std_logic;
			Clk    : in  std_logic;
			Enable : in  std_logic;
			D      : in  std_logic;
			Q      : out std_logic_vector(7 downto 0));
end ShiftRegister;

architecture Behavioral of ShiftRegister is

	signal aux_salida : std_logic_vector(7 downto 0):="00000000";

begin

	shift: PROCESS(clk, enable) is
	BEGIN
		
		
		if reset = '0' then
			aux_salida <= "00000000";
			
		elsif (clk'event and clk='1' and enable='1') then
			aux_salida(7 downto 1) <= aux_salida(6 downto 0);
			aux_salida(0) <= D;
			
		end if;
		
	end process;
	q <= aux_salida;
end Behavioral;

