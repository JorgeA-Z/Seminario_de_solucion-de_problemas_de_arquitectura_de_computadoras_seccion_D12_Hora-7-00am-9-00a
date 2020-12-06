module See_you_space_cowboy(
    input [31:0] instruccion);


//Hacer revision de las coneciones entre cables, especialmente las de direcciones

wire [4:0] cable1;
wire cable2;
wire [4:0] cable3;
wire cable4;
wire cable5;
wire cable6;
wire [2:0] cable7;
wire cable8;
wire cable9;
wire cable10;
wire cable11;
wire [2:0] cable12;
wire cable13;
wire [31:0] cable14;
wire [31:0] cable15;
wire [31:0] cable16;
wire [31:0] cable17;
wire [31:0] cable18;
wire [31:0] cable19;
wire [31:0] cable20;
wire [31:0] cable21;
wire [31:0] cable22;
wire [31:0] cable23;
wire [31:0] cable24;
wire [31:0] cable25;
wire cable26;
wire [31:0] cable27;
wire [31:0] cable28;
wire [31:0] cable29;
wire [7:0] cable30;
wire [31:0] cable31;
wire [27:0] cable32;

wire [31:0] cable33;
wire [31:0] cable34;
wire [31:0] cable35;

wire [31:0] cable36;
assign cable36 = cable29;
assign cable34 = cable31;
assign cable33 = cable32 + cable34;
assign cable30 = cable29;
assign cable23 = cable17;
assign cable20 = cable19;
assign cable16 = cable15;

assign cable1 = instruccion[20:16];

ALU ins01( .a(cable14), .b(cable18), .s(cable12), .zf(cable13), .z(cable19) );

BR ins02(  .Din(cable22),  .RA1( instruccion[25:21] ),  .RA2( instruccion[20:16] ), .WA(cable3), .RegWrite(cable10),  .DR1(cable14),  .DR2(cable15) );

UD ins03( .Op( instruccion[31:26] ), .jump(cable11), .RegDst(cable2), .Branch(cable4), .MemToRead(cable5), .MemToReg(cable6), .ALUOp(cable7), .MemToWrite(cable8), .ALUSrc(cable9), .RegWrite(cable10) );

AluControl ins04( .ALUOp(cable7),  .func(instruccion[5:0]), .selec(cable12) );

Mux2_1_32 ins05( .a(cable21), .b(cable20), .selec(cable6), .res(cable22) );

Mem ins06( .enwr(cable8), .MemToRead(cable5), .dataIn(cable16),  .Dir(cable19), .DataOut(cable21) );

BR_EXTEND_SIGN_Mux2_1 inst07( .a(cable15), .b(cable17), .selec(cable9), .res(cable18) );

RS_RD_Mux2_1 inst08( .a(cable1), .b(instruccion[15:11]), .selec(cable2), .res(cable3) );

ADDER1Mux2_1_32 inst09( .a(cable31), .b(cable25), .selec(cable26), .res(cable27) );

ADDER2Mux2_1_32 inst10( .a(cable33), .b(cable27), .selec(cable11), .res(cable28) );

adder inst11( .a(cable30), .c(cable31) );

ADDERALU inst12( .a(cable36), .b(cable24), .c(cable25) );

Shift_left_2ADDER inst13( .a(instruccion[25:0]), .b(cable32) );

Shift_left_2 inst14( .a(cable23), .b(cable24) );

BRANCH inst15( .a(cable4), .b(cable13), .c(cable26));

SING_EX inst16( .a(instruccion[15:0]), .b(cable17) );

INSTRUC_MEM inst17( .Datain(cable29), .instruccion(instruccion[31:0]) );

PC inst18( .a(cable28), .b(cable29) );
endmodule
