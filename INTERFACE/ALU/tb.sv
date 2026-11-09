program tb #(parameter IN=8) (inter t);//(inter.tb i)

reg [2*IN-1:0]out;
//generate
task gen();
   begin
   t.a=$random; t.b=$random;
   t.opcode=$random;
   end
endtask

//bfm
task bfm();
   case(t.opcode)
   0 : out<=t.a+t.b;
   1 : out<=t.a-t.b;
   2 : out<=t.a*t.b;
   3 : out<=t.a/t.b;
   4 : out<=t.a%t.b;
   5 : out<=t.a**t.b;
   6 : out<=t.a>>1;
   7 : out<=t.a^t.b;
   8 : out<=t.a|t.b;
  default : out<=t.a&t.b;
   endcase
endtask

//scoreboard
task sb();
begin
if(t.y==out)
    begin
    $display("a=%b,b=%b,opcode=%b,y=%b,out=%b",t.a,t.b,t.opcode,t.y,out);
    $display("===TEST PASSED===");
    end
else
     begin
     $display("a=%b,b=%b,opcode=%b,y=%b,out=%b",t.a,t.b,t.opcode,t.y,out);
    $display("===TEST FAILED===");
    end
end
endtask

initial
repeat(10)
begin
gen();
bfm();#10;
sb();
end


endprogram

