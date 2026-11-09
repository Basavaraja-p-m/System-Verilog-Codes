class generator;
    packet p1;
    mailbox #(packet) m1;
    mailbox #(packet) m2;
    mailbox #(packet) c1;
    int n;
    
    task gen();
    p1=new;
    repeat(n)
    begin
    assert(p1.randomize());
   // p1.addr=0;
    m1.put(p1);
    m2.put(p1);
    c1.put(p1);
    p1.print("FROM GEN");
    #10;
    end
    endtask

    function new(mailbox #(packet) m1,m2,c1,int n);
    this.m1=m1;
    this.m2=m2;
    this.c1=c1;
    this.n=n;
    endfunction

endclass
  
