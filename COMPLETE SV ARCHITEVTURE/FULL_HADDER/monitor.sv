class monitor;
   packet p4;
   mailbox #(packet) m4;
   virtual inter i;
   event e2,e4;

   task mon();
   p4=new;
   forever begin
   @(e2);
#4;
   //pin to packet
//   @(i.sum,i.carry);
   p4.sum=i.sum;
   p4.carry=i.carry;
   p4.print("FROM MONITOR");
   m4.put(p4);
   //p4.print("FROM MONITOR");
   ->e4;
   end
   endtask

   function new(mailbox #(packet) m4,virtual inter i,event e2,e4);
   this.m4=m4;
   this.i=i;
   this.e2=e2;
   this.e4=e4;
   endfunction

endclass
