program tb(inter t);

initial
begin
wait(t.rst==1);
t.wr_rd=1;
repeat(8)
begin
t.data_in=$random;
t.addr=$random;#10;
end

t.wr_rd=0;
repeat(8)
begin
t.addr=$random;#10;
end
end

initial
$monitor("clk=%d,rst=%d,wr_rd=%d,data_in=%d,addr=%d,data_out=%d,time=%t",t.clk,t.rst,t.wr_rd,t.data_in,t.addr,t.data_out,$time);

initial
#250 $stop;

endprogram


