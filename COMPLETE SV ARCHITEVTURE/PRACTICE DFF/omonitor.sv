class omonitor;
    packet p4;
    mailbox #(packet) om2s;
    virtual inter i;

    function new(mailbox #(packet) om2s, virtual inter i);
    this.om2s=om2s;
    this.i=i;
    endfunction

    task omon();
      p4=new();
         forever
            begin
          //  @(i.q)
            @(posedge i.clk)
            p4.q=i.q;
            om2s.put(p4);
            p4.display("FROM OMONITOR");
            end
     endtask
endclass

