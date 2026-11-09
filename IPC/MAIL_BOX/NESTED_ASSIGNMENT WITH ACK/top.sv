`include "packet.sv"
`include "packet1.sv"
`include "backet1.sv"
`include "backet2.sv"
`include "packet2.sv"

module top;
     packet1 p5;
     backet1 b1;
     backet2 b2;
     packet2 pc1;
     mailbox #(packet) m5;

     initial
     begin
     m5=new;
     p5=new(m5);
     b1=new(m5);
     b2=new(m5);
     pc1=new(m5);

     fork
     p5.gen();
     b1.dri_gen1();
     b2.dri_gen2();
     pc1.dri();
     join
     end
endmodule


