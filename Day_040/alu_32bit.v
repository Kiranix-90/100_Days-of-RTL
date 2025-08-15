`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.05.2025 13:49:28
// Design Name: 
// Module Name: alu_32bit
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

`timescale 1ns / 1ps
module alu_4bit (
    input [3:0] a,
    input [3:0] b,
    input [2:0] s,
    output reg [7:0] y
);

always @(s or a or b) begin
    case (s)
        3'd0: y = {4'b0000, (a + b)};     // ADD
        3'd1: y = {4'b0000, (a - b)};     // SUB
        3'd2: y = {4'b0000, (a & b)};     // AND
        3'd3: y = {4'b0000, ~(a & b)};    // NAND
        3'd4: y = {4'b0000, (a | b)};     // OR
        3'd5: y = {4'b0000, ~(a | b)};    // NOR
        3'd6: y = {4'b0000, (a ^ b)};     // XOR
        3'd7: y = {4'b0000, ~(a ^ b)};    // XNOR
        default: y = 8'd0;
    endcase
end

endmodule

