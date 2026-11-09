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

/*
property p1;
@(posedge clk)
disable iff(!rst)
!wr |-> full;
endproperty

property p2;
@(posedge clk)
disable iff(!rst)
!data_in |-> empty;
endproperty

property p3;
@(posedge clk)
disable iff(!rst)
data_in |-> $past(data_out);
endproperty

property p4;
@(posedge clk)
disable iff(!rst)
((full |-> !wr) or (empty |-> !rd));
endproperty 


ap1 : assert property(p1);
ap2 : assert property(p2);
ap3 : assert property(p3);
ap4 : assert property(p4);
*/
endmodule

