`timescale 1ns / 1ps
module tb_lfsr_8bit;
    reg clk, rst;
    wire [7:0] q;

    lfsr_8bit uut (.clk(clk), .rst(rst), .q(q));

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        rst = 1;
        #10 rst = 0;
        #200 $stop;
    end

    initial begin
        $monitor("Time=%0t q=%b", $time, q);
    end
endmodule

