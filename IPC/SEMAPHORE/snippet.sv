module snippet;
   semaphore s1;
   
   task moni();
   s1.get(15);
   $display("monitor1");
   $display("monitor2");
   s1.put(20);
   endtask

   task gen();
   s1.get(25);
   $display("generator1");
   $display("generator2");
   s1.get(25);
   endtask

   task driv();
   s1.get(20);
   $display("driver1");
   $display("driver2");
   s1.get(20);
   endtask

   task sb();
   s1.get(25);
   $display("sb1");
   $display("sb2");
 //  s1.put(20);
   endtask
   
   initial
   fork
   s1=new(20);
   moni();
   gen();
   driv();
   sb();
   join
endmodule

    
