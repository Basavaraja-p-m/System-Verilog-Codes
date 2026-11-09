class packet;
   rand int a;
   rand int b;
   rand int c;
   rand int d;
   rand int e;

   constraint c1{(a+b+c+d+e)/5 > 60  && (a+b+c+d+e)/5 < 100;}

endclass

module top();
    packet p1;

    initial
      begin
        p1=new();
        p1.randomize();
        $display("a=%d b=%d c=%d d=%d e=%d",p1.a,p1.b,p1.c,p1.d,p1.e);
        $display("avg=%d",(p1.a+p1.b+p1.c+p1.d+p1.e)/5);
      end
endmodule

