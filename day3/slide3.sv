module fsm
  (... ports ...);
  import fsm_pkg::*;
  state_e state, next;

  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) state <= IDLE;
    else        state <= next;
  end

  always_comb begin
    next = 'x;
    case (state)
      IDLE: if (go) next = READ;
            else    next = IDLE;
      READ:         next = DLY;
      ...
    endcase
  end

  always_ff @(posedge clk or negedge rst_n)
    if (!rst_n) begin
      rd <= '0;
      ds <= '0;
    end
    else begin
      rd <= '0;
      ds <= '0;
      case (next)
        READ: rd <= '1;
        ...
      endcase
    end
endmodule
