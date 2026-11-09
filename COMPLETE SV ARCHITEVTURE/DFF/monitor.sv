class monitor;
    packet p4;
    mailbox #(packet) m4;
    virtual inter i;

    function new(mailbox #(packet) m4,virtual inter i);
    this.m4=m4;
    this.i=i;
    endfunction 

    task mon();
    p4=new;
    forever begin
    @(i.q)
    p4.q=i.q;
    m4.put(p4);
    p4.print("FROM MONITOR");
    end
    endtask

endclass

