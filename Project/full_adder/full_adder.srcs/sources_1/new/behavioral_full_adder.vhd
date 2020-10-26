----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/10/21 11:21:25
-- Design Name: 
-- Module Name: behavioral_full_adder - Behavioral
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
use IEEE.STD_LOGIC_unsigned.ALL;
use IEEE.numeric_std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity behavioral_full_adder is
--  Port ( );
  port(
    -- khi khai b?o c?ng, gi?a c?c bi?n c?n c? d?u ;
    X1, X2, Cin : in std_logic;
    Cout, S     : out std_logic
  );
end behavioral_full_adder;

architecture Behavioral of behavioral_full_adder is
  signal temp : std_logic_vector(1 downto 0);
begin
  process(X1, X2, Cin)
  begin
    temp <= ('0'& X1) + ('0'& X2) + ('0'& Cin);
  end process;
    S    <= temp(0);
    Cout <= temp(1);
end Behavioral;
