module alu_4bit_tb;
    reg [3:0] a;
    reg [3:0] b;
    reg [2:0] s;
    wire [7:0] y;

    alu_4bit uut (
        .a(a),
        .b(b),
        .s(s),
        .y(y)
    );

    initial begin
        a = 4'b0101; // 5
        b = 4'b0011; // 3

        s = 3'b000; #100;  // ADD
        s = 3'b001; #100;  // SUB
        s = 3'b010; #100;  // AND
        s = 3'b011; #100;  // NAND
        s = 3'b100; #100;  // OR
        s = 3'b101; #100;  // NOR
        s = 3'b110; #100;  // XOR
        s = 3'b111; #100;  // XNOR

        $finish;
    end
endmodule
