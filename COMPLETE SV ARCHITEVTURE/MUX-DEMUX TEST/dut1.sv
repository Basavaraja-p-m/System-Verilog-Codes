module dut1(input [1:0]a,
            input s1,
            output reg b);
always_comb
case(s1)
1'b0 : b=a[0];
1'b1 : b=a[1];
endcase

endmodule
