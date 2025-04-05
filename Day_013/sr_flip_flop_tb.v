`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2025 20:48:52
// Design Name: 
// Module Name: sr_flip_flop_tb
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


module sr_flip_flop_tb;
reg R,S,clk;
wire Q,Qbar;
sr_flip_flop DUT(S,R,clk,Q,Qbar);
initial 
begin
$dumpfile("sr_flip_flop.vcd");
$dumpvars(0,sr_flip_flop_tb);
$monitor($time,"S=%b,R=%b,Q=%b,Qbar=%b",S,R,Q,Qbar);
 #5 S=0;R=0;clk=1;
#5 S=0;R=1;clk=1;
#5 S=1;R=0;clk=1;
#5 S=1;R=1;clk=1;
end
endmodule