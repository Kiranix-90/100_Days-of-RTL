`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2025 23:51:54
// Design Name: 
// Module Name: PIPO_tb
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


module pipo_tb();
reg clk=0,clr;
reg [3:0]d;
wire [3:0]q;

pipo DUT(.clk(clk),.clr(clr),.d(d),.q(q));
always #1 clk=~clk;
initial
begin
$dumpfile("pipo.vcd");
$dumpvars(0,pipo_tb);
$monitor($time,"clk=%b,clr=%b,d=%b,q=%b",clk,clr,d,q);

clr<=1;

#4 clr=0;
#7 d<=4'b1000;
#7 d<=4'b1010;
#7 d<=4'b0001;
#70 $finish;
end

endmodule