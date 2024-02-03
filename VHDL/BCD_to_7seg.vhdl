----------------------------
--      Sonia Hariri      --
-- soniahariri9@gmail.com --
--        2/2/2024        --
----------------------------

-- BCD adder to 7segment convertor with Selected Signal Assignment


library library IEEE;
use IEEE.std_logic_1164.all;

entity BCD_to_7seg is
    port (
        x, y, z, w: in std_logic;
        a, b, c, d, e, f, g: out std_logic
    );
end entity BCD_to_7seg;

architecture behavior of BCD_to_7seg is
    signal inp: std_logic_vector(3 downto 0);
    signal outp: std_logic_vector(6 downto 0);
    begin
        inp <= (x, y, z, w);
        (a, b, c, d, e, f, g) <= outp;
        with inp select
            outp <= "1111110" when "0000",
                    "0110000" when "0001",
                    "1101101" when "0010",
                    "1111001" when "0011",
                    "0110011" when "0100",
                    "1011011" when "0101",
                    "1011111" when "0110",
                    "1110000" when "0111",
                    "1111111" when "1000",
                    "1111011" when "1001",
                    "0000000" when others;
    end architecture;

