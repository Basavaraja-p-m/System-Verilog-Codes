module top();
   bit [3:0] value;

   covergroup cg1;
   va : coverpoint value {bins value[]={[0:15]} with ($countones(item) % 2 == 0);}
   endgroup

   cg1 c1;

   initial
   begin
   c1=new();
   value=$urandom_range(0,15);
   c1.sample();
   $display("value=%b",value);
   end
endmodule


