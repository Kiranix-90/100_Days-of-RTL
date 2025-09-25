`timescale 1ns / 1ps
`timescale 1ns/1ps
module tb_counter_7seg;
reg clk, reset;
wire [6:0] seg_out;

counter_7seg uut(.clk(clk), .reset(reset), .seg_out(seg_out));

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    reset = 1;
    #10 reset = 0;
    #200 $finish;
end
endmodule

