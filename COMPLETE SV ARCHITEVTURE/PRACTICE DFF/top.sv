`include "dut.sv"
`include "interface.sv"
`include "packet.sv"
`include "generator.sv"
`include "driver.sv"
`include "bfm.sv"
`include "omonitor.sv"
`include "sb.sv"
`include "env.sv"
`include "tb.sv"

module top();
    
    reg clk,rst;

    initial
    clk=0;
    always #10 
    clk=~clk;

    initial
    begin
    rst=0;
#20 rst=1;
    end

    inter i(.clk(clk),
            .rst(rst));

    dut DUT(.clk(i.clk),
            .rst(i.rst),
            .d(i.d),
            .q(i.q));
    
    tb TB(i);

endmodule
