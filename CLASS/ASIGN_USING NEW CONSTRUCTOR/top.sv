`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"

module top;
  driver d1;
  generator g1;
  transaction t3;

   initial
   begin
   t3=new;
   g1=new(t3,5);
   d1=new(t3,5);

   
   g1.gen();
   d1.dri();
   end
endmodule
   

    
