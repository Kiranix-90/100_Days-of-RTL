`timescale 1ns / 1ps
`timescale 1ns / 1ps

module tb_demux_1_to_32;

    reg [4:0] sel;
    reg din;
    wire [31:0] dout;

    demux_1_to_32 uut (
        .sel(sel),
        .din(din),
        .dout(dout)
    );

    integer i;

    initial begin
        din = 1;
        for (i = 0; i < 32; i = i + 1) begin
            sel = i;
            #10;
        end

        din = 0;
        sel = 5'd10;
        #10;

        $finish;
    end
endmodule

