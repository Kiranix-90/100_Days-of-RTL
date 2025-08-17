`timescale 1ns / 1ps
// alu.v
module alu (
    input  [7:0] A,         // Operand A
    input  [7:0] B,         // Operand B
    input  [2:0] opcode,    // Operation selector
    output reg [7:0] result // ALU result
);

always @(*) begin
    case (opcode)
        3'b000: result = A + B;        // ADD
        3'b001: result = A - B;        // SUB
        3'b010: result = A & B;        // AND
        3'b011: result = A | B;        // OR
        3'b100: result = ~A;           // NOT (A only)
        3'b101: result = A ^ B;        // XOR
        default: result = 8'b0;
    endcase
end

endmodule

