library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

    use work.multiplier_pkg.all;

entity test is
    port ( clock : in std_logic);
end entity test;

architecture rtl of test is

    signal multiplier : multiplier_record := init_multiplier;
    signal counter : integer := 0;
    signal multiplier_result : integer := 0;

begin

    multiply : process(clock)
    begin
        if rising_edge(clock) then
            counter <= counter + 1;
            create_multiplier(multiplier);

            multiply(multiplier, counter, counter);
            if multiplier_is_ready(multiplier);
                multiplier_result <= get_multiplier_result(multiplier, 15);
            end if;
                
        end if; --rising_edge
    end process multiply;	
end rtl;
