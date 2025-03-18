`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2025 22:48:28
// Design Name: 
// Module Name: binary_to_gray
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


 module binary_to_gray(A,B,C,D,G3,G2,G1,G0);
input A,B,C,D;
output G3,G2,G1,G0;

assign G3=A;
assign G2=A^B;
assign G1=A^B^C;
assign G0=A^B^C^D;
endmodule