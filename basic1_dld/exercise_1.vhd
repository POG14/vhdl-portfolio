-- Exercise 1
-- Look the imagen and write the code
library IEEE;
use ieee.std_logic_1164.all;

entity some_doors is
    port (
        sw0, sw1, sw2 : in std_logic;
        led0, led1 : out std_logic
    );
    end some_doors;

architecture behav of some_doors is
begin
    led0 <= sw0 and sw1;
    led1 <= sw1 and sw2;
end behav;