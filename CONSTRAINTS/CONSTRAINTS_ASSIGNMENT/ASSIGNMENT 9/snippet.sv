class packet;

     rand byte unsigned a,b;

     constraint c1{a%4==0;
                   b%4==0;}

endclass

module top;
   packet p1;

   initial
   begin
   p1=new;
   repeat(5)
   begin
   p1.randomize();
   $display("a=%d b=%d",p1.a,p1.b);
   end
   end
endmodule
