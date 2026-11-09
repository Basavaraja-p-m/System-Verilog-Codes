class packet;

     int a,b;

     function void display(input string name="basu");
         $display("name=%s",name);
         $display("a=%d b=%d",a,b);
     endfunction

endclass

class backet;

     packet p1;

     function void display(input string name="basu");
         $display("name=%s",name);
         p1.a=20;
         p1.b=40;
         $display("a=%d b=%d",p1.a,p1.b);
     endfunction

     function new(packet p);
        p1=p;
     endfunction
endclass

module top;

     packet p2;
     backet b1;

     initial
     begin
     p2=new;
     b1=new(p2);
     p2.a=10;
     p2.b=20;
     p2.display();
     b1.display();
     p2.display();
     end

endmodule


