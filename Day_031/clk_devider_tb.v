`timescale 1ns / 1ps

module clk_divider_tb;

    reg clk;
    reg reset;
    wire clk_out;

    clk_divider uut (
        .clk(clk),
        .reset(reset),
        .clk_out(clk_out)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        reset = 0;
        $dumpfile("clk_divider_tb.vcd");
        $dumpvars(0, clk_divider_tb);
        #12 reset = 1;
        #100;
        #20 reset = 0;
        #20 reset = 1;
        #100;
        $finish;
    end

endmodule
