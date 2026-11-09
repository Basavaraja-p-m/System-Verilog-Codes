`include "inter.sv"
`include "MUX.sv"
`include "MUX_tb.sv"

module TOP();

inter i();

MUX dut(.d(i));

MUX_tb tb(.t(i));
endmodule
