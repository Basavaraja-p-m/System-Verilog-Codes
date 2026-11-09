class generator;
    packet p1;
    mailbox #(packet) m1;
    mailbox #(packet) m2;
    int n;
    event e1;

    function new(mailbox #(packet) m1,m2,int n,event e1);
    this.m1=m1;
    this.m2=m2;
    this.n=n;
    this.e1=e1;
    endfunction
    
    task gen();
       p1=new;
       repeat(n)
       begin
       assert(p1.randomize());
       m1.put(p1);
       m2.put(p1);
       p1.print("FROM GENERATOR");
       #10;
       ->e1;
    end
    endtask

endclass

    
