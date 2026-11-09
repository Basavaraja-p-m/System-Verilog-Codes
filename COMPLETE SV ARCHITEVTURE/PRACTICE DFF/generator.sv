class generator;
    packet p1;
    mailbox #(packet) g2d;
    int n;
    
    function new(mailbox #(packet) g2d, int n);
    this.g2d=g2d;
    this.n=n;
    endfunction

    task gen();
      p1=new();
      repeat(n);
       begin
         assert(p1.randomize());
         g2d.put(p1);
         p1.display("FROM GEN");
       end
    endtask
endclass
