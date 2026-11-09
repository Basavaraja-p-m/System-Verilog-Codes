class sb;
  packet p5;
  packet p6;
  mailbox #(packet) m5;
  mailbox #(packet) m6;
  event e3,e4;

  function new(mailbox #(packet) m5,m6,event e3,e4);
  this.m5=m5;
  this.m6=m6;
  this.e3=e3;
  this.e3=e4;
  endfunction

  task sb;
  p5=new;
  p6=new;
  forever begin
  @(e3,e4);
  //@(e4);
  m5.get(p5);
  m6.get(p6);
  
  if(p5.sum==p6.sum && p5.carry==p6.carry)
      begin
      $display("TEST PASSED");
      p5.print("BFM");
      p6.print("MONITOR");
      end
      else
          begin
          $display("TEST FAILED");
          p5.print("BFM");
          p6.print("MONITOR");
          end
  end        
  endtask

endclass




