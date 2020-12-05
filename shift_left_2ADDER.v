module Shift_left_2ADDER(
    input [25:0] a,
    output [27:0] b
);

assign b = a << 2;

endmodule

