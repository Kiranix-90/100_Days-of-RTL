`timescale 1ns / 1ps
module lfsr_8bit(
    input clk,
    input rst,
    output reg [7:0] q
);
    wire feedback;
    assign feedback = q[7] ^ q[5] ^ q[4] ^ q[3];

    always @(posedge clk or posedge rst) begin
        if (rst)
            q <= 8'hAA;
        else
            q <= {q[6:0], feedback};
    end
endmodule
