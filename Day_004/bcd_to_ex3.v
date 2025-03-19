`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2025 22:36:36
// Design Name: 
// Module Name: bcd_to_ex3
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


module bcd_to_ex3(A,B,C,D,W,X,Y,Z);
input A,B,C,D;
output W,X,Y,Z;
assign W=~D;
assign X=(C&D)|(~C&~D);
assign Y=(B&~C&~D)|(~B&C)|(~B&D);
assign Z=(A)|(B&C)|(B&D);
endmodule