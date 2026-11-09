class packet;

    int a,b;

    function new(int a2,b2);
      a=a2;
      b=b2;
    endfunction
    
endclass

class backet;

     packet p1;

     int c,d;

     function void display(input string name="BASU");
     $display("name=%s",name);
     $display("a=%d b=%d",p1.a,p1.b);
     $display("c=%d d=%d",c,d);
     endfunction

     function new(int a1,b1,c1,d1);
       p1=new(a1,b1);
       c=c1;
       d=d1;
     endfunction
endclass

module top;

     backet b1;

     initial
     begin
     b1=new(100,200,300,400);
    // b1.p1=new(100,200);
   /*  b1.p1.a=100;
     b1.p1.b=200;
     b1.c=300;
     b1.d=400; */
     b1.display(); 
     end   

     

endmodule



