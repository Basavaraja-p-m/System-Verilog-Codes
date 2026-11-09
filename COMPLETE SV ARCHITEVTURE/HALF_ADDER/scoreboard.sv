class sb;
  packet p5;
  packet p6;
  mailbox #(packet) m5;//bfm
  mailbox #(packet) m6;//output monitor

  task sb;
  p5=new;
  p6=new;
  forever begin
  m5.get(p5);
  m6.get(p6);
  
  if(p5.sum==p6.sum && p5.carry==p6.carry)
      begin
      $display("=====TEST PASSED=====");
      p5.print("BFM");
      p6.print("MONITOR");
      end
   else
      begin
      $display("=====TEST FAILED=====");
      p5.print("BFM");
      p6.print("MONITOR");
      end
      end
   endtask

   function new(mailbox #(packet) m5,mailbox #(packet) m6);
   this.m5=m5;
   this.m6=m6;
   endfunction
   
endclass


