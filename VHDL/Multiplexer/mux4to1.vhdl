----------------------------
--      Sonia Hariri      --
-- soniahariri9@gmail.com --
--        2/2/2024        --
----------------------------

--1bit multiplexer 4 to 1 with Selected Signal Assignment


library library IEEE;
use IEEE.std_logic_1164.all;

entity mux4to1 is
    port (
        sel: in std_logic_vector(1 downto 0); --selection
        a, b, c, d: in std_logic;
        o: out std_logic
    );
end entity mux4to1;

architecture behavior of mux4to1 is
    begin
        with sel select
            o <= a when "00",
                 b when "01",
                 c when "10",
                 d when "11",
                 'Z' when others;
    end architecture;