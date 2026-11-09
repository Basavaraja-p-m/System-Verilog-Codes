class packet;
  int a;
  int b;
 
endclass

class backet;
     packet p1=new;

     int c,d;

         function void display(string name="");
         $display("name=%s",name);
         $display("a=%d",p1.a);
         $display("b=%d",p1.b);
         $display("b=%d",c);
         $display("b=%d",d);
         endfunction

endclass

module top;
     backet b1,b2;

     initial
     begin
     b1=new;
     b1.p1.a=10;
     b1.p1.b=20;
     b1.c=30;
     b1.d=40;
     b1.display();
     b2=new b1;
     b2.display();
     b1.display();
     
     b1.p1.a=100;
     b1.p1.b=200;
     b1.c=300;
     b1.d=400;
     b1.display();
     b2.display();

     b1.p1.a=1;
     b1.p1.b=2;
     b1.c=3;
     b1.d=4;
     b1.display();
     b2.display();

     
     b2.p1.a=1;
     b2.p1.b=2;
     b2.c=3;
     b2.d=4;
     b2.display();
     b1.display();
     
     end

endmodule



 
