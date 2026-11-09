module DATA_TYPES();
   reg a;
   wire b;
   integer c;
   time d;
   real e;
   realtime f;
   bit g;
   byte h;
   int i;
   shortint j;
   longint k;
   shortreal l;
   logic m;

   initial
   begin
   $display("---------VERILOG---------");
   $display("THE DEFAULT VALUE OF a=%0d,THE DEFAULT SIZE OF a=%0d",a,$bits(a));
   $display("THE DEFAULT VALUE OF b=%0d,THE DEFAULT SIZE OF b=%0d",b,$bits(b));
   $display("THE DEFAULT VALUE OF c=%0d,THE DEFAULT SIZE OF c=%0d",c,$bits(c));
   $display("THE DEFAULT VALUE OF d=%0d,THE DEFAULT SIZE OF d=%0d",d,$bits(d));
   $display("THE DEFAULT VALUE OF e=%0d,THE DEFAULT SIZE OF e=%0d",e,$bits(e));
   $display("THE DEFAULT VALUE OF f=%0d,THE DEFAULT SIZE OF f=%0d",f,$bits(f));
   $display("-------SYSTEM VERILOG-------");
   $display("THE DEFAULT VALUE OF g=%0d,THE DEFAULT SIZE OF g=%0d",g,$bits(g));
   $display("THE DEFAULT VALUE OF h=%0d,THE DEFAULT SIZE OF h=%0d",h,$bits(h));
   $display("THE DEFAULT VALUE OF i=%0d,THE DEFAULT SIZE OF i=%0d",i,$bits(i));
   $display("THE DEFAULT VALUE OF j=%0d,THE DEFAULT SIZE OF j=%0d",j,$bits(j));
   $display("THE DEFAULT VALUE OF k=%0d,THE DEFAULT SIZE OF k=%0d",k,$bits(k));
   $display("THE DEFAULT VALUE OF l=%0d,THE DEFAULT SIZE OF l=%0d",l,$bits(l));
   $display("THE DEFAULT VALUE OF m=%0d,THE DEFAULT SIZE OF m=%0d",m,$bits(m));
   end
   endmodule




