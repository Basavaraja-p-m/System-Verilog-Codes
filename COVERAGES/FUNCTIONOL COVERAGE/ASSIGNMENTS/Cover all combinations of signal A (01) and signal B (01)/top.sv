module top();
   bit a;
   bit b;

   covergroup cg1;
   aa : cross a,b;
   endgroup

   cg1 c1;

   initial
    begin
       c1=new();
       {a,b}=$random;
       c1.sample();
       $display("a=%d b=%d",a,b);
    end
endmodule
