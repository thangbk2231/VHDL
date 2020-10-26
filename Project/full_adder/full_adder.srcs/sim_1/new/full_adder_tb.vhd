----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/10/21 09:53:15
-- Design Name: 
-- Module Name: full_adder_tb - Behavioral
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

-- b?i v? l? tb n?n ko c? khai b?o c?ng
-- khai b?o th?c th? tb
entity full_adder_structural_tb is
--  Port ( );
end full_adder_structural_tb;

architecture Behavioral of full_adder_structural_tb is
-- c?n khai b?o m?t component full adder(gi?ng khai b?o install trong )
  component full_adder
    -- m?t component c?n ???c khai b?o c?ng
    port(
      x1, x2, Cin : in std_logic;
      Cout, S : out std_logic
    );
  -- k?t th?c khai b?o component c?n s? d?ng d?u ";"
  end component;
  -- c?n khai b?o c?c t?n hi?u v?o component
  -- t?n hi?u ??u v?o c?n ???c kh?i t?o gi? tr? ban ??u
  signal A, B, Cin : std_logic := '0';
  signal Cout, S : std_logic;
begin
  -- g?i component v? n?i ch?n c?a t?n hi?u m? ph?ng cho n?
  structural_full_adder : full_adder port map(
    x1   => A,
    x2   => B,
    Cin  => Cin,
    Cout => Cout,
    S    => S
  );
  -- s? d?ng process cho t?n hi?u li?n t?c
  -- k?t th?c m?i m?t kh?i
  process
  begin
    -- v? l? bi?n logic n?n gi? tr? g?n cho n? c?n ??t trong d?u ''
    A   <= '0';
    B   <= '0';
    Cin <= '0';
    wait for 100ns;
    A   <= '0';
    B   <= '0';
    Cin <= '1';
    wait for 100ns;
    A   <= '0';
    B   <= '1';
    Cin <= '0';
    wait for 100ns;
    A   <= '0';
    B   <= '1';
    Cin <= '1';
    wait for 100ns;
    A   <= '1';
    B   <= '0';
    Cin <= '0';
    wait for 100ns;
    A   <= '1';
    B   <= '0';
    Cin <= '1';
    wait for 100ns;
    A   <= '1';
    B   <= '1';
    Cin <= '0';
    wait for 100ns;
    A   <= '1';
    B   <= '1';
    Cin <= '1';
    wait for 100ns;
  end process;
end Behavioral;
