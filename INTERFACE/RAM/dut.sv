module dut(
           input clk,rst,
           input wr_rd,
           input [7:0]data_in,
           input [2:0]addr,
           output reg[7:0]data_out
           );

reg [7:0]mem[7:0];
always @(posedge clk or negedge rst)
begin
if(!rst)
begin
data_out<=0;
for(int i=0;i<8;i++)
    mem[i]<=0;
end
    else
        begin
        if(wr_rd)
            mem[addr]<=data_in;
            else
                data_out<=mem[addr];
end
end
endmodule
