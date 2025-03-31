`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2025 22:40:55
// Design Name: 
// Module Name: ShiftAddMultiplier
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


module ShiftAddMultiplier (
    input wire clk,          // Clock signal
    input wire rst,          // Reset signal
    input wire start,        // Start signal
    input wire [3:0] A,      // 4-bit multiplicand
    input wire [3:0] B,      // 4-bit multiplier
    output reg [7:0] Product, // 8-bit product output
    output reg done          // Done signal
);
    reg [7:0] P;  // Partial product register
    reg [3:0] M;  // Multiplicand register
    reg [3:0] Q;  // Multiplier register
    reg [2:0] count; // Counter for 4 iterations

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            P <= 8'b0;
            M <= 4'b0;
            Q <= 4'b0;
            count <= 0;
            done <= 0;
        end else if (start) begin
            P <= 8'b0;
            M <= A;
            Q <= B;
            count <= 0;
            done <= 0;
        end else if (count < 4) begin
            if (Q[0] == 1)  // Add M if LSB of Q is 1
                P[7:4] = P[7:4] + M;
            
            P = P >> 1;  // Right shift
            P[7] = P[6]; // Sign extend
            Q = Q >> 1;
            
            count = count + 1;
        end else begin
            done = 1;
            Product = P;
        end
    end
endmodule
