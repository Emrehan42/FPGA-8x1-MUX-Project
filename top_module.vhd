----------------------------------------------------------------------------------
-- Design Name: FPGA 8x1 MUX Project
-- Module Name: top_module - Behavioral
-- Project Name: Digital Design: 8x1 MUX with FPGA
-- Target Devices: Nexys A7-100T
-- Description: Top-level module connecting switches to LEDs and the 8x1 MUX.
-- Dependencies: Mux_8x1.vhd
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_module is
    Port ( SW : in STD_LOGIC_VECTOR (15 downto 0);
           LED : out STD_LOGIC_VECTOR (15 downto 0));
end top_module;

architecture Behavioral of top_module is

component Mux_8x1 is
    Port ( I : in STD_LOGIC_VECTOR (7 downto 0);
           S : in STD_LOGIC_VECTOR (2 downto 0);
           Y : out STD_LOGIC);
end component;

begin

-- Instantiate 8x1 MUX
Mux_8x1_inst : Mux_8x1 port map (SW(7 downto 0), SW(15 downto 13), LED(10));

-- Direct connections from switches to LEDs
LED(7 downto 0)  <= SW(7 downto 0);
LED(15 downto 13) <= SW(15 downto 13);

end Behavioral;
