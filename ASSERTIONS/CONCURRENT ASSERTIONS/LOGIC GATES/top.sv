`include "dut.sv"
`include "interface.sv"
`include "tb.sv"

module top();
  
  reg clk,rst;

  initial
  clk=0;
  always #5 clk=~clk;

  initial
     begin
     rst=0;
     #10;
     rst=1;
     end

     initial
#130 $stop;

  inter i(.clk(clk),
          .rst(rst)
          );
  dut DUT(.clk(i.clk),
          .rst(i.rst),
          .a(i.a),
          .b(i.b),
          .not1(i.not1),
          .and1(i.and1),
          .or1(i.or1),
          .nand1(i.nand1),
          .nor1(i.nor1),
          .xor1(i.xor1),
          .xnor1(i.xnor1)
          );
  tb TB(i);

endmodule


