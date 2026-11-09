class generator;
     packet p1;
     mailbox #(packet) m1;
     int x;

     task gen();
     p1=new;
     repeat(x)
     begin
     p1.randomize();
     m1.put(p1);
     p1.display("from the generator");
#10;
     end
     endtask

     function new(mailbox #(packet) m1,int x);
     this.m1=m1;
     this.x=x;
     endfunction

endclass
