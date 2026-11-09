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

    constraint c1{data_in inside{[100:200]};} //soft keyword used when conflict inputs given.(which we dont want to print soft                                                      keyword is used to that line) 
    constraint c2{addr inside{[10:20]};}
    constraint c3{soft addr inside{[21:30]};}
    constraint c4{soft addr inside{[31:40]};}   

endclass

module top;
    sram s1;

    initial
    begin
    s1=new;
    s1.randomize()with {soft data_in inside{[10:20]};};  //inline
    s1.display();
    end

endmodule


