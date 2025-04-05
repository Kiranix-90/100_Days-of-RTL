`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2025 20:47:39
// Design Name: 
// Module Name: sr_flip_flop
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


module sr_flip_flop(S,R,clk,Q,Qbar);
input S,R,clk;
output Q,Qbar;
wire n3,n4;


nand A(n3,S,clk); 
nand B(n4,R,clk);
nand C(Q,n3,Qbar);
nand D(Qbar,n4,Q);
endmodule