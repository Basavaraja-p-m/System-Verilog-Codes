`include "FIFO.sv"
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

//instantiation

inter i(.clk(clk),
        .rst(rst)
        );

dut DUT(.clk(i.clk),
        .rst(i.rst),
        .rd(i.rd),
        .wr(i.wr),
        .data_in(i.data_in),
        .data_out(i.data_out),
        .empty(i.empty),
        .full(i.full)
        );

tb TB(.t(i));

endmodule


