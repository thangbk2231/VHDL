----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/10/22 17:03:11
-- Design Name: 
-- Module Name: two_bit_comparator - Behavioral
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

entity two_bit_comparator is
    -- khai bao cong
    port(
        -- input 
        A           : in  std_logic_vector(1 downto 0);
        B           : in  std_logic_vector(1 downto 0);
        -- output
        A_equal_B   : out std_logic;
        A_greater_B : out std_logic;
        A_less_B    : out std_logic
    );
 end two_bit_comparator;

architecture Behavioral of two_bit_comparator is
    -- khai bao tin hieu
    signal tmp1 : std_logic;
    signal tmp2 : std_logic;
    signal tmp3 : std_logic;
    signal tmp4 : std_logic;
    signal tmp5 : std_logic;
    signal tmp6 : std_logic;
    signal tmp7 : std_logic;
    signal tmp8 : std_logic;
    -- mach to hop
    -- A_equal_B combinational logic circuit
begin
    tmp1          <=    A(1) xnor B(1);
    tmp2          <=    A(0) xnor B(0);
    A_equal_B     <=    tmp1 and tmp2;
    -- A_less_B combinational logic circuit
    tmp3          <=    (not A(0)) and (not A(1)) and B(0);
    tmp4          <=    (not A(1)) and B(1);
    tmp5          <=    (not A(0)) and B(1) and B(0);
    A_less_B      <=    tmp3 or tmp4 or tmp5;
    -- A_greater_B combinational logic circuit
    tmp6          <=    (not B(0)) and (not B(1)) and A(0);
    tmp7          <=    (not B(1)) and A(1);
    tmp8          <=    (not B(0)) and A(1) and A(0);
    A_greater_B   <=    tmp6 or tmp7 or tmp8;
end Behavioral;
