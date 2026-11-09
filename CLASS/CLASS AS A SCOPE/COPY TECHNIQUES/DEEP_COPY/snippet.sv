class packet;
    int a;
    int b;

endclass

class rocket;
     packet p1=new;

     int c,d;

     function void display(string name="");
     $display("name=%s",name);
     $display("a=%d",p1.a);
     $display("b=%d",p1.b);
     $display("c=%d",c);
     $display("d=%d",d);
     endfunction

     function void copy(rocket r);
          this.p1.a=r.p1.a;
          this.p1.b=r.p1.b;
          this.c=r.c;
          this.d=r.d;
      endfunction

endclass

module top;
    rocket r1,r2;

    initial
    begin
    r1=new;
    r1.p1.a=1;
    r1.p1.b=2;
    r1.c=3;
    r1.d=4;
    r1.display();
   
    r2=new;
    r2.copy(r1);
    r2.display();

    r1.p1.a=10;
    r1.p1.b=20;
    r1.c=30;
    r1.d=40;
    r1.display();
     
    r2.copy(r1);
    r2.display();

    r2.p1.a=100;
    r2.p1.b=200;
    r2.c=300;
    r2.d=400;
    r2.display();
    r2.copy(r1);
    r2.display();
    r1.display();


  /*  r2.p1.a=r1.p1.a;
    r2.p1.b=r1.p1.b;
    r2.c=r1.c;
    r2.d=r1.d;
    r2.display();

    r1.p1.a=10;
    r1.p1.b=20;
    r1.c=30;
    r1.d=40;
    r1.display();
    r2.display();

    r2.p1.a=r1.p1.a;
    r2.p1.b=r1.p1.b;
    r2.c=r1.c;
    r2.d=r1.d;
    r2.display();*/
     
    end
endmodule
