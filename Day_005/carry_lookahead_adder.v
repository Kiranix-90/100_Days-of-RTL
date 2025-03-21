`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.03.2025 22:35:26
// Design Name: 
// Module Name: carry_lookahead_adder
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


module carry_lookahead_adder(
    input [3:0] A,   // 4-bit input A
    input [3:0] B,   // 4-bit input B
    input Cin,       // Carry-in
    output [3:0] sum, // 4-bit sum output
    output carry      // Final carry-out
);

    wire [3:0] G, P, C; // Generate, Propagate, Carry wires

    // Generate (G) and Propagate (P) calculations
    assign G = A & B;  // Carry Generate: Carry is generated when A[i] and B[i] are both 1
    assign P = A ^ B;  // Carry Propagate: Carry is propagated if A[i] or B[i] is 1 (but not both)

    // Carry Lookahead Logic
    assign C[0] = Cin;
    assign C[1] = (P[0] & C[0]) | G[0];
    assign C[2] = (P[1] & C[1]) | G[1];
    assign C[3] = (P[2] & C[2]) | G[2];

    // Sum Calculation
    assign sum = P ^ C[3:0];

    // Final Carry Output
    assign carry = (P[3] & C[3]) | G[3];

endmodule
