`include "packet.sv"
`include "generator.sv"
`include "driver.sv"

module top;
   generator g1;
   driver d1;
   mailbox #(packet) m_1;

   initial
   begin
   m_1=new;
   g1=new(m_1,5);
   d1=new(m_1,5);
   fork
   g1.gen();
   d1.dri();
   join
   end
endmodule


      
   
