class sb;
   packet p5;
   packet p6;
   mailbox #(packet) m5;
   mailbox #(packet) m6;
   int trans,pass,fail;

   function new(mailbox #(packet) m5,m6);
   this.m5=m5;
   this.m6=m6;
   endfunction

   task sb;
   p5=new;
   p6=new;
   forever begin
   m5.get(p5);
   m6.get(p6);

   if(p5.a==p6.d)
       begin
       $display("========TEST PASSED=======");
       p5.print("FROM GEN");
       p6.print("FROM OUTPUT MONITOR");
       pass++;
       end
       else 
            begin
            $display("========TEST FAILED=======");
            p5.print("FROM GEN");
            p6.print("FROM OUTPUT MONITOR");
            fail++;
            end
         trans=pass+fail;
    end
    endtask

    task status();
    $display("trans=%d pass=%d fail=%d",trans,pass,fail);
    endtask
endclass




