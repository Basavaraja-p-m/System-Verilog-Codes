class packet;
   int a;
   int b;

   function void display(string name="");
   $display("name=%s",name);
   $display("a=%d",a);
   $display("b=%d",b);
   endfunction

endclass

module top;

    packet p1,p2;

    initial
    begin
    p1=new;
    p1.a=10;
    p1.b=20; 
    p1.display("for p1");
      
    p2=new p1;//shallow copy
    p2.display("for p2");
    p1.display("for p1");
   
    p1.a=30;
    p1.b=40;
    p1.display("for p1");

    p2=new p1;
    p2.display("for p2");
    end
endmodule
     
   
