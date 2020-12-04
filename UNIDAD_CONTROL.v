module UD(
    input [5:0] Op,
    output reg jump,
    output reg RegDst,
    output reg Branch,
    output reg MemToRead,
    output reg MemToReg,
    output reg [2:0]ALUOp,
    output reg MemToWrite,
    output reg ALUSrc,
    output reg RegWrite );
//Se requiere realizar una serie de cambios para un correcto funcionamiento de este modulo
//Agregar mas Cases para las demas instrucciones
always @* //Lista de sensibilidad
begin
    case(Op)

    6'b000000:
    begin
        RegDst = 1'b1;
        Branch = 1'b0;
        MemToRead = 1'b0;
        MemToReg = 1'b0;
        ALUOp = 3'b001;
        MemToWrite = 1'b0;
        ALUSrc = 1'b0;
        RegWrite = 1'b1;
        jump = 1'b0;
    end

    endcase

end
//Hola mundo
assign a + c + d
endmodule
