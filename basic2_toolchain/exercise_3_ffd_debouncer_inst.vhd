-- Debouncer inst 

library ieee;
use ieee.std_logic_1164.all;        -- logica estandar
use ieee.numeric_std.all;           -- operaciones matematicas

entity debounce_switch is
    port (
        i_clk : in std_logic;
        i_switch : in std_logic;
        o_switch : out std_logic
    );
end debounce_switch;

architecture behav of debounce_switch is
    -- 10 ns at 100 MHz -> 0,01 / 100.000.000 Hz = 1.000.000 ciclos
    constant c_debounce_limit : integer := 1000000;
    -- filtered version of i_switch
    signal r_state : std_logic := '0';
    -- multibit signal -> La cantidad de bits que necesita para crear este registro va a ser suficiente para que el entero pueda ir de 0 a 1.000.000
    signal r_count : integer range 0 to c_debounce_limit := 0;

begin
    p_debounce: process (i_clk) is
    begin
        if rising_edge (i_clk) then
            if (i_switch /= r_state and r_count < c_debounce_limit) then
                r_count <= r_count + 1;
            elsif r_count = c_debounce_limit then
                r_state <= i_switch;
                r_count <= 0;
            else
                r_count <= 0;
            end if;
        end if;
    end process p_debounce;

    o_switch <= r_state;

end behav;