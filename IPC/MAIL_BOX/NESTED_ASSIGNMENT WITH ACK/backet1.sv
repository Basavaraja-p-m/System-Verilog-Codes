class backet1;
    packet p2;
    mailbox #(packet) m2;
    mailbox #(string) n2;


    task dri_gen1();
    p2=new;
    m2.get(p2);
    p2.display("from dri1");
#10;
    m2.put(p2);
    p2.display("from gen2");
#10;
   
    endtask

    function new(mailbox #(packet) m2);
    this.m2=m2;
    endfunction

endclass

