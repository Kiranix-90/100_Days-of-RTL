`timescale 1ns / 1ps
module cyclic_lamp_tb();
reg clock=0;
wire [0:2]light;
cyclic_lamp DUT(.clock(clock),.light(light));
always #5clock=~clock;

initial 
begin 
$dumpfile("cyclic_lamp.vcd");
$dumpvars(0,cyclic_lamp_tb);
$monitor($time,"clock=%b,light=%b",clock,light);
#100 $finish;
end
endmodule