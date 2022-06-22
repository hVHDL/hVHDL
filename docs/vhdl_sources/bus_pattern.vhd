
combined_bus <= bus_from_endpoint_2 and bus_from_endpoint_1;


------------------------------------------------------------------------
    function "and"
    (
        left, right : fpga_interconnect_record
    )
    return fpga_interconnect_record
    is
    begin
    return (left.data                           and right.data                          ,
            left.address                        and right.address                       ,
            left.data_write_is_requested_with_0 and right.data_write_is_requested_with_0,
            left.data_read_is_requested_with_0  and right.data_read_is_requested_with_0 );
        
    end "and";
------------------------------------------------------------------------


