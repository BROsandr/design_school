logic [1:0] state;
always_ff @(posedge CLK) begin
  if (rst)
    state <= 2'd0;
  else begin
    case (state)
      2'd0: if (in == 1'b1) state <= 2'd2;
            else state <= 2'd1;
      2'd1: if (in == 1'b1) state <= 2'd3;
            else state <= 2'd2;
      ...
    endcase
  end
end
