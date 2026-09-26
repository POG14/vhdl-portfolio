--Improve Exercise 1
library ieee;
use ieee.std_logic_1164.all;

entity leds_on is
    port (
        switch : in std_logic_vector(3 downto 0);
        led : out std_logic_vector(3 downto 0)
    );
    end leds_on;

    architecture behav of leds_on is
    begin
        led <= switch;
    end behav;

