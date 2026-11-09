class packet;
    rand bit a;
    rand bit [1:0]b;

    constraint c1{if(a==0)
                    b==0;solve a before b;}

endclass

module top;
    packet p1;

    initial
    begin
    p1=new;
    repeat(100)
    begin
    p1.randomize();
    $display("a=%d b=%d",p1.a,p1.b);
    end
    end
endmodule



