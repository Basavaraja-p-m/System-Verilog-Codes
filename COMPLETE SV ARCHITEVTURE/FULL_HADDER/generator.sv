class generator;
    packet p1;
    mailbox #(packet) m1;
    int n;
    event e1;
   
    task gen();
    p1=new;
    repeat(n)
    begin
    assert(p1.randomize());
    m1.put(p1);
    p1.print("FROM GENERATOR");
    ->e1;
#10;  
    end
    endtask

    function new(mailbox #(packet) m1,int n,event e1);
    this.m1=m1;
    this.n=n;
    this.e1=e1;
    endfunction


endclass
