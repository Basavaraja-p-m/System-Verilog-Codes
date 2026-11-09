`include "alu.sv"
`include "dut.sv"
`include "tb.sv"

module top #(parameter IN=16)();

//interface
inter  i();
defparam i.IN=IN;

//connection between dut and interface
//legacy style connecting
dut DUT(.a(i.a),
      .b(i.b),
      .opcode(i.opcode),
      .y(i.y)
      );
defparam DUT.IN=IN;

//connection between tb and interface
tb TB(.t(i));
defparam TB.IN=IN;

//tb #(.IN(IN)) TB(.t(i));

endmodule

