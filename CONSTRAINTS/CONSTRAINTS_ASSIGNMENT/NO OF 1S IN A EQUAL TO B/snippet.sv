class packet;
     rand bit [3:0] a;
     rand bit [31:0]b;

   //  constraint c1{a[2]==0;}

     constraint c1{$countones(b)==a;}

endclass

module top;
    packet p1;

    initial
    begin
    p1=new;
    repeat(5)
    begin
    assert(p1.randomize());
    $display("a=%d b=%b",p1.a,p1.b);
    end
    end
endmodule

