virtual class packet;//in abstraction we cannot create handle or object directly
   
   pure virtual function void display1();
 
   pure virtual function void print1();
 endclass

class backet extends packet;

   virtual function void display1();
   $display("HELLO");
   endfunction

   virtual function void print1();
   $display("PRINT 2");
   endfunction
endclass

module top;
   packet p1;
   backet b1;

   initial
   begin
  // p1=new;
   b1=new;
   p1=b1;
   p1.display1();
   end
endmodule


   

