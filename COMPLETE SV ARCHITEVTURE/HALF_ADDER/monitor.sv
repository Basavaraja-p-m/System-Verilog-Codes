class monitor;
   packet p4;
   mailbox #(packet) m4;
   virtual inter i;

   task mon();
   p4=new;
   forever begin
   //pin to packet
   @(i.sum,i.carry);
   p4.sum=i.sum;
   p4.carry=i.carry;
   m4.put(p4);
   p4.print("FROM MONITOR");
   end
   endtask

   function new(mailbox #(packet) m4,virtual inter i);
   this.m4=m4;
   this.i=i;
   endfunction
   
endclass

