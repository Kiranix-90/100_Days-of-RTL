`timescale 1ns / 1ps
module seven_seg_decoder(bin_in, seg_out);
input [3:0] bin_in;
output reg [6:0] seg_out;

always @(*) begin
    case(bin_in)
        4'b0000: seg_out = 7'b0000001;
        4'b0001: seg_out = 7'b1001111;
        4'b0010: seg_out = 7'b0010010;
        4'b0011: seg_out = 7'b0000110;
        4'b0100: seg_out = 7'b1001100;
        4'b0101: seg_out = 7'b0100100;
        4'b0110: seg_out = 7'b0100000;
        4'b0111: seg_out = 7'b0001111;
        4'b1000: seg_out = 7'b0000000;
        4'b1001: seg_out = 7'b0000100;
        default: seg_out = 7'b1111111;
    endcase
end
endmodule
