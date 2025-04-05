`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2025 20:57:16
// Design Name: 
// Module Name: jk_flip_flop
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


module jk_ff(j,k,clk,q,qbar);
input j,k,clk;
output reg q=0;
output qbar;
always @(posedge clk)

case ({j,k})
2'b00 : q <= q;
2'b01 : q <= 0;
2'b10 : q <= 1;
2'b11 : q <= ~q;
endcase 


assign qbar=~q;
endmodule