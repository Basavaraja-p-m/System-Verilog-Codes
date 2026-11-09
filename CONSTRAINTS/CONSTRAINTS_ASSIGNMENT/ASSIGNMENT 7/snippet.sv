class packet;
    rand bit [3:0]a;

    constraint c1{a[3]==1;}

endclass

module top;
    packet p1;

    initial
     begin
     p1=new;
     p1.randomize();
     $display("a=%b",p1.a);
     end
endmodule


