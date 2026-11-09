class packet;
    rand byte unsigned a[5];

    constraint c1{foreach(a[i])
                   if(i%2==0)
                       a[i]%2==0;
                       else
                           a[i]%2!=0;}

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

     
