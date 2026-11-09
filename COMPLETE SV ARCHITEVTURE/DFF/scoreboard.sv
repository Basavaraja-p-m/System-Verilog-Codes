class sb;
    packet p5;
    packet p6;
    mailbox #(packet) m5;
    mailbox #(packet) m6;

    function new(mailbox #(packet) m5,m6);
    this.m5=m5;
    this.m6=m6;
    endfunction

    task sb;
    p5=new;
    p6=new;
    forever begin
    m5.get(p5);
    m6.get(p6);
   // @(p6.q)
    if(p5.q==p6.q)
        $display("====================TEST PASSED=================");
        else
            $display("====================TEST FAILED=================");
    end
    endtask

endclass
