class backet1;
    packet p2;
    mailbox #(packet) m2;
    int b;

    task dri_gen1();
    p2=new;
    repeat(b)
    begin
    m2.get(p2);
    p2.display("from dri1");
    m2.put(p2);
    p2.display("from gen2");
#10;
    end
    endtask

    function new(mailbox #(packet) m2,int b);
    this.m2=m2;
    this.b=b;
    endfunction

endclass

