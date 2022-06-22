    procedure count_down_from
    (
        signal downcounter : inout integer;
        counter_is_ready : boolean;
        max_value_for_counter : integer
    ) is
    begin
        if downcounter > 0 then
            downcounter <= downcounter - 1;
        end if;

        if downcounter = 1 then
            counter_is_ready <= true;
        else
            counter_is_ready <= false;
        end if;
        
    end count_down_from;
