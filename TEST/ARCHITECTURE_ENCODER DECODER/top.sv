`include "interface.sv"
`include "dut1.sv"
`include "dut2.sv"
`include "tb.sv"

module top();

//instantiation
inter i();

dut1 d1(.a(i.a),
        .y(i.y)
        );

dut2 d2(.b(i.y),
        .z(i.z)
        );

tb TB(.t(i));

endmodule
