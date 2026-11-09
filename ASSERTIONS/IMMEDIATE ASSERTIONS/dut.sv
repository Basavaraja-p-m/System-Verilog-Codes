module dut(
           input clk,rst,
           input a,b,
           output reg not1,and1,or1,nand1,nor1,xor1,xnor1
           );

always @(posedge clk)
begin
if(!rst)
    begin
      {not1,and1,or1,nand1,nor1,xor1,xnor1}=7'b0000000;    
    end
         else
           begin
             not1=~a;
             and1=a&b;
             or1=a|b;
             nand1=~(a&b);
             nor1=~(a|b);
             xor1=a^b;
             xnor1=~(a^b);
           end
end
endmodule

