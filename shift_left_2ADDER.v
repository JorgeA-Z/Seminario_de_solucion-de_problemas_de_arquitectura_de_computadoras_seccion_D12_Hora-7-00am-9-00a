module Shift_left_2ADDER(
    input [25:0] a,
    output reg [27:0] b
);

always@*
begin
    b = a << 2;
end

endmodule

