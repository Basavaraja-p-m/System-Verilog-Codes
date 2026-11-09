`include "dff.sv"
`include "dut.sv"
`include "tb.sv"

module top();

reg clk,rst;

initial
clk=0;
always #5 clk=~clk;

initial
begin
rst=0;
#20;
rst=1;
end

inter i(.clk(clk),
        .rst(rst)
        );

dut RTL(.clk(i.clk),
        .rst(i.rst),
        .d(i.d),
        .q(i.q)
        );

tb TB(.t(i));

endmodule







