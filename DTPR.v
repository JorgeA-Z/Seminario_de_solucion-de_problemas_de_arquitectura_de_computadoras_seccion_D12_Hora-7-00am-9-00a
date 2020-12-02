module See_you_space_cowboy(
    input [31:0] instruccion,
    output zf);

wire cable1;
wire cable2;
wire cable3;
wire [2:0] cable4;
wire [3:0] cable5;
wire [31:0] cable6;
wire [31:0] cable7;
wire [31:0] cable8;
wire [31:0] cable9;
wire [31:0] cable10;
wire [31:0] cable11;
wire [4:0] cable12;

//Hacer revision de las coneciones entre cables, especialmente las de direcciones

assign cable9 = cable8;

assign cable12 = instruccion[15:11];

ALU ins01( .a(cable6), .b(cable7), .s(cable5), .zf(zf), .z(cable8) );

BR ins02(  .Din(cable11),  .RA1( instruccion[25:21] ),  .RA2( instruccion[20:16] ), .WA( instruccion[15:11] ), .RegWrite(cable1),  .DR1(cable6),  .DR2(cable7) );

UD ins03( .Op( instruccion[31:26] ), .MemToReg( cable2 ), .MemToWrite(cable3), .RegWrite(cable1), .ALUOp(cable4) );

AluControl ins04( .ALUOp(cable4),  .func( instruccion[5:0] ), .selec(cable5) );

Mux2_1_32 ins05( .a(cable10), .b(cable8), .selec( cable2 ), .res(cable11) );

Mem ins06( .enwr(cable3), .dataIn(cable9),  .Dir(cable12), .DataOut(cable10) );


endmodule
