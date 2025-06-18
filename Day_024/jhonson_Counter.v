`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.06.2025 11:10:53
// Design Name: 
// Module Name: jhonson_Counter
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


module johnson_counter(clk,clr,init,count);
input clk,clr,init;
output reg [3:0]count;
always @(posedge clk)
begin
if (clr)
count=4'bxxxx;
else if(init)
count=4'b0000;
else 
count={~count[0],count[3:1]};
end
endmodule