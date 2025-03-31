module magnitude_comparitor_tb;
reg [3:0] a,b;
wire A_less_B,A_great_B,A_equal_B;
 magnitude_comparitor_tb DUT (a,b,A_less_B,A_great_B,A_equal_B);
 initial begin
        $display("in between  a  and  b    A_lessThan_B  A_greaterThan_B  A_equalTo_B ");
        $monitor("           %d      %d    %b            %b                %b ", a, b,A_less_B,A_great_B,A_equal_B);
repeat(10) begin
#10
        a= $random %16 ;
        b= $random %16 ;
       
end
$finish;
end

endmodule
 