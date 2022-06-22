type multiplier_base_record is record
    signed_data_a     : input_array;
    signed_data_b     : input_array;
    multiplier_result : output_array;
    shift_register    : std_logic_vector(3 downto 0);
end record;

------------------------------------------------------------------------
    procedure create_multiplier
    (
        signal multiplier : inout multiplier_record
    ) is
    begin
        
        signed_data_a     <= signed_data_a(signed_data_a'left-1 downto 0)         & signed_data_a(0);
        signed_data_b     <= signed_data_b(signed_data_b'left-1 downto 0)         & signed_data_b(0);
        multiplier_result <= multiplier_result(multiplier_result'left-1 downto 0) & (signed_data_a(signed_data_a'left) * signed_data_b(signed_data_b'left));
        shift_register    <= shift_register(shift_register'left-1 downto 0)       & '0';

    end create_multiplier;

------------------------------------------------------------------------
    function multiplier_is_ready
    (
        multiplier : multiplier_record
    )
    return boolean
    is
    begin
        return multiplier.shift_register(multiplier.shift_register'left) = '1';
    end multiplier_is_ready;
