class driver;
   packet p2;
   mailbox #(packet) g2d1;
   virtual inter i;

   function new(mailbox #(packet) g2d1, virtual inter i);
   this.g2d1=g2d1;
   this.i=i;
   endfunction

   task dri();
      p2=new();
      forever
         begin
           g2d1.get(p2);
           //@(p2.clk,p2.rst,p2.d)
         //  @(p2.d);
           @(posedge i.clk)
          // i.clk=p2.clk;
          // i.rst=p2.rst;
           i.d=p2.d;
           p2.display("FROM DRIVER");
         end
   endtask
endclass

