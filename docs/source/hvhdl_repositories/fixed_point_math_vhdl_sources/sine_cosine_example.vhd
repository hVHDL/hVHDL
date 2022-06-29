library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

    use work.multiplier_pkg.all;
    use work.sincos_pkg.all;

entity test is
    port ( clock : in std_logic);
end entity test;

architecture rtl of test is

    signal multiplier : multiplier_record := init_multiplier;
    signal sincos     : sincos_record     := init_sincos;

    signal counter : integer := 0;
    signal sine    : integer := 0;
    signal cosine  : integer := 0;

begin

    process(clock)
    begin
        if rising_edge(clock) then
            counter <= (counter + 1) mod 2**15;
            create_multiplier(multiplier);
            create_sincos(sincos);

            request_sincos(sincos, counter*64 mod 2**16);
            
            if sincos_is_ready(sincos);
                sine   <= get_sine(sincos);
                cosine <= get_sine(sincos);
            end if;
                
        end if; --rising_edge
    end process;	
end rtl;
