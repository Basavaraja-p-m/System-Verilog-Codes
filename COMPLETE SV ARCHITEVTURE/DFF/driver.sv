class driver;
   packet p2;
   mailbox #(packet) m2;
   virtual inter i;

   function new(mailbox #(packet) m2,virtual inter i);
   this.m2=m2;
   this.i=i;
   endfunction 

   task dri();
   p2=new;
   forever begin
   m2.get(p2);
   //p2.print("FROM DRIVER");
   //packet to pin
   @(p2.d)
   i.d=p2.d;
   p2.print("FROM DRIVER");
   end
   endtask

endclass
