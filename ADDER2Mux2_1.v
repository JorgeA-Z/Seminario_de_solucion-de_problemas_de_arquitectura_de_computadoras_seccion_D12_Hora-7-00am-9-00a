module ADDER2Mux2_1_32(
    input [31:0] a,
    input [31:0] b,
    input selec,
    output reg [31:0] res
);

always @*
begin
    
    case (selec)

    1'b0:
    begin
        res = a;
        
    end

    1'b1:
    begin
        res = b;
    end
    endcase

end
endmodule

