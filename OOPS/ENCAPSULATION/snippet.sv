class parent;
   protected int a;
   protected bit b;//protected can be derived it cannot work for nested class

   virtual function void display();
   $display("a=%d b=%d",a,b);
   endfunction

endclass

class child extends parent;
    int c;
    bit d;

    function void display();
 //   super.display();
    $display("a=%d b=%d",a,b);
    $display("c=%d d=%d",c,d);
    endfunction

endclass

class packet;  //nested class
    parent p=new;

    function void display();
    $display("a=%d b=%d",p.a,p.b);
    endfunction
endclass

module top;
    parent p1;
    child c1;
    packet p;
   
    initial
    begin
   // p1=new;
    c1=new;
    p=new;

    p1=c1;
    p1.display();
    p.display();
    
    end
endmodule

