`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2025 07:26:23
// Design Name: 
// Module Name: d_flip_flop_tb
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


module d_ff_tb;
reg d,clk=0;
wire q,qbar;
d_ff DUT (d,clk,q,qbar);
always #5 clk=~clk;
initial 
begin  
$dumpfile("d_ff.vcd");
$dumpvars(0,d_ff_tb);
$monitor($time,"d=%b,q=%b,qbar=%b",d,q,qbar);
#10 d<=0;
#10 d<=1;
#100 $finish;
end
endmodule