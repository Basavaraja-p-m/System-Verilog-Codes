class packet;
   rand int a;

     //  constraint c1{a>5 && a<15;}
       constraint c2{a inside{[5:15]};}

 endclass

 module top;
     packet p1;

       initial
       begin
       p1=new;
       repeat(10)
       begin
       p1.randomize();
       $display("a=%d",p1.a);
       end
       end

endmodule
    
      
