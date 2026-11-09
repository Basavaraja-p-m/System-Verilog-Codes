`include "packet.sv"
`include "monitor.sv"
`include "monitor2.sv"
`include "scoreboard.sv"

module top;
  monitor_1 m_1;
  monitor_2 m_2;
  scoreboard s1;
  mailbox #(packet) m;
  mailbox #(packet) n;

  initial
  begin
  m=new;
  n=new;
  m_1=new(m,5);
  m_2=new(n,5);
  s1=new(m,n,5);
  fork
  m_1.gen();
  m_2.gen();
  s1.dri();
  join
  end

endmodule
  
  
  



