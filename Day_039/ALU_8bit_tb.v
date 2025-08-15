`timescale 1ns / 1ps
`timescale 1ns / 1ps

module tb_alu_8bit;

reg [7:0] A, B;
reg [2:0] ALU_Sel;
wire [7:0] ALU_Out;
wire Zero;

alu_8bit uut (
    .A(A),
    .B(B),
    .ALU_Sel(ALU_Sel),
    .ALU_Out(ALU_Out),
    .Zero(Zero)
);

initial begin
    $display("Time\tA\tB\tALU_Sel\tResult\tZero");
    $monitor("%0t\t%h\t%h\t%b\t%h\t%b", $time, A, B, ALU_Sel, ALU_Out, Zero);

    A = 8'h0F; B = 8'hF0; ALU_Sel = 3'b000; #10;
    A = 8'h0F; B = 8'hF0; ALU_Sel = 3'b001; #10;
    A = 8'h15; B = 8'h25; ALU_Sel = 3'b010; #10;
    A = 8'h40; B = 8'h20; ALU_Sel = 3'b011; #10;
    A = 8'hAA; B = 8'h55; ALU_Sel = 3'b100; #10;
    A = 8'h10; B = 8'h20; ALU_Sel = 3'b101; #10;
    A = 8'h50; B = 8'h50; ALU_Sel = 3'b101; #10;
    A = 8'h60; B = 8'h30; ALU_Sel = 3'b101; #10;

    $finish;
end

endmodule

