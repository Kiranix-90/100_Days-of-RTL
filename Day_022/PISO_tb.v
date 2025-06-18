`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.05.2025 21:23:12
// Design Name: 
// Module Name: PISO_tb
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


module piso_tb();
reg clk=0, clr, load;
reg [3:0] d;
wire q;

piso DUT(.clk(clk), .clr(clr), .load(load), .d(d), .q(q));

always #1 clk = ~clk;

initial
begin
$dumpfile("piso.vcd");
$dumpvars(0, piso_tb);
$monitor($time, " clk=%b clr=%b load=%b d=%b q=%b", clk, clr, load, d, q);

clr <= 1;
load <= 0;
d <= 4'b0000;

#2 clr <= 0;
#2 load <= 1; d <= 4'b1011;
#2 load <= 0;

#20 $finish;
end

endmodule
