class driver;
   packet p3;
   mailbox #(packet) m3;
   virtual inter i;
   event e1,e2;

   function new(mailbox #(packet) m3,virtual inter i,event e1,e2);
   this.m3=m3;
   this.i=i;
   this.e1=e1;
   this.e2=e2;
   endfunction

   task dri();
   p3=new;
   forever begin
   @(e1);
   m3.get(p3);
   wait(i.rst==1)
  // @(p3.data_in,p3.wr,p3.rd)
   i.data_in=p3.data_in;
   i.wr=p3.wr;
   i.rd=p3.rd;
   p3.print("FROM DRIVER");
   ->e2;
   end
   endtask

endclass
