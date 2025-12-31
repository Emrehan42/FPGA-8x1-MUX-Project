----------------------------------------------------------------------------------
-- Module Name: mux_2x1 - Behavioral
-- Description: 2-input multiplexer
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX is
    Port ( D0 : in STD_LOGIC;
           D1 : in STD_LOGIC;
           S : in STD_LOGIC;
           Y : out STD_LOGIC);
end MUX;

architecture Behavioral of MUX is
begin
    Y <= (not S and D0) or (S and D1);
end Behavioral;
