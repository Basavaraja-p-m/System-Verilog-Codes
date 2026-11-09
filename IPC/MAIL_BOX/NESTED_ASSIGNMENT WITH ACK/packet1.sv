class packet1;
 //   rand int a;
    packet p1;
    mailbox #(packet) m1;
    mailbox #(string) n1;
    
    task gen();
    p1=new;
    assert(p1.randomize());
    m1.put(p1);
    p1.display("from gen1");
#10;
    string ack;
    n1.get(ack);
    $display("the recieved ack is %s",ack);
    endtask

    function new(mailbox #(packet) m1,mailbox #(string) n1);
    this.m1=m1;
    this.n1=n1;
    endfunction
    

endclass
