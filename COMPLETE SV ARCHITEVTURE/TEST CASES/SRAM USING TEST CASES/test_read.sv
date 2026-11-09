`include "env.sv"
class test_read;
   
   env e1;
   virtual inter i;
   string operation="READ";
   string typ="INCREMENT";

   function new(virtual inter i);
   this.i=i;
   endfunction

   task test;
   e1=new(i,operation,typ);
   e1.env();
   endtask

endclass


   

