module basic_gates_tb;
 reg a,b;                                                     
 wire out_and ,out_or,out_nand , out_nor ,out_xor, out_xnor; 
 basic_gates DUT (a,b,out_and,out_or,out_nand, out_nor,out_xor, out_xnor);
 initial begin
  #10 a = 1'b0; b = 1'b0;
  #10 a = 1'b0; b = 1'b1;
  #10 a = 1'b1; b = 1'b0;
  #10 a = 1'b1; b = 1'b1;
end
endmodule
