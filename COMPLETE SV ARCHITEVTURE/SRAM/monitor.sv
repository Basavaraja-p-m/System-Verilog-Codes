class monitor;
  packet p4;
  mailbox #(packet) m6;
  virtual inter i;

  task mon();
  p4=new;
  forever begin
  @(i.data_out)
  p4.data_out=i.data_out;
  m6.put(p4);
  p4.print("MONITOR");
  end
  endtask

    function new(mailbox #(packet) m6,virtual inter i);
    this.m6=m6;
    this.i=i;
    endfunction


 endclass

