`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2025 22:42:03
// Design Name: 
// Module Name: tb_ShiftAddMultiplie
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


module tb_ShiftAddMultiplier;
    reg clk, rst, start;
    reg [3:0] A, B;
    wire [7:0] Product;
    wire done;

    ShiftAddMultiplier UUT (.clk(clk), .rst(rst), .start(start), .A(A), .B(B), .Product(Product), .done(done));

    always #5 clk = ~clk; // Clock with period 10ns

    initial begin
        $dumpfile("multiplier.vcd");
        $dumpvars(0, tb_ShiftAddMultiplier);
        
        clk = 0; rst = 1; start = 0; A = 0; B = 0;
        #10 rst = 0;

        // Test Case 1: 3 * 2 = 6
        #10 A = 4'b0011; B = 4'b0010; start = 1;
        #50 start = 0;

        // Test Case 2: 7 * 5 = 35
        #50 A = 4'b0111; B = 4'b0101; start = 1;
        #50 start = 0;

        // Test Case 3: 9 * 3 = 27
        #50 A = 4'b1001; B = 4'b0011; start = 1;
        #50 start = 0;

        #100 $finish;
    end
endmodule
