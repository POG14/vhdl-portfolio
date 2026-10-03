-- Exercise 4 -> FF with a debouncer
-- Primero instanciamos el debouncer en nuestro código
-- Y en otro fichero creamos el archivo debouncer como tal.

library ieee;
use ieee.std_logic_1164.all;

entity ffd is
    port (
        i_switch, i_clk : in std_logic;
        o_led           : out std_logic
    );
    end ffd;

architecture behav of ffd is
signal r_switch : std_logic := '0';
signal r_led    : std_logic := '0';
signal w_switch : std_logic;

begin
    -- instanciamos Debounce filter
    debounce_inst : entity work.debounce_switch
    port map (
        i_clk => i_clk,
        i_switch => i_switch,
        o_switch => w_switch
    );

    ffd_process: process (i_clk) is
    begin
        if rising_edge (i_clk) then
            r_switch <= w_switch;
            if w_switch = '0' and r_switch = '1' then
                r_led <= not r_led;
            end if;
        end if;
    end process;
    
    o_led <= r_led;

end behav;
