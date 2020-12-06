module INSTRUC_MEM(
    input [31:0] Datain,
    output reg [31:0] instruccion 
);

reg [7:0] IN [0:512];

always @(*)
begin
    
    instruccion <= {IN[Datain], IN[Datain+1], IN[Datain+2], IN[Datain+3] };
    
end
initial
begin
    $readmemb("TestF1_MemInst.mem", IN); 
end

endmodule
