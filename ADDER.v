module adder(
    input [31:0] a,
    input [2:0] b,
    output [31:0] c);


assign b = 3'b100;

assign c = a + b;
endmodule