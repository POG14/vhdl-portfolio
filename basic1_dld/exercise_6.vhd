--Exercise 6 -> 2 Nested Mux
library ieee;
use ieee.std_logic_1164.all;

entity two_nested_mux is
    port (
        p0,p1,p2,p3,p4,sel0,sel1 : in std_logic;
        ps : out std_logic
    );
    end two_nested_mux;

architecture behav of two_nested_mux is
begin
    p_mux: process (p0,p1,p2,p3,p4,sel0,sel1)
    begin
        if sel1 = '0' then
            if sel0 = '0' then
                ps <= p0;
            else 
                ps <= p1;
            end if;
        else
            if sel0 = '0' then
                ps <= p2;
            else
                ps <= p3;
            end if;
        end if;
    end process;
end behav;



