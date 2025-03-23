`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.03.2025 22:12:36
// Design Name: 
// Module Name: mux_4to_1_tb
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

module mux_4to1_tb;
reg [3:0] a, b, c, d;
reg [1:0] sel;
wire [3:0] y;

mux_4to1 DUT (a, b, c, d, sel, y);

initial begin
    $display("sel |  a   b   c   d  |  y");
    $monitor("%b  | %d  %d  %d  %d  | %d", sel, a, b, c, d, y);

    #10 a = 4'd10; b = 4'd5; c = 4'd8; d = 4'd12; sel = 2'b00;
    #10 sel = 2'b01;
    #10 sel = 2'b10;
    #10 sel = 2'b11;
    #10 a = 4'd2; b = 4'd7; c = 4'd3; d = 4'd15; sel = 2'b00;
    #10 sel = 2'b01;
    #10 sel = 2'b10;
    #10 sel = 2'b11;
    
    #10 $finish;
end

endmodule
