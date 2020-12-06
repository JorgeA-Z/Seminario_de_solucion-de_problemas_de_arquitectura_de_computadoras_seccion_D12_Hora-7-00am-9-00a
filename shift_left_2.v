module Shift_left_2(
    input [31:0] a,
    output reg [31:0] b
);

always@*
begin
    b = a << 2;
end

endmodule
