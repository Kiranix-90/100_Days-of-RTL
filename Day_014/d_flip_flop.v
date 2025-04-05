`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2025 07:25:31
// Design Name: 
// Module Name: d_flip_flop
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


module d_ff(d,clk,q,qbar);
input d,clk;
output reg q=0;
output qbar;
always  @(posedge clk)
case(d)
1'b0 : q<=1'b0;
1'b1 : q<=1'b1;
endcase
assign qbar =~q;
endmodule