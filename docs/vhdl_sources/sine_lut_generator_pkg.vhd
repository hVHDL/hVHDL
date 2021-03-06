package body lookup_table_generator_pkg is
------------------------------------------------------------------------
    function sine_lookup_table_generator
    (
        input : real range 0.0 to 1.0
    )
    return lookup_table_generator_output
    is
    begin
        return sin(2.0*math_pi*input);
    end sine_lookup_table_generator;
------------------------------------------------------------------------
------------------------------------------------------------------------
    function lookup_table_generator
    (
        input : real range 0.0 to 1.0
    )
    return lookup_table_generator_output
    is

    begin
        return sine_lookup_table_generator(input);

    end lookup_table_generator;
------------------------------------------------------------------------

end package body  lookup_table_generator_pkg;
