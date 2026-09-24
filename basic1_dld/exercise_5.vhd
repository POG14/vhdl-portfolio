--Exercise 5 -> Nested multiplexder (only one nested)
library ieee;
use ieee.std_logic_1164.all;

entity nested_mux is
    port (
        p0, p1, p2, sel0, sel1 : in std_logic;
        ps : out std_logic
    );
    end nested_mux;

architecture behav of nested_mux is
    signal first_mux : std_logic;
begin
   first_mux <= p1 when sel1 = '0' else p2;
   ps <= p0 when sel0 = '0' else first_mux; 
    end behav;
    