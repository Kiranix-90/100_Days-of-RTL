`timescale 1ns / 1ps
`timescale 1ns / 1ps

module demux_1_to_32(
    input wire [4:0] sel,
    input wire din,
    output reg [31:0] dout
);
    always @(*) begin
        dout = 32'b0;
        if (sel < 32)
            dout[sel] = din;
    end
endmodule
