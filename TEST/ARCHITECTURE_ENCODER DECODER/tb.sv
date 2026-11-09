program tb(inter t);

//reg [1:0]b;
//reg [3:0]z;
task gen;
begin
//t.y=0;
t.a=4'b1000;
end
endtask

/*initial
begin
//t.z=0;
t.b=1;
end*/

task  sb;
if(t.z==t.a)
    begin
    $display("z=%b a=%b",t.z,t.a);
    $display("MATCHED");
    end
    else
       begin
       $display("z=%b a=%b",t.z,t.a);
       $display("NOT MATCHED");
       end
endtask


initial begin
  gen();
 #5;
 sb();
 end

/* initial begin
  $monitor($time,"a=%b ,y=%b,z=%b",t.a,t.y,t.z);
 end*/

endprogram
       

