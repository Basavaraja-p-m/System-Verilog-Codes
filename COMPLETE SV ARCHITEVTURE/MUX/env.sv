class env;
    packet p7;
    generator g1;
    driver d1;
    bfm b1;
    monitor m_1;
    sb s1;
    mailbox #(packet) m5;
    mailbox #(packet) m6;
    mailbox #(packet) m7;
    virtual inter i;

    function new(virtual inter i);
    this.i=i;
    endfunction

    task env;
    m5=new;
    m6=new;
    m7=new;
    p7=new;
    g1=new(m5,10);
    d1=new(m5,i);
    b1=new(m6,i);
    m_1=new(m7,i);
    s1=new(m6,m7);

    fork 
    g1.gen();
    d1.dri();
    b1.bfm();
    m_1.mon();
    s1.sb();
    join

    endtask

endclass

