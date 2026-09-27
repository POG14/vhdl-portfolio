--Exercise 2 -> A LUT (Look-Up Table)
library ieee;
use ieee.std_logic_1164.all;

entity lut is
    port(
        a, b : in std_logic;
        y : out std_logic
    );
    end lut;

architecture behav of lut is
begin
    y <= a and b;
end behav;

-- architecture behav of lut is
-- begin
-- y <= a or b;
-- end behav;
