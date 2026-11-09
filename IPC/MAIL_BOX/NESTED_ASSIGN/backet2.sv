class backet2;
    packet p3;
    mailbox #(packet) m3;
    int c;

    task dri_gen2();
    p3=new;
    repeat(c)
    begin
    m3.get(p3);
    p3.display("from dri2");
    m3.put(p3);
    p3.display("from gen3");
#10;
    end
    endtask

    function new(mailbox #(packet) m3,int c);
    this.m3=m3;
    this.c=c;
    endfunction

endclass
