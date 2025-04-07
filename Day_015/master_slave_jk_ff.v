`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.04.2025 21:03:25
// Design Name: 
// Module Name: master_slave_jk_ff
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


module masterslave_jk(j,k,clk,q_s,q_sbar );
input j,k,clk;
output reg q_s;
output reg q_sbar;
reg  q_m , q_mbar;
always @(posedge clk) begin
if(j==0 && k==0)begin
q_m=0;
q_mbar=1;
end
else if (j==0 && k==1)begin
q_m=0;
q_mbar<=1;
end
else if(j==1 && k==0)begin
q_m<=1;
q_mbar<=0;
end
else begin
q_m<=~q_m;
q_mbar<=~q_mbar;
end
end
always@(negedge clk)begin
q_s<=q_m;
q_sbar<=~q_mbar;
end
endmodule
  