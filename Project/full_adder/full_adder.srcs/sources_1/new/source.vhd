----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/10/21 09:26:45
-- Design Name: 
-- Module Name: source - Behavioral
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

entity full_adder is
--  Port ( );
  port(
  x1, x2, Cin  : in std_logic;
  S, Cout : out std_logic);
end full_adder;

architecture Behavioral of full_adder is
  signal a1, a2, a3: std_logic ;
begin
  a1 <= x1 xor x2;
  a2 <= x1 and x2;
  a3 <= a1 and Cin;
  S <= a1 xor Cin;
  Cout <= a3 or a2;
end Behavioral;

