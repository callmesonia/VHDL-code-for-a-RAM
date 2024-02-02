----------------------------
--      Sonia Hariri      --
-- soniahariri9@gmail.com --
--        2/2/2024        --
----------------------------

library library IEEE;
use IEEE.std_logic_1164.all;

entity mux2to1 is
    port(
        I1, I2, s : in std_logic;
        o : out std_logic
    );
end entity;

architecture behav of mux2to1 is
    begin
        o <= I0 when s='0' else
             I1 when s='1' else 'Z';
    end architecture;