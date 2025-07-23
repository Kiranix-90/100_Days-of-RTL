`timescale 1ns / 1ps
module r_e_tb;

    reg A, B, C, D;
    wire Y;
    random_expression dut (A, B, C, D, Y);
    
    
    initial begin
    
        $display("A B C D | Y");
        $monitor("%b %b %b %b | %b", A, B, C, D, Y);
        
    
        A = 0; B = 0; C = 0; D = 0; #10;
        A = 0; B = 0; C = 0; D = 1; #10;
        A = 0; B = 0; C = 1; D = 0; #10;
        A = 0; B = 0; C = 1; D = 1; #10;
        A = 0; B = 1; C = 0; D = 0; #10;
        A = 0; B = 1; C = 0; D = 1; #10;
        A = 0; B = 1; C = 1; D = 0; #10;
        A = 0; B = 1; C = 1; D = 1; #10;
        A = 1; B = 0; C = 0; D = 0; #10;
        A = 1; B = 0; C = 0; D = 1; #10;
        A = 1; B = 0; C = 1; D = 0; #10;
        A = 1; B = 0; C = 1; D = 1; #10;
        A = 1; B = 1; C = 0; D = 0; #10;
        A = 1; B = 1; C = 0; D = 1; #10;
        A = 1; B = 1; C = 1; D = 0; #10;
        A = 1; B = 1; C = 1; D = 1; #10;

  $finish;
    end

endmodule