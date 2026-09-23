-- Example 1
-- Started with a AND door:
library IEEE;
use IEEE.std_logic_1164.ALL;

entity puerta_and is
    port(
        sw1, sw2: in std_logic;
        led: out std_logic);
end puerta_and;

architecture behav of puerta_and is
begin
    led <= sw1 and sw2;
end behav;

