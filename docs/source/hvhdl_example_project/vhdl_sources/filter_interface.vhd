
package example_filter_entity_pkg is

    type example_filter_input_record is record
        filter_is_requested : boolean;
        filter_input        : integer;
    end record;

    constant init_example_filter_input : example_filter_input_record := (false, 0);

--------------------------------------------------
    procedure init_example_filter (
        signal example_filter_input : out example_filter_input_record);

--------------------------------------------------
    procedure request_example_filter (
        signal example_filter_input : out example_filter_input_record;
        data : in integer);
--------------------------------------------------
end package example_filter_entity_pkg;

------------------------------------------------------------------------
------------------------------------------------------------------------
library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

    use work.fpga_interconnect_pkg.all;

    use work.example_filter_entity_pkg.all;

entity example_filter_entity is
    generic(filter_time_constant : real);
    port (
        clock : in std_logic;
        example_filter_input : in example_filter_input_record;
        bus_in              : in fpga_interconnect_record;
        bus_out             : out fpga_interconnect_record
    );
end entity example_filter_entity;
