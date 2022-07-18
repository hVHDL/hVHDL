floating_point_filter : process(clock)
    begin
        if rising_edge(clock) then
            init_bus(bus_out);
            connect_read_only_data_to_address(bus_in, bus_out, 106, get_mantissa(get_filter_output(float_filter)));
            connect_read_only_data_to_address(bus_in, bus_out, 107, get_exponent(get_filter_output(float_filter)));
            connect_read_only_data_to_address(bus_in, bus_out, 108, get_integer(denormalizer) + 32768);

            create_float_alu(float_alu);
            create_denormalizer(denormalizer);
            create_normalizer(normalizer);

            if example_filter_input.filter_is_requested then
                to_float(normalizer, example_filter_input.filter_input, 15);
            end if;

            if normalizer_is_ready(normalizer) then
                request_float_filter(float_filter, get_normalizer_result(normalizer));
            end if;

            request_scaling(denormalizer, get_filter_output(float_filter), 14);

        ------------------------------------------------------------------------
            filter_is_ready <= false;
            CASE filter_counter is
                WHEN 0 => 
                    subtract(float_alu, u, y);
                    filter_counter <= filter_counter + 1;
                WHEN 1 =>
                    if add_is_ready(float_alu) then
                        multiply(float_alu  , get_add_result(float_alu) , filter_gain);
                        filter_counter <= filter_counter + 1;
                    end if;

                WHEN 2 =>
                    if multiplier_is_ready(float_alu) then
                        add(float_alu, get_multiplier_result(float_alu), y);
                        filter_counter <= filter_counter + 1;
                    end if;
                WHEN 3 => 
                    if add_is_ready(float_alu) then
                        y <= get_add_result(float_alu);
                        filter_counter <= filter_counter + 1;
                        filter_is_ready <= true;
                    end if;
                WHEN others =>  -- wait for start
            end CASE;
        ------------------------------------------------------------------------

        end if; --rising_edge
    end process floating_point_filter;	
