----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:13:52 10/13/2015 
-- Design Name: 
-- Module Name:    RS232_RX - Behavioral 
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

entity RS232_RX is
    Port ( 
			Clk       : in  std_logic;
			Reset     : in  std_logic;
			LineRD_in : in  std_logic;
			Valid_out : out std_logic;
			Code_out  : out std_logic;
			Store_out : out std_logic);
end RS232_RX;

architecture Behavioral of RS232_RX is

begin


end Behavioral;

