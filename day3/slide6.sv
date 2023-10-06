always_comb begin
  next = 'x;
  case (state)
    IDLE: if (go)  next = READ;
          else     next = IDLE; // @loopback
    READ:          next = DLY;
    DLY : if (!ws) next = DONE;
          else     next = READ;
    DONE:          next = IDLE;
    default:       next = 'x;
  endcase
end

always_comb begin
  next = 'x;
  case (state)
    IDLE: if (go) next = READ;
          else next = IDLE; // @loopback
    READ: next = DLY;
    DLY : if (!ws) next = DONE;
          else next = READ;
    DONE: next = IDLE;
    default: next = 'x;
  endcase
end
