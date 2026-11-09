class sram;
   rand int data_in;
   rand int addr;
   rand int wr;
   rand int rd;

    function void display(string name="");
    $display("name=%s",name);
    $display("data_in=%d",data_in);
    $display("addr=%d",addr);
    $display("wr=%d",wr);
    $display("rd=%d",rd);
    endfunction

//    constraint c1{data_in inside{[10:200]};}
//    constraint c2{addr inside{[10:20]};}
//    constraint c3{wr inside{[10:20]};}
//    constraint c4{rd inside{[10:200]};}   

//      constraint c1{data_in inside{1,2,3,4,5,6,7};}

endclass

module top;
    sram s1;

    initial
    begin
    s1=new;
    s1.randomize()with {data_in inside{[10:20]};};
    s1.display();
    end

endmodule

