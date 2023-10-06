always_ff @(posedge clk, negedge rst_n) begin
  // testbad <= go;          // The statements in this always block are ourside the scope of the
                             //   synthesis policy. Only if statement is allowed at the top level in
                             //   this always block.
  if (!rst_n) state <= IDLE;
  else        state <= next;
end
