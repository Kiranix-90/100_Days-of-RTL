`timescale 1ns / 1ps
module top_module (
    input clk,
    input reset,
    input load,
    input [7:0] B,        // External input operand
    input [2:0] opcode,   // ALU operation selector
    output [7:0] ACC      // Accumulator output
);

wire [7:0] alu_result;
wire [7:0] acc_out;

// ALU instance
alu u_alu (
    .A(acc_out),
    .B(B),
    .opcode(opcode),
    .result(alu_result)
);

// Accumulator instance
accumulator u_accumulator (
    .clk(clk),
    .reset(reset),
    .load(load),
    .data_in(alu_result),
    .data_out(acc_out)
);

assign ACC = acc_out;

endmodule

