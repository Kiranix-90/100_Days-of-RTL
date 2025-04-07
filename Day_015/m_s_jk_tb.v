`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.04.2025 21:11:04
// Design Name: 
// Module Name: m_s_jk_tb
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


module masterslave_jk_tb();
reg j,k,clk=0;
wire q_s,q_sbar;
masterslave_jk DUT(j,k,clk,q_s,q_sbar);
always#5 clk=~clk;
initial
begin
$dumpfile("masterslave_jk.vcd");
$dumpvars(0,masterslave_jk_tb);
$monitor($time,"j=%b,k=%b,q_s=%b,q_sbar=%b",j,k,q_s,q_sbar);

#10 j=0;k=0;
#10 j=0;k=1;
#10 j=1;k=0;
#10 j=1;k=1;
 #100 $finish;
end
endmodule
  