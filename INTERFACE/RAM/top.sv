`include "interface.sv"
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
#20 rst=1;
end

//instance
inter i(.clk(clk),
        .rst(rst)
        );

dut DUT(.clk(i.clk),
        .rst(i.rst),
        .wr_rd(i.wr_rd),
        .data_in(i.data_in),
        .addr(i.addr),
        .data_out(i.data_out)
        );

tb TB(.t(i));

endmodule



