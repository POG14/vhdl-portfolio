-- Exercise 2
library IEEE;
use ieee.std_logic_1164.all;

entity exc2 is
    port (
        sw0, sw1 : in std_logic;
        led : out std_logic
    );
    end exc2;

architecture behav of exc2 is
begin 
    led <= sw0 and not sw1;
end behav;