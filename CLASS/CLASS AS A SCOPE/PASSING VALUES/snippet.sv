class packet;
  
   //properties
    byte a;
    int b;
    byte c;

    //methods
    function void display(input string name="basu",int i);
        $display("name=%s",name);
        $display("i=%d",i);
        $display("a=%d",a);
        $display("b=%d",b);
        $display("c=%d",c);
     //   $display("i=%d",i);

    endfunction
    
    //custom new constructor
    function new(byte a,int b,byte c);
        this.a=a;
        this.b=b;
        this.c=c;
    endfunction  
endclass

module top;

   //create an handle
   packet p[5];

    //create an object or instance
/*    initial 
    begin
    p=new();
    p.a=5;
    p.b=3;
    p.c=6;
    p.display();
    end   */

    initial
    begin
 //   int i;
    foreach(p[i])
    begin
    p[i]=new($random,$random,$random);
    p[i].display(,i);
    end
    end
 
 endmodule
