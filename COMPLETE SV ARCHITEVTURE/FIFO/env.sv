class env;
  packet p8;
  generator g1;
  driver d1;
  bfm b1;
  monitor m_1;
  sb s1;
  mailbox #(packet) g2d;
  mailbox #(packet) g2b;
  mailbox #(packet) b2s;
  mailbox #(packet) m2s; 
  virtual inter i;
  event e1,e2,e3,e4,e5;

  function new(virtual inter i);
  this.i=i;
  endfunction

  task env();
  p8=new;
  g2d=new;
  g2b=new;
  b2s=new;
  m2s=new;
  g1=new(g2d,g2b,10,e1);
  d1=new(g2d,i,e1,e2);
  b1=new(g2b,b2s,i,e2,e3);
  m_1=new(m2s,i,e3,e4);
  s1=new(b2s,m2s,e4,e5);

  fork
  g1.gen();
  d1.dri();
  b1.bfm();
  m_1.mon();
  s1.sb();
  join

  endtask

endclass

  
