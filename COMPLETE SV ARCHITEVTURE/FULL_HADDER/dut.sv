module dut(input a,b,cin,
           output sum,carry);

assign sum=a^b^cin;
assign carry=(a&b)|(b&cin)|(cin&a);
// assign {carry,sum}=a+b+cin;
endmodule

