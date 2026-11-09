class driver;
   packet p3;
   mailbox #(packet) m3;
   virtual inter i;

   task dri();
   p3=new;
   forever begin
   m3.get(p3);
   //packet to pin
   //@(p3.a);
   i.a=p3.a;

   p3.print("FROM DRIVER");
//   $display("i.a=%0d",i.a);
   end
   endtask

   function new(mailbox #(packet) m3,virtual inter i);
   this.m3=m3;
   this.i=i;
   endfunction

endclass

