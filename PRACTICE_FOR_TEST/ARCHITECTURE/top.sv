`include "interface1.sv"
`include "interface2.sv"
`include "dut1.sv"
`include "dut2.sv"
`include "tb.sv"



module top();

//instantiation

inter1 i1();

inter2 i2();

dut1 DUT1(.a(i1.a),
          .s(i1.s),
          .y(i1.y)
          );

dut2 DUT2(.b(i2.b),
          .s(i2.s),
          .z(i2.z)
          );

tb TB(.t1(i1),
      .t2(i2)
      );

endmodule
      
          

