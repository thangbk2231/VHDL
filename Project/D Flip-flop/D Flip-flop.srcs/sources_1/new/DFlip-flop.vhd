----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/10/21 13:42:43
-- Design Name: 
-- Module Name: DFlip-flop - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DFF is
--  Port ( );
port(
  D   : in std_logic; 
  Clk : in std_logic;
  Q   : out std_logic
);
end DFF;

architecture Behavioral of DFF is
begin
  process(Clk)
  begin
    if(rising_edge(Clk)) then
      Q <= D;
    end if;
  end process;
end Behavioral;
