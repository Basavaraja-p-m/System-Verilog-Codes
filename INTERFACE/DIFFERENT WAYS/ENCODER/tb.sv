program tb(inter t);

reg [1:0]Y;
//generate stimulus
task gen();
    begin
  /*  t.a=4'b0001;#10;
    t.a=4'b0010;#10;
    t.a=4'b0100;#10;
    t.a=4'b1000;#10;*/
    t.a=t.a<<1;
    end
endtask

//bfm
task bfm();
    begin
    case(t.a)
    4'b0001 : Y=2'b00;
    4'b0010 : Y=2'b01;
    4'b0100 : Y=2'b10;
    4'b1000 : Y=2'b11;
    endcase
    end
endtask

task sb();
     begin
     if(t.y==Y)
         begin
         $display("a=%b,y=%b",t.a,t.y);
         $display("====TEST PASSED====");
         end
     else
         begin
         $display("a=%b,y=%b",t.a,t.y);
         $display("====TEST FAILED====");
         end
     end
endtask

//task call
initial
begin
t.a=4'b0001;#10;
//gen();
bfm();
sb();
repeat(5)
begin
gen();
bfm();#10;
sb();
end
end

    
endprogram
