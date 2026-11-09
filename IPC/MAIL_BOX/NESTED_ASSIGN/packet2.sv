class packet2;
    packet p4;
    mailbox #(packet) m4;
    int d;

    task dri();
    p4=new;
    repeat(d)
    begin
    m4.get(p4);
    p4.display("from dri3");
#10;
    end
    endtask

    function new(mailbox #(packet) m4,int d);
    this.m4=m4;
    this.d=d;
    endfunction

endclass
