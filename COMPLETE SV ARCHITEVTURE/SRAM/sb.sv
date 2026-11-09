class sb;
   packet p5;
   packet p6;
   mailbox #(packet) m7;
   mailbox #(packet) m8;
   int trans,pass,fail;

   task sb;
   p5=new;
   p6=new;
   forever begin
   m7.get(p5);
   m8.get(p6);

   if(p5.data_out==p6.data_out)
       begin
       $display("***********TEST PASSED***************");
       pass++ ;
       end
       else
           begin
           $display("*************TEST FAILED***************");
           fail++ ;
           end
       trans=pass+fail ;
    end
    endtask

    function new(mailbox #(packet) m7,m8);
    this.m7=m7;
    this.m8=m8;
    endfunction

    task status();
      $display("total=%d pass=%d fail=%d",trans,pass,fail);
    endtask

endclass
