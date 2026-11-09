class driver;
  packet p2;
  mailbox #(packet) m2;
  virtual inter i;
  event e1,e2;

  task dri();
  p2=new;
  forever begin
  @(e1);
  m2.get(p2);
  p2.print("FROM THE DRIVER");
  //packet to pin
  //@(p2.a,p2.b,p2.cin);
  i.a=p2.a;
  i.b=p2.b;
  i.cin=p2.cin;
  ->e2;
  end
  endtask

  function new(mailbox #(packet) m2,virtual inter i,event e1,e2);
  this.m2=m2;
  this.i=i;
  this.e1=e1;
  this.e2=e2;
  endfunction
  
endclass
