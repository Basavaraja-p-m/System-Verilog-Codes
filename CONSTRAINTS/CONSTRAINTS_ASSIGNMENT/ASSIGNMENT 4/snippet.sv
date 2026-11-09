class packet;
    rand int s_array[5];

    constraint c1{foreach(s_array[i])
                     s_array[i] inside{[0:9]};}

endclass

module top;
    packet p1;

    initial
    begin
    p1=new;
    repeat(5)
    begin
    p1.randomize();
    $display("s_array=%p",p1.s_array);
    end
    end
endmodule

