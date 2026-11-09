class sram;
    rand int data_in;
    rand int addr;

    static constraint c1{data_in inside{[10:20]};}
    static constraint c2{addr dist{21:=100,[22:30]:=50,[31:40]:/25};}
endclass

module top;
    sram s1,s2;
    
    initial
    begin
    s1=new;
    repeat(5)
    begin
    assert(s1.randomize());
    $display("S1 VALUES");
    $display("data_in=%d addr=%d",s1.data_in,s1.addr);
    end
    s1.constraint_mode(0);

    s2=new;
    repeat(5)
    begin
    assert(s2.randomize());
    $display("S2 VALUES");
    $display("data_in=%d addr=%d",s2.data_in,s2.addr);
    end
    end
endmodule


