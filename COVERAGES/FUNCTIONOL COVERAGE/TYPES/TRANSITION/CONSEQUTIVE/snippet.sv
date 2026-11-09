module snippet;
   bit [4:0]a;

   covergroup cov_a;
   aa : coverpoint a{bins b1=(13[*3]);}
   endgroup

   cov_a c1;
   initial
   begin
   c1=new;
   repeat(10)
   begin
   a=$random;
   $display("a=%d",a);
   c1.sample();
   end
   end
endmodule
