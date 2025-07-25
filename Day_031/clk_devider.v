`timescale 1ns / 1ps
module clk_divider(clk,reset,clk_out);
input clk,reset;
output  clk_out;
reg q;
always @(posedge clk)

if(!reset)
q <= 1'b0;
else 
q <=~q;
assign clk_out=q;
endmodule