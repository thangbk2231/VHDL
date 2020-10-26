----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/10/22 11:41:02
-- Design Name: 
-- Module Name: Shifter - Behavioral
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

entity Shifter is
  -- khai bao hang so bang generic
  -- khai báo cổng
  port(
    -- input
    SHIFT_Ctrl    : in  std_logic_vector(3 downto 0);
    SHIFTINPUT    : in  std_logic_vector(15 downto 0);
    -- output
    SHIFTOUTPUT   : out std_logic_vector(15 downto 0)
  );
  -- khai bao tin hieu
end Shifter;

architecture Behavioral of Shifter is
begin
  --khai báo một process 
  process (SHIFT_Ctrl, SHIFTINPUT) is 
  begin
    case(SHIFT_Ctrl) is 
      when "1000" => SHIFTOUTPUT <= SHIFTINPUT(7 downto 0) & SHIFTINPUT(15 downto 8);
      when "1001" => SHIFTOUTPUT <= SHIFTINPUT(3 downto 0) & SHIFTINPUT(15 downto 4);
      when "1010" => SHIFTOUTPUT <= SHIFTINPUT(7 downto 0) & "00000000";
      when others => SHIFTOUTPUT <= x"0000"; 
    end case;
  end process; 

end Behavioral;
 