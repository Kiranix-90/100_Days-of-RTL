`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2025 10:02:38
// Design Name: 
// Module Name: up_down_counter_tb
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


`timescale 1ns / 1ps

module up_down_counter_tb();
reg mode, clock = 0, clr;
wire [7:0] count;

up_down_counter DUT(mode, clock, clr, count);

always
#1 clock = ~clock;

initial 
begin
    $dumpfile("up_down_counter.vcd");
    $dumpvars(0, up_down_counter_tb);
    $monitor($time, " mode=%b, clock=%b, clr=%b, count=%h", mode, clock, clr, count);

    clr = 1;
    #10 clr = 0; mode = 1;
    #50 mode = 0;
    #50 $finish;
end

endmodule

