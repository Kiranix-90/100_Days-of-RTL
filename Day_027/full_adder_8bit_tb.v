`timescale 1ns / 1ps

module FullAdder8Bit_tb;

    reg [7:0] A;
    reg [7:0] B;
    reg Cin;

    wire [7:0] Sum;
    wire Cout;

    FullAdder8Bit uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    initial begin
        $monitor("Time: %0t | A: %h | B: %h | Cin: %b | Sum: %h | Cout: %b", 
                 $time, A, B, Cin, Sum, Cout);

        // Test 1: All zeros
        A = 8'h00; B = 8'h00; Cin = 0; #10;

        // Test 2: Simple addition with no carry
        A = 8'h01; B = 8'h01; Cin = 0; #10;

        // Test 3: Overflow case
        A = 8'hFF; B = 8'h01; Cin = 0; #10;

        // Test 4: Alternate bits with carry-in
        A = 8'hAA; B = 8'h55; Cin = 1; #10;

        // Test 5: Complementary numbers
        A = 8'h99; B = 8'h66; Cin = 0; #10;

        // Test 6: High nibble + low nibble
        A = 8'hF0; B = 8'h0F; Cin = 0; #10;

        // Test 7: Random values
        A = 8'h3C; B = 8'hC3; Cin = 1; #10;

        // Test 8: Large values with carry
        A = 8'hBE; B = 8'hAD; Cin = 1; #10;

        // End simulation
        #50;
        $stop;
    end
endmodule
