class packet;

    rand byte a;

   // constraint c1{a%2==0;}
    constraint c1{a>0 && a%2==0;}

endclass

module top;
   
   packet p1;

   initial
   begin
   p1=new;
   repeat(5)
   begin
   p1.randomize();
   $display("a=%d",p1.a);
   end
   end
endmodule
