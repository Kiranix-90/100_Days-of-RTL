`timescale 1ns / 1ps
module comparator_tb();
reg[3:0]A,B;
wire AequalB,greater,lesser;
integer i,j;
comparator DUT(.A(A),.B(B),.AequalB(AequalB),.greater(greater),.lesser(lesser));
initial begin 
 A=0;B=0;
end 
initial begin 
for(i=0;i<16;i=i+1)
begin
A=i;
for(j=0;j<16;j=j+1)
begin 
B=j;
#5;
end 
end
$dumpfile("comparator.vcd");
$dumpvars(0,comparator_tb);
$monitor($time,"A=%b,B=%b,AequalB=%b,greater=%b,lesser=%b",A,B,AequalB,greater,lesser);
#200 $finish;
end

endmodule