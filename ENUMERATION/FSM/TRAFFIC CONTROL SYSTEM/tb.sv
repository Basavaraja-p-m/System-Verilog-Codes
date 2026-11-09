program tb(inter t);

task sb;
begin
$display("clk=%d,rst=%d,time=%0t,signol=%s",t.clk,t.rst,$time,t.signol);
end
endtask

initial
repeat(200)
begin
sb();#10;
end

endprogram
    
