`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2025 22:26:42
// Design Name: 
// Module Name: decoder_3to8
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


module decoder_3to8(A,B,C,G0,G1,G2,G3,G4,G5,G6,G7);
input[2:0]A,B,C;
output G0,G1,G2,G3,G4,G5,G6,G7;
assign G0=(~A&~B&~C);
assign G1=(~A&~B&C);
assign G2=(~A&B&~C);
assign G3=(~A&B&C);
assign G4=(A&~B&~C);
assign G5=(A&~B&C);
assign G6=(A&B&~C);
assign G7=(A&B&C);
endmodule