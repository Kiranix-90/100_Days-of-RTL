`timescale 1ns / 1ps
module elevator_tb;

    reg clk, reset;
    reg req0, req1;
    wire floor;

    elevator uut (
        .clk(clk),
        .reset(reset),
        .req0(req0),
        .req1(req1),
        .floor(floor)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 10 ns clock
    end

    initial begin
        reset = 1;
        req0 = 0; req1 = 0;
        #10 reset = 0;

        // Move to first floor
        #10 req1 = 1; #10 req1 = 0;

        // Wait, then move to ground
        #30 req0 = 1; #10 req0 = 0;

        #50 $finish;
    end

endmodule
