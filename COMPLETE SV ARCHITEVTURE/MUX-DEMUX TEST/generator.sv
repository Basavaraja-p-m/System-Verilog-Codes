class generator;
    packet p1;
    mailbox #(packet) m1;
    mailbox #(packet) m2;
    int n;

    function new(mailbox #(packet) m1,m2,int n);
    this.m1=m1;
    this.m2=m2;
    this.n=n;
    endfunction

    task gen();
    p1=new;
    repeat(n)
    begin
    p1.randomize();
    m1.put(p1);
    m2.put(p1);
    p1.print("FROM GEN");
    #10;
    end
    endtask

endclass
