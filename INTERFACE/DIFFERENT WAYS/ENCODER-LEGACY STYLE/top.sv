`include "inter.sv"
`include "dut.sv"
`include "tb.sv"


module top();

inter i();
dut d(.a(i.a),
      .y(i.y));//legacy style
tb t(.t(i));

endmodule
