`timescale 1ns/1ps

module The_Real_Fokl_Blues();

reg clk1 = 0;

See_you_space_cowboy( .clk_s(clk1));

always #10 clk1 = ~(clk1);

initial
begin
	#5000;
	$stop;
end


endmodule