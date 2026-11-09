class env;
    packet p7;
    generator g1;
    driver d1;
    bfm b1;
    monitor m_1;
    sb s1;
    mailbox #(packet) m7;
    mailbox #(packet) m8;
    mailbox #(packet) m9;
    virtual inter i;
    event e1,e2,e3,e4,e5;

    function new(virtual inter i);
    this.i=i;
    endfunction

    task env;
    p7=new;
    m7=new;
    m8=new;
    m9=new;
    g1=new(m7,5,e1);
    d1=new(m7,i,e1,e2);
    b1=new(m8,i,e2,e3);
    m_1=new(m9,i,e2,e4);
    s1=new(m8,m9,e3,e4);

    fork
    g1.gen();
    d1.dri();
    b1.bfm();
    m_1.mon();
    s1.sb();
    join
    endtask
endclass
    
