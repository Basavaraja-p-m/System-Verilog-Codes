class sram;
    
    rand byte unsigned addr;

    constraint c1{addr%4==0;}

endclass

module top;
    sram s1;

    initial
    begin
    s1=new;
    repeat(5)
    begin
    s1.randomize();
    $display("addr=%d",s1.addr);
    end
    end
endmodule


