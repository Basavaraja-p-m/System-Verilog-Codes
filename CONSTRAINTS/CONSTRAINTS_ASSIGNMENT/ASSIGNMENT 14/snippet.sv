class packet;
      rand byte unsigned a[4];

      constraint c1{a[1]==2*a[0];a[2]==2*a[1];a[3]==2*a[2];}
endclass

module top;
    packet p1;

    initial
    begin
    p1=new;
    repeat(5)
    begin
    p1.randomize();
    $display("a=%p",p1.a);
    end
    end
endmodule
