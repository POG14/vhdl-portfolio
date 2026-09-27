-- Exercise 3 -> Flip flop D
-- Consiste en alternar un Led: 
-- Cuando lo tienes pulsado se mantiene encendido.
-- Cuando dejas de pulsar el boton, el LED alterna.

-- En teoría tienes que desarrollar dos señales, una para el button.
-- Y otra para ver cuando no estás pulsando el botón. 

library ieee;
use     ieee.std_logic_1164.all;

entity ffd is
    port (
        i_sw, i_clk : in std_logic;
        led         : out std_logic
    );
    end ffd;

architecture behav of ffd is
    signal r_led : std_logic := '0';
    signal r_sw  : std_logic := '0';
begin
    p_register: process (i_clk) is
    begin
        if rising_edge(i_clk) then                  -- busca una transición de 0 a 1 en el reloj. Si eso pasa, que cualquier cosa dentro de esta instrucción if, se ejecutará.
            r_sw <= i_sw;                           -- esta línea hace referencia al estado anterior del switch. Para que en la siguiente línea, se puedan comparar el estado anterior y el nuevo.
            if i_sw = '0' and r_sw = '1' then       -- si el estado actual es 0, y el anterior 1 ->
                r_led <= not r_led;                 -- necesitamos saber el estado anterior de led, para que invierta eso, y de el nuevo resultado
            end if;
        end if;
    end process;

    led <= r_led;                                   -- un puerto out, no se puede leer dentro de la propia arquitectura, solo escribir.
                                                    -- para hacer un toggle necesitas leer el valor actual, así que si no hicieras esto, directamente no compilaría porque estarías intentado leer algo que el lenguaje te dice que solo puedes escribir.
end behav;