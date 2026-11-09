module snippet;

   event e1,e2,e3;

   task moni();
   @(e1);
   $display("monitor1");
   $display("monitor2");
    ->e2;
   endtask

   task gen();
  // @(e1);
   $display("generator1");
   $display("generator2");
    ->e1;
   endtask

   task driv();
    @(e3);
   $display("driver1");
   $display("driver2"); 
   endtask

   task sb();
    @(e2);
   $display("sb1");
   $display("sb2");
   ->e3;
   endtask
   
   initial
  // begin
   fork
   moni();
   gen();
   driv();
   sb();
   join
   //end
endmodule

    

