`include "interface.sv"
`include "dut.sv"
`include "tb.sv"

module top();

//instantiation

inter i();

dut DUT(.a(i.a),
        .b(i.b),
        .sel(i.sel),
        .y(i.y)
        );

tb TB(.t(i));

endmodule
