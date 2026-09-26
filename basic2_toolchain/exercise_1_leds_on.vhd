-- Exercise 1 -> Encender varios led diferente con diferntes switches.
library ieee;
use ieee.std_logic_1164.all;

entity leds_on is
    port (
        sw1, sw2, sw3, sw4 : in std_logic;
        d1, d2, d3, d4 : out std_logic
    ); 
    end leds_on;

architecture behav of leds_on is
begin
    d1 <= sw1;
    d2 <= sw2;
    d3 <= sw3;
    d4 <= sw4;
end behav;


