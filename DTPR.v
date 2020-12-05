module See_you_space_cowboy(
    input [31:0] instruccion);


//Hacer revision de las coneciones entre cables, especialmente las de direcciones



ALU ins01( .a( ), .b( ), .s( ), .zf( ), .z( ) );

BR ins02(  .Din( ),  .RA1( instruccion[25:21] ),  .RA2( instruccion[20:16] ), .WA( instruccion[15:11] ), .RegWrite( ),  .DR1( ),  .DR2( ) );

UD ins03( .Op( instruccion[31:26] ), .MemToReg(  ), .MemToWrite( ), .RegWrite( ), .ALUOp( ) );

AluControl ins04( .ALUOp( ),  .func( instruccion[5:0] ), .selec( ) );

Mux2_1_32 ins05( .a( ), .b( ), .selec( ), .res( ) );

Mem ins06( .enwr( ), .dataIn( ),  .Dir( ), .DataOut( ) );

BR_EXTEND_SIGN_Mux2_1 inst07( .a( ), .b( ), .selec( ), .res( ) );

RS_RD_Mux2_1 inst08( .a( ), .b( ), .selec( ), .res( ) );

ADDER1Mux2_1_32 inst09( .a( ), .b( ), .selec( ), .res( ) );

ADDER2Mux2_1_32 inst10( .a( ), .b( ), .selec( ), .res( ) );

adder inst11( .a( ), .b( ), .c( ) );

ADDERALU inst12( .a( ), .b( ), .c( ) );

Shift_left_2ADDER inst13( .a( ), .b( ) );

Shift_left_2A inst14( .a( ), .b( ) );

BRANCH inst15( .a( ), .b( ), .c( ));

SING_EX inst16( .a( ), .b( ) );
endmodule
