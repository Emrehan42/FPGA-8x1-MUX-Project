----------------------------------------------------------------------------------
-- Module Name: mux_8x1 - Behavioral
-- Description: 8x1 multiplexer implemented using 2-input MUX components.
-- Dependencies: MUX.vhd
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux_8x1 is
    Port ( I : in STD_LOGIC_VECTOR (7 downto 0);
           S : in STD_LOGIC_VECTOR (2 downto 0);
           Y : out STD_LOGIC);
end Mux_8x1;

architecture Behavioral of Mux_8x1 is

component MUX
    Port ( D0 : in STD_LOGIC;
           D1 : in STD_LOGIC;
           S : in STD_LOGIC;
           Y : out STD_LOGIC);
end component;

signal f00, f01, f02, f03 : STD_LOGIC;
signal f10, f11           : STD_LOGIC;

begin

-- Stage 1: S(0) selects between pairs
m00 : MUX port map (I(0), I(1), S(0), f00);
m01 : MUX port map (I(2), I(3), S(0), f01);
m02 : MUX port map (I(4), I(5), S(0), f02);
m03 : MUX port map (I(6), I(7), S(0), f03);

-- Stage 2: S(1) selects between the results of Stage 1
m10 : MUX port map (f00, f01, S(1), f10);
m11 : MUX port map (f02, f03, S(1), f11);

-- Stage 3: S(2) selects the final output
m2  : MUX port map (f10, f11, S(2), Y);

-- Alternative (equation-based) implementation - for reference
-- Y <= (not S(2) and not S(1) and not S(0) and I(0)) or ...
-- (omitted for brevity)

end Behavioral;
