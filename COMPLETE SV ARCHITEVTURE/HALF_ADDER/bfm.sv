class bfm;
    packet p3;
    mailbox #(packet) m3;
    virtual inter i;

    task bfm;
     p3=new;
     forever begin
     //pin level to packet
     @(i.a,i.b);
     p3.a=i.a;
     p3.b=i.b;
     //bfm logic
     {p3.carry,p3.sum}=p3.a+p3.b;
     
     m3.put(p3);
     p3.print("FROM INPUT MONITOR");
     end
    endtask

    function new(mailbox #(packet) m3,virtual inter i);
    this.m3=m3;
    this.i=i;
    endfunction

endclass




