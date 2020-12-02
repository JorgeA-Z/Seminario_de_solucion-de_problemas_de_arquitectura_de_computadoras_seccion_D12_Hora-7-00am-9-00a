module Mem(
    input enwr,
    input [31:0] dataIn,
    input [31:0] Dir,
    output reg [31:0] DataOut
);

//Agregar mas espacios en memoria

//Reg & Wire


//Checar este apartado, no estoy seguro de que tanto debo agrandar los espacios en memoria
reg [31:0] BReg [0:31];
// Biendian & little endian (endianess)


always @*
begin

    //if
    if (enwr == 1)
    BReg[Dir] = dataIn;
    else
    DataOut=BReg[Dir];
    //leer

end


endmodule



