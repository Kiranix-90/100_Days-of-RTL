`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.05.2025 21:22:01
// Design Name: 
// Module Name: PISO
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


module piso(clk, clr, load, d, q);
input clk, clr, load;
input [3:0] d;
output reg q;
reg [3:0] temp;

always @(posedge clk)
if(clr == 1)
    temp <= 4'b0000;
else if(load == 1)
    temp <= d;
else begin
    q <= temp[3];
    temp <= temp << 1;
end
endmodule
