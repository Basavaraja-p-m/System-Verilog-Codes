class packet;
   bit [1:0]a,b;

   function void display(string name="");
   $display("name=%s",name);
   $display("a=%d",a);
   $display("b=%d",b);
   endfunction

endclass

module top;
  
  packet p1;
  
  int y,z;
   initial
   begin
   p1=new;
   std::randomize(y,z);//without declaring rand or randc std keyword is used
   $display("y=%d z=%d",y,z);
//   p1.display();
   end
endmodule

