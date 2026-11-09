class omonitor;
    packet p5;
    mailbox #(packet) m6;
    virtual inter i;

    function new(mailbox #(packet) m6,virtual inter i);
    this.m6=m6;
    this.i=i;
    endfunction

    task omon();
    p5=new;
    forever begin
    //pin to packet
      @(i.d)
    p5.d=i.d;
    m6.put(p5);
    p5.print("FROM OUTPUT MONITOR");
    end
    endtask

endclass
