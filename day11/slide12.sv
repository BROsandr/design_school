always_comb
    begin
        next_state = state;
        case (state)
        S0: if (~ a) next_state = S1;
        S1: if (  a) next_state = S2;
        // S2: next_state = a ? S0 : S1;
        S2: if (a)
                    next_state = S0;
                else
                    next_state = S1;
        endcase
    end
    // Output logic based on current state
    assign y = (state == S2);
