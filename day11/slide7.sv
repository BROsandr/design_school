snail_moore_fsm i_moore_fsm
        (.en (enable), .a (fsm_in), .y (moore_fsm_out), .*);
     snail_mealy_fsm i_mealy_fsm
        (.en (enable), .a (fsm_in), .y (mealy_fsm_out), .*);

    always_comb
    begin
        case ({ mealy_fsm_out, moore_fsm_out })
        2'b00: abcdefgh = 8'b0000_0000;
        2'b01: abcdefgh = 8'b1100_0110;  // Moore only
        2'b10: abcdefgh = 8'b0011_1010;  // Mealy only
        2'b11: abcdefgh = 8'b1111_1110;
        endcase
        digit = w_digit' (1);
    end
