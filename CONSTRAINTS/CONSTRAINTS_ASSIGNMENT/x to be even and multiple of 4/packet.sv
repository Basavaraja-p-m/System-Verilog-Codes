class packet;
   rand int unsigned x;

   constraint c1{soft x inside {[0:10]};}
   constraint c2{x % 4 == 0;}

endclass

module top();
    packet p1;
       initial
         begin
           p1=new();
           p1.randomize();
           $display("x=%d",p1.x);
         end
endmodule
