`timescale 1ns / 1ps
module mealy_seq_detector(
    input clk,
    input reset,
    input in,
    output reg out
);

    // State encoding
    parameter S0 = 2'b00;
    parameter S1 = 2'b01;
    parameter S2 = 2'b10;
    parameter S3 = 2'b11;

    reg [1:0] state, next_state;

    always @(posedge clk or posedge reset) begin
        if (reset)
            state <= S0;
        else
            state <= next_state;
    end

    always @(*) begin
        next_state = state;
        out = 0;

        case (state)
            S0: if (in) next_state = S1;
            S1: next_state = in ? S1 : S2;
            S2: next_state = in ? S3 : S0;
            S3: begin
                next_state = in ? S1 : S2;
                if (in) out = 1;
            end
        endcase
    end

endmodule

