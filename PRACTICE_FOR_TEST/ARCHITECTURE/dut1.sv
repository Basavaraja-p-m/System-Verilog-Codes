module dut1(
           input [3:0]a,
           input [1:0]s,
           output y
           );

assign y=a[s];

endmodule
