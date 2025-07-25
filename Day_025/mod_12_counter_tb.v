`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2025 15:25:10
// Design Name: 
// Module Name: mod_12_counter_tb
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



module mod_counter_tb();
reg clk=0,reset;
wire [3:0]count;
mod_counter DUT(.clk(clk),.reset(reset),.count(count));
always #5 clk=~clk;
initial 
begin 
$dumpfile("mod_counter.vcd");
$dumpvars(0,mod_counter_tb);
$monitor($time,"clk=%b,reset=%b,count=%b",clk,reset,count);

reset=1;
#3 reset=0;
#150 $finish;
end

endmodule