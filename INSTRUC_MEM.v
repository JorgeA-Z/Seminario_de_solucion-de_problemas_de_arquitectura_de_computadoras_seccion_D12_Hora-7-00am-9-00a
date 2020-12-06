module INSTRUC_MEM(
    input [31:0] Datain,
    output reg [31:0] instruccion 
);

reg [31:0] IN [0:512];

initial
begin
    $readmemh("TestF1_MemInst.mem", IN); 
end
always @*
begin
    
    instruccion <= {IN[Datain], IN[Datain+1], IN[Datain+2], IN[Datain+3] };
    
end

endmodule
