program tb(inter t);

reg [7:0]out;

//generator
task gen();
begin
t.d=$random;
end
endtask

//bfm
task bfm();
case(t.clk)
1'b0 : out=out;
1'b1 : out=t.d;
endcase
endtask

//scoreboard
task sb();
if(out==t.q)
    begin
    $display("clk=%b,rst=%b,d=%b,q=%b,out=%b,Time=%t",t.clk,t.rst,t.d,t.q,out,$time);
    $display("===TEST PASSED===");
    end
    else
        begin
        $display("clk=%b,rst=%b,d=%b,q=%b,out=%b,Time=%t",t.clk,t.rst,t.d,t.q,out,$time);
        $display("===TEST FAILED===");
        end
endtask

initial
repeat(10)
begin
wait(t.rst==1);
gen();@(posedge t.clk)
bfm();
sb();
end

endprogram

