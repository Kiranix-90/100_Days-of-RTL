`timescale 1ns / 1ps
module cyclic_lamp(clock,light);
input clock;
output reg [0:2] light;
parameter s0=0,s1=1,s2=2;
parameter RED=3'b100,GREEN=3'b010,YELLOW=3'b001;
reg[0:1] state;
always@(posedge clock)

//declaring state
case(state)
s0:state<=s1;
s1:state<=s2;
s2:state<=s0;
default:state<=s0;
endcase  

//declaring light
always @(state)
case(state)
s0:light=RED;
s1:light=GREEN;
s2:light=YELLOW;
default:light=RED;
endcase

endmodule
