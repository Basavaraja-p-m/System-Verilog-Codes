module packet;
 
   mailbox #(string) m1=new();
  // int a;

   task gen();
   bit a,b;
   repeat(5)
   begin
 //  a=$urandom_range(1,20);
 //  b=$urandom_range(21,30);
   a="basu";
   m1.put(a);
   m1.put(b);
   $display("a=%0d",a);
//   $display("b=%0d",b);
   $display("num=%0d",m1.num());
   end
   endtask

   task driver();
   string c,d;
   repeat(5)
   begin
 //  m1.get(c);
 //  m1.get(d);
   c="xyz";
   $display("c=%0d",c);
//   $display("d=%0d",d);
   $display("num=%0d",m1.num());
   end
   endtask

   initial
   begin
   gen();
   driver();
   end
   
endmodule


    
