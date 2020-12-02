module BR(
    input [31:0] Din,
    input [4:0] RA1,
    input [4:0] RA2,
    input [4:0] WA,
    input RegWrite,
    output reg [31:0] DR1,
    output reg [31:0] DR2

);

//Reg & Wire

reg [31:0] BR [0:31];
// Biendian & little endian (endianess)

initial
begin
    BR[5'd0] = 32'd516;

    //1
    BR[5'd1] = 32'd2682;
    
    //2

    BR[5'd2] = 32'd2583;

    //3
    
    BR[5'd3] = 32'd1859;
    
    //4

    BR[5'd4] = 32'd963;

    //5

    BR[5'd5] = 32'd2747;

    //6

    BR[5'd6] = 32'd689;

    //7

    BR[5'd7] = 32'd917;

    //8

    BR[5'd8] = 32'd718;

    //9

    BR[5'd9] = 32'd731;

    //10

    BR[5'd10] = 32'd3961;

    //11

    BR[5'd11] = 32'd2591;

    //12

    BR[5'd12] = 32'd1029;

    //13

    BR[5'd13] = 32'd3545;

    //14

    BR[5'd14] = 32'd2396;

    //15

    BR[5'd15] = 32'd263;

    //16

    BR[5'd16] = 32'd789;

    //17

    BR[5'd17] = 32'd3397;

    //18

    BR[5'd18] = 32'd677;

    //19

    BR[5'd19] = 32'd0;

    //20

    BR[5'd20] = 32'd1;
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




