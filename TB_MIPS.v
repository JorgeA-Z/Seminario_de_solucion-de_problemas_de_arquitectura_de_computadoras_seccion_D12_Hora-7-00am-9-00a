`timescale 1ns/1ns
module The_real_folk_blues();
reg clk = 0;

See_you_space_cowboy inst( .clk(clk));

always #50 clk = ~clk;

initial
begin
    @(posedge clk);
    #600;
    $stop;
end
endmodule