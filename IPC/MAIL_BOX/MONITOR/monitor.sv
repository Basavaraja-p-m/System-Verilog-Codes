class monitor_1;
    packet p1;
    mailbox #(packet) m1;
    int z;

    task gen();
    p1=new;
    repeat(z)
    begin
    assert(p1.randomize());
    m1.put(p1);
    p1.display("from p1");
#10;
    end
    endtask

    function new(mailbox #(packet) m1,int z);
    this.m1=m1;
    this.z=z;
    endfunction

endclass
