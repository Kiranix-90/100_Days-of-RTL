`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.02.2025 21:38:14
// Design Name: 
// Module Name: basic_gates
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


module basic_gates(
    input a,b,
    output reg out_and,out_or,out_nand, out_nor,out_xor, out_xnor);
    always @(*) begin
    out_and = a&b;
    out_or = a|b;
    out_nand = ~(a&b);
     out_nor = ~(a|b);
     out_xor = a^b;     
     out_xnor = ~(a^b);
         end
endmodule
