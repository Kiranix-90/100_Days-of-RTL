`timescale 1ns / 1ps

module edge_detector(clk,reset,signal_in,edge_detected);
input clk,reset,signal_in;
output reg edge_detected;
reg prev_signal_in;
always @(posedge clk) begin
if (reset) begin 
prev_signal_in <= 0;
edge_detected <=0;
end 
else begin 
edge_detected <= (~prev_signal_in & signal_in);
prev_signal_in <= signal_in;
end 
end
endmodule
