module INSTRUC_MEM(
    input [7:0] Datain,
    output [31:0] instruccion 
);

reg [31:0] IN [0:512];

initial
begin
    $readmemh("TestF1_MemInst.mem", IN); 
end
assign instruction = IN[Datain[7:0]];
endmodule
