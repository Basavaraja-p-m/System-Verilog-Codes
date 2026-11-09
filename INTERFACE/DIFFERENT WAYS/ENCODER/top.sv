`include "inter.sv"
`include "dut.sv"
`include "tb.sv"


module top();

inter i();
dut d(.d(i));
tb t(.t(i));

endmodule
