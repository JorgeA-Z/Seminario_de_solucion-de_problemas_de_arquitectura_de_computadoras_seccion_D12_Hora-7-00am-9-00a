module SING_EX(
    input [15:0] a,
    output reg [31:0] b
);


always @*
begin
    if([15]a == 1'b0) 
    begin
        b = {16'b0000000000000000, [15:0] a}
    end

    else
    begin
        b = {16'b1111111111111111, [15:0] a} 
    end

end
endmodule
