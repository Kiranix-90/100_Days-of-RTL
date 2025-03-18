`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.03.2025 22:36:57
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb;
    reg A ,B,C;
    full_adder DUT (A,B,C,sum,carry);
    initial
    begin
    $dumpfile("full_adder.vcd");
    $monitor($time,"A=%b,B=%b,C=%b", A,B,C,sum,carry);
    #5 A=0;B=0;C=0;
    #5 A=0;B=0;C=1;
    #5 A=0;B=1;C=0;
    #5 A=0;B=1;C=1;
    #5 A=1;B=0;C=0;
    #5 A=1;B=0;C=1;
    #5 A=1;B=1;C=0;
    #5 A=1;B=1;C=1;
    #5$finish;
    end

endmodule
