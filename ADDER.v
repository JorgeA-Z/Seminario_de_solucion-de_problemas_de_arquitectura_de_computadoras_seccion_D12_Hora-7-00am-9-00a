module adder(
    input [7:0] a,
    input [7:0] b,
    output reg [31:0] c);

always@*
begin
    c = a + b;
end
endmodule