API
===

.. autosummary::
   :toctree: generated

The repositories are developed as independently as possible as long as there is no need to repeat code. To add a repository to your project, use of submodules is recommended. To add the fixed point math library as submodule into your project, use

.. code-block:: vhdl
    procedure create_multiplier (
        signal multiplier : inout multiplier_record);
        
    procedure multiply_and_get_result (
        signal multiplier : inout multiplier_record;
        radix : natural range 0 to output_word_bit_width;
        signal result : out integer;
        left, right : integer) ; 
        
    procedure multiply (
        signal multiplier : inout multiplier_record;
        data_a : in integer;
        data_b : in integer);
        
    function get_multiplier_result (
        multiplier : multiplier_record;
        radix : natural range 0 to output_word_bit_width) 
    return integer ;
    
    function multiplier_is_ready (
        multiplier : multiplier_record)
    return boolean;
   
this is a test
