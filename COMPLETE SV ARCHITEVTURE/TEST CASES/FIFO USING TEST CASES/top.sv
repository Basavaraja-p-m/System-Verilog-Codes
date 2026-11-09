`include "dut.sv"
`include "interface.sv"
`include "packet.sv"
`include "generator.sv"
`include "driver.sv"
`include "bfm.sv"
`include "coverage.sv"
`include "monitor.sv"
`include "sb.sv"
`include "env.sv"
`include "tb.sv"
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
#300 $stop;

  inter i(.clk(clk),
          .rst(rst)
          );

  dut DUT(.clk(i.clk),
          .rst(i.rst),
          .data_in(i.data_in),
          .wr(i.wr),
          .rd(i.rd),
          .data_out(i.data_out),
          .empty(i.empty),
          .full(i.full)
          );

   tb TB(i);

endmodule
