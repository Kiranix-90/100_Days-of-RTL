`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.06.2025 11:11:45
// Design Name: 
// Module Name: jhonson_Counter_tb
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


module johnson_counter_tb();
reg clk=0,clr,init;
wire [3:0]count;

johnson_counter DUT(.clk(clk),.clr(clr),.init(init),.count(count));
 always #5clk=~clk;
 initial 
 begin
 $dumpfile("johnson_counter.vcd");
 $dumpvars(0,johnson_counter);
 $monitor($time,"clk=%b,clr=%b,init=%b,count=%b",clk,clr,init,count);
 
 #1clr=1;
 #3 clr=0;init=1;
 #4 init=0;
 #100 $finish;
 end
endmodule