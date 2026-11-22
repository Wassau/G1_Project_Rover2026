library ieee;
use ieee.std_logic_1164.all;

entity DIVISOR_1HZ is
    generic (
        F_IN  : natural := 100000;  -- Frecuencia de entrada (Hz)
        F_OUT : natural := 1        -- Frecuencia de salida (Hz)
    );
    port (
        clk     : in  std_logic;
        reset   : in  std_logic;
        clk_out : out std_logic
    );
end DIVISOR_1HZ;

architecture rtl of DIVISOR_1HZ is
    constant MAX : natural := (F_IN / (2 * F_OUT)) - 1;  -- 49999
    signal contador   : natural range 0 to MAX := 0;
    signal tmp   : std_logic := '0';
begin
    process (clk, reset)
    begin
        if reset = '1' then
            contador <= 0;
            tmp <= '0';
        elsif rising_edge(clk) then
            if contador = MAX then
                contador <= 0;
                tmp <= not tmp;   -- Invierte la salida cada medio periodo
            else
                contador <= contador + 1;
            end if;
        end if;
    end process;

    clk_out <= tmp;
end rtl;