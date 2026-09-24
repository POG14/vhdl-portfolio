--Exercise 4 -> Simple Multiplexer eith some bits
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux_4to0 is
    port (
        p0, p1, sel : in std_logic_vector (3 downto 0);
        ps : out std_logic_vector (3 downto 0)
    );

architecture behav of mux_4to0 is
begin
    ps <= p0 when sel = '0' else p1;
    end behav;