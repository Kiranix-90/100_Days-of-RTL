`timescale 1ns / 1ps
module tb_priority_encoder_8to3;
    reg [7:0] in;
    wire [2:0] out;

    priority_encoder_8to3 uut (.in(in), .out(out));

    initial begin
        in = 8'b00000000; #10;
        in = 8'b00000001; #10;
        in = 8'b00000100; #10;
        in = 8'b00010000; #10;
        in = 8'b10000000; #10;
        in = 8'b11111111; #10;
        $finish;
    end
endmodule
