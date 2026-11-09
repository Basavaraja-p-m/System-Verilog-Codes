class sb;
  packet p6;
  packet p7;
  mailbox #(packet) m_b;
  mailbox #(packet) m_d;
  event e4,e3;

  function new(mailbox #(packet) m_b,m_d,event e4,e3);
  this.m_b=m_b;
  this.m_d=m_d;
  this.e4=e4;
  this.e3=e3;
  endfunction

  task sb;
  p6=new;
  p7=new;
  forever begin
  @(e4 or e3);
  m_b.get(p6);
  m_d.get(p7);
 //@(p6.data_out or p7.data_out)
  if(p6.data_out==p7.data_out)
      $display("========================TEST PASSED=====================");
      else
          $display("========================TEST FAILED=====================");         
  end
//  ->e5;
  endtask
endclass
