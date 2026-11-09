module dut #(parameter width=8,depth=8)(
    input clk,rst,
    input rd,wr,
    input [width-1:0]data_in,
    output reg [width-1:0]data_out,
    output empty,full);
assign empty=(q_array.size()==0);
assign full=(q_array.size()==depth);

reg [width-1:0] q_array[$];
always @(posedge clk or negedge rst)
begin
if(!rst)
    begin
    data_out<=0;
    q_array.delete();
    end
    else
        begin
        if(wr && !rd && !full)
            q_array.push_front(data_in);
            else if(!wr && rd && !empty)
                  data_out<=q_array.pop_back();
        end
end
endmodule

                                        
