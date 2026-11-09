class packet1;
 //   rand int a;
    packet p1;
    mailbox #(packet) m1;
    int a;
    
    task gen();
    p1=new;
    repeat(a)
    begin
    assert(p1.randomize());
    m1.put(p1);
    p1.display("from gen1");
#10;
    end
    endtask

    function new(mailbox #(packet) m1,int a);
    this.m1=m1;
    this.a=a;
    endfunction
    

endclass
