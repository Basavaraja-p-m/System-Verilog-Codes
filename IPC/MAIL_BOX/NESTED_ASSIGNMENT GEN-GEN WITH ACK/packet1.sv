class packet1;
   packet p1;
   mailbox #(packet) m1;
   mailbox #(string) m11;

   task gen();
   p1=new;
   assert(p1.randomize());
   m1.put(p1);
   p1.display("from gen");
   m11.get(p1.s);
   $display("%s",p1.s);
   endtask

   function new(mailbox #(packet) m1,mailbox #(string) m11);
   this.m1=m1;
   this.m11=m11;
   endfunction

endclass

class backet1;
    packet1 p_1;
   
    function new(mailbox #(packet) c,mailbox #(string) d);
    p_1=new(c,d);
    endfunction

 endclass
