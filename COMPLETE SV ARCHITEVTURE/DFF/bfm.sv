class bfm;
   packet p3;
   mailbox #(packet) m3;
   virtual inter i;

   function new(mailbox #(packet) m3,virtual inter i);
   this.m3=m3;
   this.i=i;
   endfunction 

   task bfm;
   p3=new;
   //pin to packet
//   m3.get(p3);
   forever begin
   @(i.clk,i.rst,i.d)
   p3.clk=i.clk;
   p3.rst=i.rst;
   p3.d=i.d;
 //  m3.get(p3);
   if(!i.rst)
       p3.q=0;
   else
   begin
   case(i.clk)
   0 : p3.q=p3.q;
   1 : p3.q=p3.d;
   endcase
   end  
  // p3.q=p3.d;

   m3.put(p3);
   p3.print("FROM BFM");
   end
   endtask

endclass

