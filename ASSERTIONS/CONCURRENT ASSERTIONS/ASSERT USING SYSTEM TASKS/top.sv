`include "dut.sv"
module top();
 
  reg clk,rst;


  initial
  clk=1;
  always #5 clk=~clk;

  initial
  begin
  rst=0;
#20 rst=1;
  end

  initial
  #120 $stop;

  dut DUT(clk,rst);

endmodule


   
