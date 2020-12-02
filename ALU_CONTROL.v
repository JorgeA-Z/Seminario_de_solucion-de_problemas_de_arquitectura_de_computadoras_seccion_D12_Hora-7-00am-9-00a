module AluControl(
    input [2:0] ALUOp,
    input [5:0] func,
    output reg [3:0] selec
);

//Realizar cambios en ALUcontrol
always @*
begin
    
    if (ALUOp == 3'b000) begin

        case (func)
        
        //add
        6'd32:
        begin

            selec = 4'd0;
            
        end

        //sub
        6'd34:
        begin
            
            selec = 4'd1;

        end
        
        //OR
        6'd37:
        begin

            selec = 4'd2;
            
        end
        //AND
        6'd36:
        begin

            selec = 4'd3;
            
        end
        //slt
        6'd42:
        begin
            
            selec = 4'd4;
            
        end
        endcase
    end
    

end





endmodule
