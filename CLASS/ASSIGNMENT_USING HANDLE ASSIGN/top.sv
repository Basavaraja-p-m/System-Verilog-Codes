`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"

module top;
  driver d1;
  generator g1;
   initial
   begin
   g1=new(5);
   d1=new(5);
   fork
   g1.gen();
   d1.t2=g1.t1;
//   d1=new;
   d1.dri();
   join
   end
   
endmodule
   

    
