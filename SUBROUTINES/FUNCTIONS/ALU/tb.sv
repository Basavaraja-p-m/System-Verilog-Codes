program tb(inter t);

initial
begin
t.a=10;
t.b=5;
t.sel=2;
end

initial

#1 $display("a=%d b=%d y=%d",t.a,t.b,t.y);
endprogram
