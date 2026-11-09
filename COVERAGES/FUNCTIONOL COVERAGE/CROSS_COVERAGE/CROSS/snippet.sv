module snippet;
   bit [5:0]a;
   bit [4:0]b;

   covergroup cov_a;
   aa : coverpoint a{bins b1[]={[10:30]};}
   bb : coverpoint b{bins b2[]={[10:20]};}
   cross1 : cross a,b;
   cross2 : cross aa,bb;
   endgroup

   cov_a c1;
   initial
   begin
   c1=new;
   repeat(10)
   begin
   {a,b}=$random;
   $display("a=%d b=%d",a,b);
   c1.sample();
   end
   end
endmodule
