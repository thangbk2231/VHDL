----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/10/21 14:09:49
-- Design Name: 
-- Module Name: DFF_tb - Behavioral
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

entity DFF_tb is
--  Port ( );
end DFF_tb;

architecture Behavioral of DFF_tb is
  component DFF
    port(
      D   : in std_logic;
      Clk : in std_logic;
      Q   : out std_logic
    );  
  end component;
  
  signal D_tb   : std_logic := '0';
  signal Clk_tb : std_logic := '0';
  signal Q_tb   : std_logic;
  
  constant clk_period : time := 10 ns;
  
begin
  uut : DFF port map(
    D   => D_tb,
    Clk => Clk_tb,
    Q   => Q_tb
  );
  
  -- b? t?o xung nh?p cho tb
  clk_process :process
  begin
    clk_tb <= '0';
    wait for clk_period/2;
    clk_tb <= '1';
    wait for clk_period/2;
  end process;
  
  main_process : process
  begin
    D_tb <= '0';
    wait for 35 ns;
    D_tb <= '1';
    wait for 15 ns;
    D_tb <= '0';
    wait for 40 ns;

  end process;

end Behavioral;
