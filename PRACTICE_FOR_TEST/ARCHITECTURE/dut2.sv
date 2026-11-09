module dut2(
            input b,
            input [1:0]s,
            output reg [3:0]z
            );

always_comb
begin
z=0;
if(s==0)
    z[0]<=b;
else if(s==1)
        z[1]<=b;
else if(s==2)
        z[2]<=b;
else if(s==3)
        z[3]<=b;
end
endmodule

