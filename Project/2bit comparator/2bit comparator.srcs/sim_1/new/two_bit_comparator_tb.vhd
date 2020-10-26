----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/10/23 14:05:09
-- Design Name: 
-- Module Name: two_bit_comparator_tb - Behavioral
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


LIBRARY IEEE;
USE     IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY two_bit_comparator_tb IS
END two_bit_comparator_tb;

ARCHITECTURE Behavioral of two_bit_comparator_tb IS
   -- khai bao component
    COMPONENT two_bit_comparator 
        PORT(
            -- input 
            A           : in  std_logic_vector(1 downto 0);
            B           : in  std_logic_vector(1 downto 0);
            -- output
            A_equal_B   : out std_logic;
            A_greater_B : out std_logic;
            A_less_B    : out std_logic
        );
    END COMPONENT;
    -- khai bao signal
    -- input
    signal A            : std_logic_vector(1 downto 0);
    signal B            : std_logic_vector(1 downto 0);
    -- output
    signal A_equal_B    : std_logic; 
    signal A_greater_B  : std_logic; 
    signal A_less_B     : std_logic;    

BEGIN
     -- khai bao uut
    uut : two_bit_comparator port map(
        -- input 
        A             =>  A, 
        B             =>  B, 
        -- output
        A_equal_B     =>  A_equal_B, 
        A_greater_B   =>  A_greater_B, 
        A_less_B      =>  A_less_B 
    );

   -- khong can khai bao bo tao xung
    stim_process : process
    begin
        A <= "11";
        B <= "11";
        wait for 30ns;
        A <= "10";
        B <= "01";
        wait for 40ns;
        A <= "01";
        B <= "11";
        wait for 50ns;
    end process;

END Behavioral;
