`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.02.2025 21:47:22
// Design Name: 
// Module Name: basic_gates_tb
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


module basic_gates_tb;
 reg a,b;                                                     
 wire out_and ,out_or,out_nand , out_nor ,out_xor, out_xnor; 
 basic_gates DUT (a,b,out_and,out_or,out_nand, out_nor,out_xor, out_xnor);
 initial begin
  #10 a = 1'b0; b = 1'b0;
  #10 a = 1'b0; b = 1'b1;
  #10 a = 1'b1; b = 1'b0;
  #10 a = 1'b1; b = 1'b1;
end
endmodule
