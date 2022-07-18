fixed_point_filter : process(clock)
begin
    if rising_edge(clock) then
        init_bus(bus_out);
        connect_read_only_data_to_address(bus_in, bus_out, 104, get_filter_output(filter)/2 + 32678);
        connect_read_only_data_to_address(bus_in, bus_out, 105, scaled_sine/2 + 32678);
        create_multiplier(multiplier2);
        create_first_order_filter(filter => filter , multiplier => multiplier2 , time_constant => filter_time_constant);

        if example_filter_input.filter_is_requested then
            filter_data(filter, example_filter_input.filter_input);
            process_counter <= 0;
        end if;

        CASE process_counter is
            WHEN 0 =>
                if filter_is_ready(filter) then
                    multiply(multiplier2, get_filter_output(filter), integer(32768.0*3.3942));
                    process_counter <= process_counter + 1;
                end if;
            WHEN 1 => 
                if multiplier_is_ready(multiplier2) then
                    scaled_sine <= get_multiplier_result(multiplier2, 15);
                    process_counter <= process_counter + 1;
                end if;
            WHEN others => -- wait for start
        end CASE;

    end if; --rising_edge
end process;	
