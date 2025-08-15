`timescale 1ns / 1ps
module alu_8bit (
    input  [7:0] A,
    input  [7:0] B,
    input  [2:0] ALU_Sel,
    output reg [7:0] ALU_Out,
    output reg Zero
);

always @(*) begin
    case (ALU_Sel)
        3'b000: ALU_Out = A & B;
        3'b001: ALU_Out = A | B;
        3'b010: ALU_Out = A + B;
        3'b011: ALU_Out = A - B;
        3'b100: ALU_Out = A ^ B;
        3'b101: ALU_Out = (A < B) ? 8'b1 : 8'b0;
        default: ALU_Out = 8'b00000000;
    endcase
    Zero = (ALU_Out == 8'b00000000) ? 1'b1 : 1'b0;
end

endmodule

