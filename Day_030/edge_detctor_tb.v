`timescale 1ns / 1ps
module edge_detector_tb();
reg clk,reset,signal_in;
wire edge_detected;
edge_detector DUT (.clk(clk),.reset(reset),.signal_in(signal_in),.edge_detected(edge_detected));
initial begin 
clk=0;
forever #5 clk=~clk;
end
initial begin 
$dumpfile("edge_detector.vcd");
$dumpvars(0,edge_detector_tb);
$monitor($time,"clk=%b,reset=%b,signal_in=%b,edge_detected=%b",clk,reset,signal_in,edge_detected);
end
initial begin 
reset=1;
#5 reset=0;
 signal_in=0;
#10 signal_in=0;
#10 signal_in=1;
#10 signal_in=1;
#10 signal_in=0;
#10 signal_in=1;
#10 signal_in=0;
#100$finish;
end
endmodule