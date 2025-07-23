`timescale 1ns / 1ps
module random_expression(
    input A,
    input B,
    input C,
    input D,
    output Y
    );
    
    assign Y = (~A & B) | (C & ~D) | (A & ~B & D);
endmodule

