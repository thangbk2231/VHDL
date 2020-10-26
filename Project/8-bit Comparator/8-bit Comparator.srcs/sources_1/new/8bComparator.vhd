----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/10/21 16:31:09
-- Design Name: 
-- Module Name: 8bComparator_Structural - Behavioral
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

-- https://www.fpga4student.com/2016/11/verilog-code-for-8-bit-74f521-identity.html
entity Comparator_Structural_8bit is
--  Port ( );
port(
  clk : in std_logic;
  IAB : in std_logic;
  A   : in std_logic_vector(7 downto 0);
  B   : in std_logic_vector(7 downto 0);
  OAB : out std_logic
);
end Comparator_Structural_8bit;

architecture Behavioral of Comparator_Structural_8bit is
  signal AB : std_logic_vector(7 downto 0);
begin
  AB(0) <= not(A(0)) xnor not(B(0));
  AB(1) <= not(A(1)) xnor not(B(1));
  AB(2) <= not(A(2)) xnor not(B(2));
  AB(3) <= not(A(3)) xnor not(B(3));
  AB(4) <= not(A(4)) xnor not(B(4));
  AB(5) <= not(A(5)) xnor not(B(5));
  AB(6) <= not(A(6)) xnor not(B(6));
  AB(7) <= not(A(7)) xnor not(B(7));
  
  process(clk)
  begin
    if(rising_edge(clk)) then
      if(AB = x"FF" and IAB = '0') then
        OAB <= '0';
      else
        OAB <= '1';
      end if;
    end if;
  end process;
  
end Behavioral;
