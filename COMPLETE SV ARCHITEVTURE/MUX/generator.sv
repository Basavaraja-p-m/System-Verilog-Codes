class generator;
    packet p1;
    mailbox #(packet) m1;
    int n;

    function new(mailbox #(packet) m1,int n);
    this.m1=m1;
    this.n=n;
    endfunction
    
    task gen();
    p1=new;
    repeat(n)
    begin
    assert(p1.randomize());
    m1.put(p1);
    p1.print("FROM GENERATOR");
#10;
    end
    endtask

endclass


