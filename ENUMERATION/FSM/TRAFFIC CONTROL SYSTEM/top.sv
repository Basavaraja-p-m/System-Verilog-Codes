`include "TCS.sv"
`include "dut.sv"
`include "tb.sv"

module top();

   reg clk,rst;
   

initial
begin
clk=0;
forever #5 clk=~clk;
end

initial
begin
rst=0;
#20;
rst=1;
end

inter i(.clk(clk),
        .rst(rst));

dut DUT(.clk(i.clk),
        .rst(i.rst),
        .signol(i.signol)
        );

tb TB(.t(i));

endmodule

