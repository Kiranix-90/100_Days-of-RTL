`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2025 07:31:55
// Design Name: 
// Module Name: t_flip_flop
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


module t_ff(t,clk,q,qbar );
input t,clk;
output reg q=0;
output qbar;
always @(posedge clk)
if (t==1)
   q=~q;
else
   q = q;

assign qbar=~q;
endmodule