`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.04.2025 20:28:56
// Design Name: 
// Module Name: up_counter_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////



module up_counter_tb;

  reg clk, rst;
  wire [2:0] count;

  // Instantiate the DUT
  up_counter uut (
    .clk(clk),
    .rst(rst),
    .count(count)
  );

  // Generate clock
  always #5 clk = ~clk;

  initial begin
    clk = 0; rst = 1;
    #10 rst = 0;
    #100 $stop;
  end

endmodule
