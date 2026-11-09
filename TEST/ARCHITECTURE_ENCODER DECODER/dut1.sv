module dut1(
            input [3:0]a,
            output reg[1:0]y
            );

always_comb
begin
y=0;
if(a==4'b0001)
    y<=0;
else if(a==4'b0010)
    y<=1;
else if(a==4'b0100)
    y<=2;
else if(a==4'b1000)
    y<=3;
end
endmodule
    
