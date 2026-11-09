class sb;
   packet b5;
   packet m5;
   mailbox #(packet) b2s1;
   mailbox #(packet) m2s1;

   function new(mailbox #(packet) b2s1,m2s1);
   this.b2s1=b2s1;
   this.m2s1=m2s1;
   endfunction
  
   task sb();
     b5=new();
     m5=new();
     forever
       begin
         b2s1.get(b5);
         m2s1.get(m5);

         if(b5.q == m5.q)
             $display("OUTPUT VERIFIED");
             else
                 $display("OUTPUT NOT VERIFIED");
       end
   endtask
endclass

