class packet;

   rand int a,b;

   extern function void display(string name="BASU");
   extern function void display1(string name="SHASHI");
   extern function void display2(string name="YASHU");

endclass

   function void packet::display(string name="BASU");
   $display("name=%s",name);
   $display("a=%d",a);
   $display("b=%d",b);
   endfunction

   function void packet::display1(string name="SHASHI");
   $display("name=%s",name);
   $display("a=%d",a);
   endfunction

   function void packet::display2(string name="YASHU");
   $display("name=%s",name);
   $display("a=%d",a);
   endfunction

module top;

    packet p1;

    initial
    begin
    p1=new;
    p1.a=10;
    p1.b=20;
    p1.display("display");
    p1.display1("1st display");
    p1.display2("2nd display");
    end

endmodule
    
    
