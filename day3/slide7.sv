always_comb begin
  next = 'x;                    // next = 'x requires loopback state assignment
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
  next = state;                    // next = state requires NO loopback state assignment
  case (state)
    IDLE: if (go)  next = READ;

    READ:          next = DLY;
    DLY : if (!ws) next = DONE;
          else     next = READ;
    DONE:          next = IDLE;
    default:       next = 'x;
  endcase
end
