`timescale 1ns / 1ps
module elevator (
    input clk,
    input reset,
    input req0,   // Request for ground floor
    input req1,   // Request for first floor
    output reg [0:0] floor  // 0 = Ground, 1 = First
);

    always @(posedge clk or posedge reset) begin
        if (reset)
            floor <= 0; // Start at ground floor
        else begin
            case (floor)
                0: if (req1) floor <= 1;
                1: if (req0) floor <= 0;
            endcase
        end
    end

endmodule

