`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.04.2025 17:36:24
// Design Name: 
// Module Name: down_counter_4bit
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


module down_counter_4bit (
  input clk,
  input rst,
  output reg [3:0] count
);

  always @(posedge clk) begin
    if (rst)
      count <= 4'b1111;
    else if (count > 0)
      count <= count - 1;
  end

endmodule
