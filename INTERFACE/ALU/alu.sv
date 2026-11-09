interface inter #(parameter IN=8) ();
  
  logic [IN-1:0]a,b;
  logic [$clog2(IN):0]opcode;
  logic [2*IN-1:0]y;

/*  modport( dut(input a,b,opcode,output y);
  modport tb(input y,output a,b,opcode);*/

endinterface


