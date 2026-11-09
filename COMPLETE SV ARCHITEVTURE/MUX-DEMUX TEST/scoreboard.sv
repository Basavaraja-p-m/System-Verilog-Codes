class sb;
   packet p6;
   packet p7;
   mailbox #(packet) m7;
   mailbox #(packet) m8;
   int trans,pass,fail;

   function new(mailbox #(packet) m7,m8);
   this.m7=m7;
   this.m8=m8;
   endfunction

   task sb;
   p6=new;
   p7=new;
   forever begin
   m7.get(p6);
   m8.get(p7);

   if(p6.d==p7.d)
       begin
       $display("============TEST PASSED==============");
       p6.print("BFM");
       p7.print("OMON");
       pass++ ;
       end
       else
             begin
             $display("============TEST FAILED==============");
             p6.print("BFM");
             p7.print("OMON");
             fail-- ;
             end
             trans++ ;
    end
    endtask

    task status();
    $display("trans=%d pass=%d fail=%d",trans,pass,fail);
    endtask
    
endclass


