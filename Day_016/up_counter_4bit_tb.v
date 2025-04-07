`timescale 1ns / 1ps

module up_counter_4bit_tb;

  reg clk = 0, rst;
  wire [3:0] count;

  // Instantiate the DUT
  up_counter_4bit DUT (
    .clk(clk),
    .rst(rst),
    .count(count)
  );

  // Clock generation: 10ns period (100 MHz)
  always #5 clk = ~clk;

  initial begin
    $dumpfile("up_counter_4bit.vcd");
    $dumpvars(0, up_counter_4bit_tb);
    $monitor($time, " clk=%b, rst=%b, count=%b", clk, rst, count);

    // Initial reset
    rst = 1;
    #10;

    rst = 0; // Release reset
    #150;

    rst = 1; // Apply reset again
    #10;

    rst = 0;
    #50;

    $finish;
  end

endmodule
