----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:05:58 10/13/2015 
-- Design Name: 
-- Module Name:    RS232_TX - Behavioral 
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

entity RS232_TX is
    Port ( 
      Clk   : in  std_logic;
      Reset : in  std_logic;
      Start : in  std_logic;
      Data  : in  std_logic_vector(7 downto 0);
      EOT   : out std_logic;
      TX    : out std_logic);
end RS232_TX;

architecture Behavioral of RS232_TX is

begin


end Behavioral;

