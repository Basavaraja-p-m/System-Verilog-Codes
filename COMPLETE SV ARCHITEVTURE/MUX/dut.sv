module dut(input i0,i1,
           input s,
           output reg y
           );
 
 always_comb
 if(s==0)
     y<=i0;
     else
         y<=i1;
endmodule
