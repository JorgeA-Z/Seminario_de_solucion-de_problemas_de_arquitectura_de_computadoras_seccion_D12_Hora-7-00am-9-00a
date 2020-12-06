module AluControl(
    input [2:0] ALUOp,
    input [5:0] func,
    output reg [2:0] selec
);

//Realizar cambios en ALUcontrol
always @*
begin
    
    case (ALUOp) 
        
        3'b000:
        begin

            case (func)

            //NOP
            6'd000000:
            begin

                selec = 3'd7;
                
            end

            //add
            6'd32:
            begin

                selec = 3'd0;
                
            end

            //sub
            6'd34:
            begin
                
                selec = 3'd1;

            end
            
            //OR
            6'd37:
            begin

                selec = 3'd2;
                
            end
            //AND
            6'd36:
            begin

                selec = 3'd3;
                
            end
            //slt
            6'd42:
            begin
                
                selec = 3'd4;
                
            end
            
            6'd24:
            begin
                
                selec = 3'd5;
                
            end
            
            6'd26:
            begin
                
                selec = 3'd6;
                
            end
            endcase
            
        end
    
    endcase
    

end





endmodule
