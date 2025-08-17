`timescale 1ns / 1ps
/// tb_top_module.v
`timescale 1ns/1ps

module tb_top_module;

reg clk, reset, load;
reg [7:0] B;
reg [2:0] opcode;
wire [7:0] ACC;

// Instantiate top module
top_module uut (
    .clk(clk),
    .reset(reset),
    .load(load),
    .B(B),
    .opcode(opcode),
    .ACC(ACC)
);

// Clock generator (10ns period)
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

// Stimulus
initial begin
    // Reset
    reset = 1; load = 0; B = 8'd0; opcode = 3'b000;
    #12 reset = 0;

    // ADD 0 + 5
    B = 8'd5; opcode = 3'b000; load = 1;
    #10 load = 0;

    // ADD (5) + 3 = 8
    #10 B = 8'd3; opcode = 3'b000; load = 1;
    #10 load = 0;

    // SUB (8) - 2 = 6
    #10 B = 8'd2; opcode = 3'b001; load = 1;
    #10 load = 0;

    // AND with 0x0F
    #10 B = 8'h0F; opcode = 3'b010; load = 1;
    #10 load = 0;

    // OR with 0xF0
    #10 B = 8'hF0; opcode = 3'b011; load = 1;
    #10 load = 0;

    // XOR with 0xAA
    #10 B = 8'hAA; opcode = 3'b101; load = 1;
    #10 load = 0;

    $stop;
end

endmodule

