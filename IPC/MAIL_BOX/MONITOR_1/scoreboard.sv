class sb;
   packet p3;
   packet p4;
   mailbox #(packet) m3;
   mailbox #(packet) m4;
   int z;

   task dri();
   p3=new;
   p4=new;
   repeat(z)
   begin
   m3.get(p3);
   m4.get(p4);
   p3.display("from p3");
   p4.display("from p4");
   if(p3==p4)
   $display("simulation passed");
   else
   $display("simulation failed");
#10;
   end
   endtask

   function new(mailbox #(packet) m3,mailbox #(packet) m4,int z);
   this.m3=m3;
   this.m4=m4;
   this.z=z;
   endfunction
   
endclass


