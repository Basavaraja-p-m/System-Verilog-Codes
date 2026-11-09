class rocket;

    int a,b;

    function void display(input string name="");
      $display("name=%s",name);
      $display("a=%d b=%d",a,b);
    endfunction

endclass

class packet;

    rocket r2;

      function void display(input string name="");
      $display("name=%s",name);
      r2.a=20;
      r2.b=30;
      $display("a=%d b=%d",r2.a,r2.b);
      endfunction
   
     function new(rocket y);
        r2=y;
    endfunction

endclass

class backet;
  
    rocket r3;

      function void display(input string name="");
      $display("name=%s",name);
      r3.a=40;
      r3.b=50;
      $display("a=%d b=%d",r3.a,r3.b);
      endfunction

    function new(rocket x);
        r3=x;
    endfunction

endclass

module top;
   rocket r1;
   packet p1;
   backet b1;
 //  rocket r3;
   initial
   begin
   r1=new();
   p1=new(r1);
   b1=new(r1);
   r1.a=10;
   r1.b=20; 
   r1.display();
   p1.display();
   b1.display();
   r1.display();
   p1.display();
   b1.display();
   r1.display();
   p1.display();
   b1.display();

   end

endmodule
