module fsm
  (... ports ...);
  import fsm_pkg::*;
  state_e state;

  always_ff @(posedge clk, negedge rst_n)
    if (!rst_n) begin
      state     <= IDLE;
      <outputs> <= '0;
    end
    else begin
      state <= 'x;
      <outputs> <= '0;
      case (state)
        IDLE: if (go) begin
                rd <= '1;
              end
              else ...
        READ: begin
                rd <= '1;
              end

        ...
      endcase
    end
endmodule
