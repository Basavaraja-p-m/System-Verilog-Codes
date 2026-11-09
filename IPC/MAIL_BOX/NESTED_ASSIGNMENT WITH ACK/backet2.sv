class backet2;
    packet p3;
    mailbox #(packet) m3;

    task dri_gen2();
    p3=new;
    m3.get(p3);
    p3.display("from dri2");
#10;
    m3.put(p3);
    p3.display("from gen3");
#10;
    endtask

    function new(mailbox #(packet) m3);
    this.m3=m3;
    endfunction

endclass
