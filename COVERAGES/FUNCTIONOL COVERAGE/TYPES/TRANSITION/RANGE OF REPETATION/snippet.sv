module snippet;
   bit [3:0]a;

   covergroup cov_a;
   aa : coverpoint a{bins b1=(13[=3:6]);}
   endgroup

   cov_a c1;
   initial
   begin
   c1=new;
   repeat(20)
   begin
   a=$random;
   $display("a=%d",a);
   c1.sample();
   end
   end
endmodule

