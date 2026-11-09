`include "env.sv"
class test_write;
   
   env e1;
   virtual inter i;
   string operation="WRITE";
   string typ="INCREMENT";

   function new(virtual inter i);
   this.i=i;
   endfunction

   task test;
   e1=new(i,operation,typ);
   e1.env();
   endtask

endclass


   
