`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2025 23:50:39
// Design Name: 
// Module Name: PIPO
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


module pipo(clk,clr,d,q);
input[3:0]d;
input clk,clr;
output reg [3:0]q;
always @(posedge clk)
if(clr==1)
q<=4'b0000;
else
q<=d;
endmodule