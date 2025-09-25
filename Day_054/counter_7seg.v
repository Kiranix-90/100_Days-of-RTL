`timescale 1ns / 1ps
module counter_7seg(clk, reset, seg_out);
input clk, reset;
output [6:0] seg_out;
wire [3:0] count;

counter c1(.clk(clk), .reset(reset), .count(count));
seven_seg_decoder d1(.bin_in(count), .seg_out(seg_out));

endmodule
