class packet;
   rand bit [3:0] vec;
   constraint c1{$countones(vec) == 2;}

endclass

 module top();
   packet p1;

     initial
     begin
       p1=new();
       p1.randomize();
       $display("vec=%b",p1.vec);
     end
endmodule


