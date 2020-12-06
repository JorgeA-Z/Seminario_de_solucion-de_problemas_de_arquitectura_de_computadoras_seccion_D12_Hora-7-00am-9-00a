module BRANCH(
    input a,
    input b,
    output reg c);

always@*
begin
    c = a & b;
end
endmodule

