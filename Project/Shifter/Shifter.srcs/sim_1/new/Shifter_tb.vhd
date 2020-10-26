----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/10/22 14:23:42
-- Design Name: 
-- Module Name: Shifter_tb - Behavioral
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

entity Shifter_tb is
--  Port ( );
end Shifter_tb;

architecture Behavioral of Shifter_tb is
    -- khai bao component
    component Shifter
    port(
        -- input
        SHIFT_Ctrl    : in  std_logic_vector(3  downto 0);
        SHIFTINPUT    : in  std_logic_vector(15 downto 0);
        -- output
        SHIFTOUTPUT   : out std_logic_vector(15 downto 0)
    );
    end component;

    -- khai bao tin hieu
    -- input
    -- khoi tao cho mot vector ta dung tu khoa others
    signal SHIFT_Ctrl  : std_logic_vector(3  downto 0) := (others => '0');
    signal SHIFTINPUT  : std_logic_vector(15 downto 0) := (others => '0');
    -- output
    signal SHIFTOUTPUT : std_logic_vector(15 downto 0);

begin
    -- khai bao uut(unit under test)
    uut : Shifter port map(
        -- input
        SHIFT_Ctrl  => SHIFT_Ctrl,  
        SHIFTINPUT  => SHIFTINPUT,      
        -- output
        SHIFTOUTPUT => SHIFTOUTPUT 
    );

    -- bo tao xung clk neu co 
    -- bo tao tin hieu mo phong
    stim_process : process is
    begin
        -- voi vector nhieu bit ta dung dau ""
        SHIFT_Ctrl <= "1000";
        SHIFTINPUT <= x"ABCD"; 
        wait for 30ns;
        SHIFT_Ctrl <= "1001";
        SHIFTINPUT <= x"ABCD"; 
        wait for 20ns;
        SHIFT_Ctrl <= "1010";
        SHIFTINPUT <= x"ABCD"; 
        wait for 40ns;
        SHIFT_Ctrl <= "1110";
        SHIFTINPUT <= x"ABCD"; 
        wait for 60ns;
    end process;

end Behavioral;
