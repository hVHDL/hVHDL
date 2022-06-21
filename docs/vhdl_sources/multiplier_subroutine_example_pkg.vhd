package multiplier_pkg is
------------------------------------------------------------------------
    procedure create_multiplier (
        signal multiplier : inout multiplier_record);
------------------------------------------------------------------------
    procedure multiply (
        signal multiplier : inout multiplier_record;
        data_a : in integer;
        data_b : in integer);
------------------------------------------------------------------------
    function multiplier_is_ready (
        multiplier : multiplier_record)
    return boolean;
------------------------------------------------------------------------
    function get_multiplier_result (
        multiplier : multiplier_record;
        radix : natural range 0 to output_word_bit_width) 
    return integer ;



package body multiplier_pkg is
------------------------------------------------------------------------
    procedure create_multiplier
    (
        signal multiplier : inout multiplier_record
    ) is

        alias multiplier_result              is multiplier.multiplier_result;
        alias shift_register                 is multiplier.shift_register;
        alias signed_data_a                  is multiplier.signed_data_a;
        alias signed_data_b                  is multiplier.signed_data_b;
    begin
        
        signed_data_a     <= signed_data_a(signed_data_a'left-1 downto 0)         & signed_data_a(0);
        signed_data_b     <= signed_data_b(signed_data_b'left-1 downto 0)         & signed_data_b(0);
        multiplier_result <= multiplier_result(multiplier_result'left-1 downto 0) & (signed_data_a(signed_data_a'left) * signed_data_b(signed_data_b'left));
        shift_register    <= shift_register(shift_register'left-1 downto 0)       & '0';

    end create_multiplier;
------------------------------------------------------------------------
    procedure multiply
    (
        signal multiplier : inout multiplier_record;
        data_a : in integer;
        data_b : in integer
    ) is
        alias multiplier_is_requested_with_1 is multiplier.shift_register(0);
    begin
        multiplier.signed_data_a(0) <= to_signed(data_a, data_a_bit_width);
        multiplier.signed_data_b(0) <= to_signed(data_b, data_b_bit_width);
        multiplier_is_requested_with_1 <= '1';

    end multiply;
------------------------------------------------------------------------
end package body multiplier_pkg;
