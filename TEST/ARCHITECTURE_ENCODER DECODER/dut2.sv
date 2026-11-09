module dut2(
            input [1:0]b,
            output reg[3:0]z
            );
always_comb
begin
z=0;
if(b==0)
    z<=4'b0001;
else if(b==1)
    z<=4'b0010;
else if(b==2)
    z<=4'b0100;
else if(b==3)
    z<=4'b1000;
end
endmodule
