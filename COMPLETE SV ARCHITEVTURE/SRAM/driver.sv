class driver;
    packet p2;
    mailbox #(packet) m3;
    virtual inter i;

    task dri();
    p2=new;
    forever begin
    m3.get(p2);
    wait(i.rst==1)
    //packet to pin
    @(p2.data_in,p2.addr,p2.wr)
    i.data_in=p2.data_in;
    i.addr=p2.addr;
    i.wr=p2.wr;
    p2.print("FROM DRI");
    end
    endtask

    function new(mailbox #(packet) m3,virtual inter i);
    this.m3=m3;
    this.i=i;
    endfunction

endclass
