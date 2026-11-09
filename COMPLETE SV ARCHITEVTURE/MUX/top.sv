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
 
module top;
   
 inter i();

 dut DUT(.i0(i.i0),
         .i1(i.i1),
         .s(i.s),
         .y(i.y)
         );

 tb TB(i.tb);

 endmodule

         
