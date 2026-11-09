class coverage1;
    packet p8;
    mailbox #(packet) c2;
    virtual inter i;

    covergroup cg @(posedge i.clk);
    option.at_least=3;
    cp1 : coverpoint p8.data_in;
    cp2 : coverpoint p8.addr;
    cp3 : coverpoint p8.wr;
    endgroup

    function new(mailbox #(packet) c2,virtual inter i);
    this.c2=c2;
    this.i=i;
    cg=new();
    endfunction

    task cov;
    p8=new;
    forever begin
    c2.get(p8);
   // cg.sample();
    p8.print("FROM COVERAGE");
    end
    endtask

endclass
