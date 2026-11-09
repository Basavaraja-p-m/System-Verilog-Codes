class packet2;
    packet p4;
    mailbox #(packet) m4;

    task dri();
    p4=new;
    m4.get(p4);
    p4.display("from dri3");
#10;
    endtask

    function new(mailbox #(packet) m4);
    this.m4=m4;
    endfunction

endclass
