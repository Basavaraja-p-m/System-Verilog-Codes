module dut2(input c,
            input s2,
            output reg [1:0]d);

always_comb
case(s2)
1'b0 : d[0]=c;
1'b1 : d[1]=c;
endcase

endmodule
