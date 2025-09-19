`timescale 1ns/1ps
module tb_seven_segment_decoder;

    reg  [3:0] bcd;
    wire [6:0] seg;

    seven_segment_decoder dut (
        .bcd(bcd),
        .seg(seg)
    );

    initial begin
        $monitor("Time=%0t | BCD=%b | Segments=%b", $time, bcd, seg);

        bcd = 4'd0; #10;
        bcd = 4'd1; #10;
        bcd = 4'd2; #10;
        bcd = 4'd3; #10;
        bcd = 4'd4; #10;
        bcd = 4'd5; #10;
        bcd = 4'd6; #10;
        bcd = 4'd7; #10;
        bcd = 4'd8; #10;
        bcd = 4'd9; #10;
        bcd = 4'd10; #10;

        $finish;
    end
endmodule
