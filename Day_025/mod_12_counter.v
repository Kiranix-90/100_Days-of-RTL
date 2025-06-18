`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2025 15:24:25
// Design Name: 
// Module Name: mod_12_counter
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


module mod_counter(clk,reset,count);
input clk,reset;
output reg[3:0]count;
always@(posedge clk or posedge reset)
begin 
if(reset)
begin 
count<=4'b0000;
end 
else if(count == 4'b1011)
begin
count<=4'b0000;
end
else 
begin 
count<=count+1;
end 
end

endmodule