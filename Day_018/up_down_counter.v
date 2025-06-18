`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2025 10:02:18
// Design Name: 
// Module Name: up_down_counter
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


module up_down_counter(mode,clock,clr,count);
input mode,clock,clr;

output reg[7:0] count;
always @(posedge clock)
begin 

if(clr)
count<=0;
else if(mode)
count<=count +1;
else
count<=count -1;
end
endmodule