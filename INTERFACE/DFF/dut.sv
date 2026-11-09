module dut(input clk,rst,input[7:0]d,output reg [7:0]q);

//always @(posedge clk or negedge rst)
always_ff @(posedge clk or negedge rst)
begin
if(!rst)
q<=0;
    else
       q<=d;
end

endmodule
