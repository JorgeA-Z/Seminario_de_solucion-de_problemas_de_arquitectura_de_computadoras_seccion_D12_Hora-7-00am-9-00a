module BR(
    input [31:0] Din,
    input [4:0] RA1,
    input [4:0] RA2,
    input [4:0] WA,
    input RegWrite,
    output reg [31:0] DR1,
    output reg [31:0] DR2

);
//Borrar la inicializacion de los datos

//Reg & Wire

reg [31:0] BR [0:31];
// Biendian & little endian (endianess)
initial
begin
    $readmemh("TestF1_BReg.mem", BR); 
end
always @*
begin

    //if

    DR1=BR[RA1];
    DR2=BR[RA2];
    
    if (RegWrite == 1)
        BR[WA] = Din;
    //leer

end
endmodule




