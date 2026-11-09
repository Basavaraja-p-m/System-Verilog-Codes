class packet;
  rand bit a;
  rand bit [3:0]b;
  rand int unsigned c;

  function void display1;
  $display("a=%d b=%d c=%d",a,b,c);
  endfunction

endclass

class backet extends packet ;
   rand bit [3:0]d;

   function display2;
   super.a=1;
   super.b=13;
   super.c=20;
   super.display1();
   $display("d=%d",d);
   endfunction

endclass

class rocket extends backet;
   rand byte e;

   function display3;
   super.display2();
   $display("e=%d a=%d d=%d",e,a,d);
   endfunction
endclass

module top;
   rocket r1;

   initial
   begin
    r1=new;
    repeat(10)
    begin
    r1.randomize();
    r1.display3();
    end
   end
endmodule


