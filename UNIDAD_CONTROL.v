module UD(
    input [5:0] Op,
    output reg MemToReg,
    output reg MemToWrite,
    output reg RegWrite,
    output reg [2:0]ALUOp
);
//Se requiere realizar una serie de cambios para un correcto funcionamiento de este modulo
//Agregar mas Cases para las demas instrucciones
always @* //Lista de sensibilidad
begin
    case(Op)

    6'b000000:
    begin
        MemToReg = 1'b1;
        MemToWrite = 1'b0;
        RegWrite = 1'b1;
        ALUOp = 3'b000;
    end

    endcase

end

endmodule
