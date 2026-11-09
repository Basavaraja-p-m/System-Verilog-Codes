class monitor2;
     packet p2;
     mailbox #(packet) m2;
     int y;

     task gen();
     p2=new;
     repeat(y)
     begin
     assert(p2.randomize());
     m2.put(p2);
     p2.display("from the generator2");
#10;
     end
     endtask

     function new(mailbox #(packet) m2,int y);
     this.m2=m2;
     this.y=y;
     endfunction
     
endclass
