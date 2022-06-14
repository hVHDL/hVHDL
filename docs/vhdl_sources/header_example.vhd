    if ethernet_rx_is_active(ethernet_rx_ddio_data_out) then
        capture_ethernet_frame(ethernet_rx, ethernet_rx_ddio_data_out); 
    end if;
