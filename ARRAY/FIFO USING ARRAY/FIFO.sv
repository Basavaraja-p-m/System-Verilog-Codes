module FIFO #(parameter WIDTH=8,DEPTH=8)(
                                          input clk,rst,
                                          input [WIDTH-1:0] data_in,
                                          input wr,rd,
                                          output reg [WIDTH-1:0]data_out,
                                          output empty,full
                                          );

reg [WIDTH-1:0] q_array[$];

assign full=(q_array.size()==DEPTH);
assign empty=(q_array.size()==0);
always @(posedge clk or negedge rst)
begin
if(!rst)
    begin   
    data_out=0;
    q_array.delete();
//    for(int i=0;i<DEPTH;i++)
       // q_array[i]<=0;
    end
    else
        if(wr && !rd && !full)
            q_array.push_front(data_in);
            else if(!wr && rd && !empty)
                data_out<=q_array.pop_back();
end
endmodule

//TESTBENCH

module tb #(parameter WIDTH=8,DEPTH=8)();

    reg clk,rst;
    reg [WIDTH-1:0]data_in;
    reg wr,rd;
    wire [WIDTH-1:0]data_out;
    wire empty,full;

    //instantiation
    FIFO F1(clk,rst,data_in,wr,rd,data_out,empty,full);

    initial
    clk=0;
    always #5 clk=~clk;

    initial
    begin
    rst=0;
#10;rst=1;
    end

    initial
    begin
    wr=1;rd=0;
    wait(rst==1);
    repeat(8)
    begin
    data_in=$random;
#10;
    end
#5;
    rd=1;wr=0;
    end


    initial
    $monitor("clk=%d rst=%d data_in=%d wr=%d rd=%d data_out=%d empty=%d full=%d time=%t",clk,rst,data_in,wr,rd,data_out,empty,full,$time);

    initial
#200 $stop();

    endmodule
