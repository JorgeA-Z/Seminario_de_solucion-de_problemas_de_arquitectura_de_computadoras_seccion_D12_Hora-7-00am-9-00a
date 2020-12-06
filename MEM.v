module Mem(
    input enwr,
    input MemToRead,
    input [31:0] dataIn,
    input [31:0] Dir,
    output reg [31:0] DataOut
);

//Agregar mas espacios en memoria

//Reg & Wire


reg [7:0] BReg [0:512];
// Biendian & little endian (endianess)


always @*
begin

    //if
    if (enwr == 1)begin
        BReg[Dir] = dataIn;
    end

    if(MemToRead == 1) begin
        DataOut=BReg[Dir];
    end
    //leer

end


endmodule



