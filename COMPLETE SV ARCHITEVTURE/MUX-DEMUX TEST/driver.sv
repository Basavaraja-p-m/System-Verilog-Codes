class driver;
   packet p2;
   mailbox #(packet) m3;
   virtual inter i;

   function new(mailbox #(packet) m3,virtual inter i);
   this.m3=m3;
   this.i=i;
   endfunction

   task dri();
   p2=new;
   forever begin
   m3.get(p2);

   p2.print("FROM DRIVER");
   //packet to pin
     @(p2.a,p2.s)
   i.a=p2.a;
   i.s=p2.s;
  // p2.print("FROM DRIVER");
   end
   endtask

endclass
