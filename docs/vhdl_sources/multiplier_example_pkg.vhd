package multiplier_pkg is

    type multiplier_record is record
        signed_data_a                  : input_array;
        signed_data_b                  : input_array;
        multiplier_result              : output_array;
        shift_register                 : std_logic_vector(3 downto 0);
    end record;

    constant init_multiplier : multiplier_record := (init_input_array, init_input_array, init_output_array, (others => '0'));
