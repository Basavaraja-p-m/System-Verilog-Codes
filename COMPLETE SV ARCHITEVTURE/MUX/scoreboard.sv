class sb;
   packet p5;
   packet p6;
   mailbox #(packet) m5;
   mailbox #(packet) m6;
   int trans,pass,fail;

   function new( mailbox #(packet) m5,m6);
   this.m5=m5;
   this.m6=m6;
   endfunction

   task sb;
   p5=new;
   p6=new;
   forever begin
   m5.get(p5);
   m6.get(p6);
   if(p5.y==p6.y)
       begin
       $display("======TEST PASSED======");
       p5.print("BFM");
       p6.print("MONITOR");
       pass++;
       end
       else
         begin
         $display("======TEST PASSED======");
         p5.print("BFM");
         p6.print("MONITOR");
         fail++;
         end
         trans++;
   end
   endtask

   task status();
   $display("pass=%d fail=%d trans=%d",pass,fail,trans);
   endtask
   
endclass
