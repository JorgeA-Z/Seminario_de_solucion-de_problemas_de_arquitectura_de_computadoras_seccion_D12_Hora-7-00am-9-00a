module ADDERALU(
    input [31:0] a,
    input [31:0] b,
    output reg [31:0] c
);

always@*
begin
    c = a + b;
end

endmodule
