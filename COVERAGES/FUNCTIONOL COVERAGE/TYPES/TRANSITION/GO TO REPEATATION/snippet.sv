module snippet;
   bit [3:0]a;

   covergroup cov_a;
   aa : coverpoint a{bins b1=(1[=2]=>13);
                     bins b2=(13[->2]=>2);}  //go to repetation
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

