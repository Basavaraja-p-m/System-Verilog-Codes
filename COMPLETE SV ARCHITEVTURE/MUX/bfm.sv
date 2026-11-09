class bfm;
  packet p3;
  mailbox #(packet) m3;
  virtual inter i;

  function new(mailbox #(packet) m3,virtual inter i);
  this.m3=m3;
  this.i=i;
  endfunction

  task bfm();
  p3=new;
  forever begin
  //pin to packet
  @(i.i0,i.i1,i.s);
  p3.i0=i.i0;
  p3.i1=i.i1;
  p3.s=i.s;
  //bfm
  case(p3.s)
  1'b0 : p3.y=p3.i0;
  1'b1 : p3.y=p3.i1;
  endcase
  m3.put(p3);
  p3.print("FROM BFM");
  end
  endtask
  
endclass
