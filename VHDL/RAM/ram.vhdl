----------------------------
--      Sonia Hariri      --
-- soniahariri9@gmail.com --
--        2/2/2024        --
----------------------------

--Definition of ram memory with separate input and output

library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_arith.all;
    use ieee.std_logic_unsigned.all;
    
entity ram is
    port(
          clk, wr, ce : in std_logic;
          addr : in integer range 0 to 7 :=0;
          data_out : out std_logic_vector(7 downto 0);
          data_in : in std_logic_vector(7 downto 0));
    end entity;


architecture behavior of ram is
    type memtype is array (0 to 7) of std_logic_vector(7 downto 0);
    signal memory : memtype;
    begin
        process(clk)
           begin
                if(clk'event and clk = '1') then
                    if(ce = '1' and wr = '1') then
                        memory(addr) <= data_in;
                    end if;
                end if;
            end process;
            data_out <= memory(addr) when ce = '1' else "ZZZZZZZZ";
    end architecture;



