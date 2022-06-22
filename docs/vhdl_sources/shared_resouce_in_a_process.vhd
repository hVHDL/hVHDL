CASE multiplier_counter is
    WHEN 0 =>
        multiply(multiplier, filter_input, b0);
        multiplier_counter <= multiplier_counter + 1;
    WHEN 1 =>
        multiply(multiplier, filter_input, b1);
        multiplier_counter <= multiplier_counter + 1;
    WHEN others => -- do nohting
end CASE;
