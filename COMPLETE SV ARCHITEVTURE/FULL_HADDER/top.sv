`include "dut.sv"
`include "interface.sv"
`include "packet.sv"
`include "generator.sv"
`include "driver.sv"
`include "bfm.sv"
`include "monitor.sv"
`include "scoreboard.sv"
`include "env.sv"
`include "tb.sv"

module top();
   
 inter i();

 dut DUT(.a(i.a),
         .b(i.b),
         .cin(i.cin),
         .sum(i.sum),
         .carry(i.carry)
         );
 tb TB(i.tb);
   
endmodule


