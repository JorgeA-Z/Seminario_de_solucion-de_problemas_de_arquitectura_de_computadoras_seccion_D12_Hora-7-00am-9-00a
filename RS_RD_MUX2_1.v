module RS_RD_Mux2_1(
    input [4:0] a,
    input [4:0] b,
    input selec,
    output reg [4:0] res
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


