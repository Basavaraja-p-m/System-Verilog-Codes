module snippet();

process p1,p2;

initial
begin
    fork
       begin
       p1=process::self();
       #3 $display("p1 first",$time);
       #4 $display("p1 second",$time);
       //#3 $display("p1 third",$time); 
       #7 $display("p1 fourth",$time);
       end

       begin
       $display("%s",p1.status,$time);
       #4 p1.suspend();
       $display("%s",p1.status,$time);
       #10 p1.resume();
       $display("%s",p1.status,$time);
       end
      
    
       begin
       p2=process::self();
       #3 $display("p2 first",$time);
       #4 $display("p2 second",$time);
          $display("p2 third",$time); 
       #7 $display("p2 fourth",$time);
       end

       begin
       $display("%s",p2.status,$time);
       #4 p2.suspend();
       $display("%s",p2.status,$time);
       #10 p2.resume();
       $display("%s",p2.status,$time);
       end
       
       join
end
endmodule
