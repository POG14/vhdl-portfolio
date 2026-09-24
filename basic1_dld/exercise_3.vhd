--Exercise 3 -> Simple Multiplexer
library ieee;
use ieee.std_logic_1164.all;

entity exc3 is
    port(
        p0,p1,sel : in std_logic;
        ps : out std_logic
    );
end exc3;

architecture behav of exc3 is
    signal sel_n : std_logic;
    signal fld   : std_logic;
    signal sld   : std_logic;
begin
    sel_n <= not sel;
    fld <= p0 and sel_n;
    sld <= p1 and sel;
    ps <= fld or sld;
end behav;

--otra forma más sencilla sería:
-- architecture behav of exc3 is
-- begin
-- ps <= (p0 and (not sel) or (p1 and sel));
-- end behav;