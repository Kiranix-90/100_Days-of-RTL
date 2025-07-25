`timescale 1ns / 1ps
module divider_4b(
    input [3:0] dividend,   
    input [3:0] divisor,    
    output reg [3:0] quotient, 
    output reg [3:0] remainder 
);
    integer i;
    
    always @(*) begin
        quotient = 0;         
        remainder = dividend; 
        
        // Division algorithm using repeated subtraction
        for (i = 3; i >= 0; i = i - 1) begin
            if (remainder >= divisor) begin
                remainder = remainder - divisor; 
                quotient = quotient + 1;         
            end
        end
    end
endmodule