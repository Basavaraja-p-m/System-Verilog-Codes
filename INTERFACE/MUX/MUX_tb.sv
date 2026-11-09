program MUX_tb(inter t);
                    
reg Out;

//generating the stimulus
task gen();
   begin
   {t.i,t.s}=$random;
   end
endtask

task bfm();
   begin
   Out=t.i[t.s];
   end
endtask

task sb();
   begin
     if(t.y==Out)
         begin
         $display("i=%b,s=%b,y=%b",t.i,t.s,t.y);
         $info("TEST PASSED");
       //  $warning("ok");
       //  $error("no");
      //   $fatal("yes");
         end
     else
         begin
         $display("i=%b,s=%b,y=%b",t.i,t.s,t.y);
         $info("TEST FAILED");
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

 

