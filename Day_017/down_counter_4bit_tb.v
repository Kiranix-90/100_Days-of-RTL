`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.04.2025 17:38:25
// Design Name: 
// Module Name: down_counter_4bit_tb
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


`timescale 1ns / 1ps

module down_counter_4bit_tb;

  reg clk = 0, rst;
  wire [3:0] count;

  down_counter_4bit DUT (
    .clk(clk),
    .rst(rst),
    .count(count)
  );

  always #5 clk = ~clk;

  initial begin
    $dumpfile("down_counter_4bit.vcd");
    $dumpvars(0, down_counter_4bit_tb);
    $monitor($time, " clk=%b, rst=%b, count=%d", clk, rst, count);

    rst = 1;
    #10;

    rst = 0;
    #160;

    $display("Done counting down to 0. Ending simulation.");
    $finish;
  end

endmodule
