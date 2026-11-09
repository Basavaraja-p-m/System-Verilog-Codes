`include "dut1.sv"
`include "dut2.sv"
`include "interface.sv"
`include "packet.sv"
`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"
`include "scoreboard.sv"
`include "env.sv"
`include "tb.sv"

module top();

    inter i();

    dut1 DUT1(.a(i.a),
             .b(i.b)
             );

    dut2 DUT2(.c(DUT1.b),
             .d(i.d)
             );
    
    tb TB(i);

endmodule

