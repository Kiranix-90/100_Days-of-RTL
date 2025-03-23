`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.03.2025 21:21:03
// Design Name: 
// Module Name: mux_2_to_1_tb
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


module mux_tb;
reg [2:0] a,b;
reg sel;
wire [2:0] y;

mux_2_to_1 DUT (a,b,sel,y);
 initial begin
        $display("Select line is Sel  so now the output is y  , where a and b are:");
        $monitor("               %b                       %d,         %d    %d", sel,y,a,b);
repeat(10) begin
#10
        a= $random %8 ;
        b= $random %8 ;
        sel = $random;
       
end
$finish;
end
endmodule