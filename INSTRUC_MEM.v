module INSTRUC_MEM(
    input [31:0] Datain,
    output [31:0] instruccion 
);

reg [7:0] mem [0:512];

initial
begin
   $readmemh("C:\Modeltech_pe_edu_10.4a\examples\Datapath MIPS\TestF1_MemInst.mem", mem); 
end
assign instruccion = mem[Datain>>2];
endmodule
