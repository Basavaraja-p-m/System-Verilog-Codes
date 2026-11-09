class packet;
     rand byte a[6];

   //  constraint c1{a[2]==0;}

     constraint c1{foreach(a[i])
                   if(i==2)
                       a[i]==0;}


endclass

module top;
    packet p1;

    initial
    begin
    p1=new;
    repeat(5)
    begin
    assert(p1.randomize());
    $display("a=%p",p1.a);
    end
    end
endmodule

