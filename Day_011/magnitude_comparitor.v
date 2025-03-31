`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2025 21:25:32
// Design Name: 
// Module Name: magnitude_comparitor
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


module magnitude_comparitor(
	input [3:0] a,b,
	output A_less_B,A_great_B,A_equal_B
);

assign A_great_B = (a>b)?1'b1:1'b0;
assign A_less_B = (a<b)?1'b1:1'b0;
assign A_equal_B = (a==b)?1'b1:1'b0;
endmodule

