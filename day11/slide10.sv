always_comb
    begin
        next_state = state;
        case (state)
        S0: if (~ a) next_state = S1;
        S1: if (  a) next_state = S0;
        endcase
    end
    // Output logic based on current state and inputs
    assign y = (a & state == S1);
