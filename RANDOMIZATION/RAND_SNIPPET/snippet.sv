class packet;
 // rand bit [1:0]a,b,c,d;
  randc bit [1:0]a,b,c,d;

   function void display(string name="");
   $display("name=%s",name);
   $display("a=%d",a);
   $display("b=%d",b);
   $display("c=%d",c);
   $display("d=%d",d);

   endfunction

endclass

module top;
   int y;
   packet p1;

   initial
   begin
   p1=new;
   repeat(4)
   begin
//   p1.a.rand_mode(0);  it is used to enable or disable the variables
   p1.randomize();

   //-----types of ways to remove warning----//
//   void'(p1.randomize());
//   y=p1.randomize();
//   assert(p1.randomize);
/*   if(!p1.randomize())
       $error("failed");
       else
           $info("passed"); */
           
   p1.display();
   end
   end
endmodule


