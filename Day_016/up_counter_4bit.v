`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.04.2025 20:59:41
// Design Name: 
// Module Name: up_counter_4bit
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


module up_counter_4bit (
  input clk,
  input rst,
  output reg [3:0] count
);

  always @(posedge clk) begin
    if (rst)
      count <= 4'b0000;
    else
      count <= count + 1;
  end

endmodule
