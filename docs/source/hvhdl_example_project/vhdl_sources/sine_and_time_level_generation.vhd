
create_noisy_sine : process(system_clock)
begin
    if rising_edge(system_clock) then
        create_multiplier(multiplier);
        create_sincos(multiplier , sincos);

        init_example_filter(floating_point_filter_in);
        init_example_filter(fixed_point_filter_in);

        init_bus(bus_from_interconnect);
        connect_read_only_data_to_address(bus_from_master, bus_from_interconnect, 100, get_sine(sincos)/2 + 32768);
        connect_read_only_data_to_address(bus_from_master, bus_from_interconnect, 101, angle);
        connect_read_only_data_to_address(bus_from_master, bus_from_interconnect, 102, to_integer(signed(prbs7))+32768);
        connect_read_only_data_to_address(bus_from_master, bus_from_interconnect, 103, sine_with_noise/2 + 32768);

        if i > 0 then
            i <= (i - 1);
        else
            i <= 1199;
        end if;

        if i = 0 then
            request_sincos(sincos, angle);
            angle    <= (angle + 10) mod 2**16;
            prbs7    <= prbs7(5 downto 0) & prbs7(6);
            prbs7(6) <= prbs7(5) xor prbs7(0);
        end if;

        if sincos_is_ready(sincos) then
            sine_with_noise <= get_sine(sincos) + to_integer(signed(prbs7)*64);
            request_example_filter(floating_point_filter_in, sine_with_noise);
            request_example_filter(fixed_point_filter_in, sine_with_noise);
        end if;

    end if; --rising_edge
end process testi;	

---------------
    u_floating_point_filter : entity work.example_filter_entity(float)
        generic map(filter_time_constant => filter_time_constant)
        port map(system_clock, floating_point_filter_in, bus_from_master, bus_from_floating_point_filter);

---------------
    u_fixed_point_filter : entity work.example_filter_entity(fixed_point)
        generic map(filter_time_constant => filter_time_constant)
        port map(system_clock, fixed_point_filter_in, bus_from_master, bus_from_fixed_point_filter);

------------------------------------------------------------------------
------------------------------------------------------------------------
