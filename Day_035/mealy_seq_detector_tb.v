
`timescale 1ns / 1ps

module tb_mealy_seq_detector;

    reg clk;
    reg reset;
    reg in;
    wire out;

    // Instantiate the module
    mealy_seq_detector uut (
        .clk(clk),
        .reset(reset),
        .in(in),
        .out(out)
    );

    // Clock generation: 10ns period
    always #5 clk = ~clk;

    initial begin
        // Initialize
        clk = 0;
        reset = 1;
        in = 0;

        // Release reset after one cycle
        #10 reset = 0;

        // Input sequence: 1 0 1 1 (should detect 1011)
        #10 in = 1;
        #10 in = 0;
        #10 in = 1;
        #10 in = 1;  // <- detection expected here, out = 1

        // Some gap
        #10 in = 0;
        #10 in = 0;

        // Another 1011 sequence
        #10 in = 1;
        #10 in = 0;
        #10 in = 1;
        #10 in = 1;  // <- another detection

        #20 $finish;
    end

endmodule
