----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/10/22 09:03:37
-- Design Name: 
-- Module Name: comparator_tb - Behavioral
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

entity comparator_tb is
-- kh?ng c?n khai b?o c?ng
--  Port ( );
end comparator_tb;

architecture Behavioral of comparator_tb is
  -- khai b?o component, trong component khai b?o port, component k?t th?c b?ng d?u ;
  component Comparator_Structural_8bit
    port(
      clk : in std_logic;
      IAB : in std_logic;
      A   : in std_logic_vector(7 downto 0);
      B   : in std_logic_vector(7 downto 0);
      OAB : out std_logic
    );       
  end component;
  
  -- khai b?o t?n hi?u hay h?ng s? g?n gi? tr? b?ng :=
  -- khai b?o t?n hi?u ??u v?o cho component, [t?n hi?u] [t?n t?n hi?u] : [lo?i t?n hi?u];
  -- inputs
  signal clk : std_logic := '0';
  signal IAB : std_logic := '0';
  signal A   : std_logic_vector(7 downto 0) := x"00";
  signal B   : std_logic_vector(7 downto 0) := x"00";
  
  -- outputs
  signal OAB : std_logic;
  
  -- khai b?o h?ng s? cho b? t?o xung
  constant clk_period : time := 10ns;

begin
  -- khai b?o uut(unit under test) [t?n uut] : [t?n component] port map([g?n port]);
  uut : Comparator_Structural_8bit port map(
    clk   => clk,
    IAB   => IAB,
    A     => A,
    B     => B,
    OAB   => OAB
  );

  -- b? t?o xung
  clk_process : process
  begin
    clk <= '0';
    wait for clk_period / 2;
    clk <= '1';
    wait for clk_period / 2;
  end process;
  
  -- b? t?o t?n hi?u m? ph?ng
  stim_process : process
  begin
    IAB <= '0';
    A <= x"1C";
    B <= x"1C";
    wait for 30ns;
    
    IAB <= '0';
    A <= x"1C";
    B <= x"1F";
    wait for 35ns;
    
    IAB <= '1';
    A <= x"3C";
    B <= x"3C";
    wait for 40ns;

    IAB <= '1';
    A <= x"5C";
    B <= x"3C";
    wait for 45ns;
  end process;

end Behavioral;
