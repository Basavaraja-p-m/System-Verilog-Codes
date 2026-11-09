class packet;

   rand bit [7:0]a;

   constraint c1{(a & (a-1)) == 0;} 
                         
endclass

module top;
    packet p1;
     
     initial
     begin
     p1=new;
     repeat(5)
     begin
     p1.randomize();
     $display("a=%b",p1.a);
     end
     end
endmodule
