`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.04.2025 22:29:53
// Design Name: 
// Module Name: shift_regiister_4b
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


module shift_register_4b(clk,clr,A,B,C,D,E);
input clk,clr,A;
output reg E;
output reg B,C,D;
always @(posedge clk or negedge clr)
begin 
if(!clr)
begin 
B<=0;C<=0;D<=0;E<=0;
end
else begin 
E<=D;
D<=C;
C<=B;
B<=A;
end 
end
endmodule