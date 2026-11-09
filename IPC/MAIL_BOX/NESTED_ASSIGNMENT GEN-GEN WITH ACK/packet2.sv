class packet2;
    packet p2;
    mailbox #(packet) m2;
    mailbox #(string) m22;

    task dri();
    p2=new;
    assert(p2.randomize());
    m2.get(p2);
    p2.display("from dri");
    p2.s="-------packet recieved------";
    m22.put(p2.s);
    endtask

    function new(mailbox #(packet) m2,mailbox #(string) m22);
    this.m2=m2;
    this.m22=m22;
    endfunction

endclass

class backet2;
     packet2 p2;

     function new(mailbox #(packet) a,mailbox #(string)b);
     p2=new(a,b);
     endfunction

endclass
