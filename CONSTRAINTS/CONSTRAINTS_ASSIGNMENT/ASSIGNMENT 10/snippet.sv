class packet;
    rand int n;

         constraint c1{soft n inside{[10:20]};}
         constraint c2{n inside{[30:50]};}

endclass

module top;
    packet p1;

    initial
    begin
    p1=new;
    repeat(5)
    begin
    p1.randomize();
    $display("n=%d",p1.n);
    end
    end
endmodule
    


