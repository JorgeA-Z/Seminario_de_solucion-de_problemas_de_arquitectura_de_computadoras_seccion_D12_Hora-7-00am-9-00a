module PC(
    input [31:0] a,
    input clk,

    output reg [31:0] b 
);
always@*
begin
    b = a;
end
endmodule