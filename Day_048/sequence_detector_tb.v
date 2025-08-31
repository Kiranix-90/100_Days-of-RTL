`timescale 1ns / 1ps
module tb_seq_detector_1011;

    reg clk, reset, din;
    wire detect;

    seq_detector_1011 uut (
        .clk(clk),
        .reset(reset),
        .din(din),
        .detect(detect)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // 10ns clock period
    end

    initial begin
        reset = 1; din = 0;
        #12 reset = 0;

        // Input sequence: 1011011
        #10 din=1;
        #10 din=0;
        #10 din=1;
        #10 din=1;  // here 1011 should be detected
        #10 din=0;
        #10 din=1;
        #10 din=1;  // again 1011 detected
        #20 $stop;
    end
endmodule
