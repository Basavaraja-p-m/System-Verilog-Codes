class bfm;
  packet p3;
  mailbox #(packet) m3;
  virtual inter i;
  event e2,e3;

  task bfm();
  p3=new;
  forever begin
  @(e2);
  //pin to packet
 // @(i.a,i.b,i.cin);
  p3.a=i.a;
  p3.b=i.b;
  p3.cin=i.cin;
  //bfm 
  {p3.carry,p3.sum}=p3.a+p3.b+p3.cin;
  m3.put(p3);
  p3.print("FROM BFM");
  ->e3;
  end
  endtask

  function new(mailbox #(packet) m3,virtual inter i,event e2,e3);
  this.m3=m3;
  this.i=i;
  this.e2=e2;
  this.e3=e3;
  endfunction

endclass

