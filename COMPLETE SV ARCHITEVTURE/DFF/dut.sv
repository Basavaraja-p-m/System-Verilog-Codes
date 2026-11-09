module dut(input clk,rst,
           input d,
           output reg q);

always_ff @(posedge clk or negedge rst)
if(!rst)
    q=0;
    else
        q=d;
        
endmodule

