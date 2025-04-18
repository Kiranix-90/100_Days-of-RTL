
module d_ff_tb;
reg d,clk=0;
wire q,qbar;
d_ff DUT (d,clk,q,qbar);
always #5 clk=~clk;
initial 
begin  
$dumpfile("d_ff.vcd");
$dumpvars(0,d_ff_tb);
$monitor($time,"d=%b,q=%b,qbar=%b",d,q,qbar);
#10 d<=0;
#10 d<=1;
#100 $finish;
end
endmodule
