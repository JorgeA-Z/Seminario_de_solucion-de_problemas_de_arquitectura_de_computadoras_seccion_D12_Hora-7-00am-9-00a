module ALU(
    input [31:0] a, b,
    input  [2:0] s, //4bit
    output reg zf,
    output reg [31:0] z
);



always @* //Lista de sensibilidad
begin

    case (s)

    3'd0:
    begin

        z = a + b;

    end
    
    3'd1:
    begin

        z = a - b;

    end
    
    3'd2:
    begin

        z = a & b;

    end
    
    3'd3:
    begin

        z = a | b;


    end
    
    3'd4:
    begin

        if (a < b) begin

            z = 32'd1;

        end else begin

            z = 32'd0;
        end
        
    end
    
    3'd5:
    begin

        z = a * b;


    end
    
    3'd6:
    begin

        z = a / b;
    
    end
    
    3'd7:
    begin

        z = a << 5'd0;
    
    end
    
    endcase

    if (z != 1) begin
        
        zf = 1'b0;
        
    end else begin
        
        zf  = 1'b1;
        
    end

    //leer
    
end



endmodule




