`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2025 21:02:40
// Design Name: 
// Module Name: jk_flip_flop_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module jk_ff_tb;

reg j,k,clk=0;
wire q,qbar;
jk_ff DUT(.j(j),.k(k),.clk(clk),.q(q),.qbar(qbar));

always #5  clk=~clk;
initial 
begin 
$dumpfile("jk_ff.vcd");
$dumpvars(0,jk_ff_tb);
$monitor($time,"j=%b,k=%b,q=%b,qbar=%b",j,k,q,qbar);


#20 j<=0;k<=0;
#20 j<=0;k<=1;
#20 j<=1;k<=0;
#20 j<=1;k<=1;

#20 $finish;
end
endmodule