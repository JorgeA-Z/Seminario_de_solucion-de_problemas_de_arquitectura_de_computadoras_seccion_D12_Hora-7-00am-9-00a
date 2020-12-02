module NM(
    input [31:0] Din,
    input [5:0] RA1,
    input [5:0] RA2,
    input [5:0] WA,
    input RegWrite,
    input [5:0] Dir,
    input enwr,
    input  [3:0] s,
    output [31:0] DataOut,
    output zf);
// Cables 

wire [31:0] cable_1;
wire [31:0] cable_2;
wire [31:0] cable_3;

// Instancia ALU 

ALU ins01( .a(cable_1), .b(cable_2), .z(cable_3), .zf(zf), .s(s) );

// Instancia Memoria 

Mem ins02( .dataIn(cable_3), .Dir(Dir), .DataOut(DataOut), .enwr(enwr) );

// Instancia Banco de registros

/* NOTAS: REALIZAR CAMBIOS AQUÍ PARA HACER LAS CONEXIONES PERTINENTES */
BR ins03(.Din(Din), .RA1(RA1), .RA2(RA2), .WA(WA), .RegWrite(RegWrite), .DR1(cable_1), .DR2(cable_2) );

endmodule

