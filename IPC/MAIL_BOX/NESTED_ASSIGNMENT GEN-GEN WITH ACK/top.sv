`include "packet.sv"
`include "packet1.sv"
`include "packet2.sv"

module top;
 //  packet p3;
   backet1 b1;
   backet2 b2;
   mailbox #(packet) m3;
   mailbox #(string) m33;

   initial
   begin
  // p3=new(m3);

   m3=new;
   m33=new;
   b1=new(m3,m33);
   b2=new(m3,m33);
   
   fork
   b1.p_1.gen();
   b2.p2.dri();
   join
   end
endmodule


   

