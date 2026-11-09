class packet;

    rand byte a,b;

    constraint c1{a<b;}

endclass

module top;
   packet p1;

    initial
    begin
    p1=new;
    p1.randomize();
    $display("a=%d b=%d",p1.a,p1.b);
    end

endmodule
