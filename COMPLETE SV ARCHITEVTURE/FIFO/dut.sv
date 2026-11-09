module dut(
           input clk,rst,
           input [7:0]data_in,
           input wr,rd,
           output reg [7:0]data_out,
           output reg full,empty
           );

reg [3:0]wr_ptr;
reg [3:0]rd_ptr;
reg [7:0]mem[7:0];
assign empty=(wr_ptr==rd_ptr);
assign full=({!wr_ptr[3],wr_ptr[2:0]}==rd_ptr);

always @(posedge clk or negedge rst)
begin
if(!rst)
    begin
    data_out=0;
    wr_ptr=0;
    rd_ptr=0;
    for(int i=0;i<8;i++)
        mem[i]=0;
    end
        else
            if(wr && !rd && !full)
                begin
                  mem[wr_ptr]=data_in;
                  wr_ptr=wr_ptr+1;
                end
                else if(!wr && rd && !empty)
                    begin
                       data_out=mem[rd_ptr];
                       rd_ptr=rd_ptr+1;
                    end
 end
 endmodule


