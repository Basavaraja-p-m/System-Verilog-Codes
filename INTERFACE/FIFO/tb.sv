program tb #(parameter width=8,depth=8)(inter t);
     
task WRITE();
    begin
    t.wr=1;
    t.rd=0;
    repeat(8)
    begin
    t.data_in=$random;#10;
    end
    end
endtask

task READ();
    begin
    t.wr=0;
    t.rd=1;
    end
endtask

initial
begin
wait(t.rst==1);
WRITE;
READ;
end

initial
$monitor("clk=%d,rst=%d,wr=%d,rd=%d,data_in=%d,data_out=%d,empty=%d,full=%d,time=%t",t.clk,t.rst,t.wr,t.rd,t.data_in,t.data_out,t.empty,t.full,$time);

initial
begin
#50
wait(t.empty==1);
$stop;
end
endprogram



