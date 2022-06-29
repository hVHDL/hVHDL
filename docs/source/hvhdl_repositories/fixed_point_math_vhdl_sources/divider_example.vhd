library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

    use work.multiplier_pkg.all;
    use work.divider_pkg.all;

entity test is
    port ( clock : in std_logic);
end entity test;

architecture rtl of test is

    signal multiplier : multiplier_record := init_multiplier;
    signal divider    : divider           := init_divider;

    signal counter        : integer := 0;
    signal divider_result : integer := 0;

begin

    process(clock)
    begin
        if rising_edge(clock) then
            counter <= (counter + 1) mod 2**15;
            create_multiplier(multiplier);
            create_multiplier(divider);

            if division_is_not_busy(divider) then
                request_division(divider, counter, counter);
            end if;

            multiply(multiplier, counter, counter);
            if  division_is_ready(multiplier, divider) then
                divider_result <= get_division_result(multiplier, divider, 15);
            end if;
                
        end if; --rising_edge
    end process;	
end rtl;
