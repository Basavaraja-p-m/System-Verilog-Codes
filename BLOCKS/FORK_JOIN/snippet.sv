module snippet();

int a;
    
    initial
    begin
    fork
    begin
   #6 $display("the first statement",$time);
   #5 $display("first first",$time);
   #1 $display("first second",$time);
   a=1;
    end
    begin
   #1 $display("the second statement",$time);
   #4 $display("second first",$time);
   #1 $display("second second",$time);
   a=1;
    end
    begin
   #3 $display("the third statement",$time);
   #5 $display("third first",$time);
   #10 $display("third second",$time);
   a=1;
    end
     
     begin
     end     //it will convert any to none
         
    join_any
 
  //  wait (a==1);  //it will convert none to any
   
   $display("the last statement",$time);
  
  end


endmodule
   
