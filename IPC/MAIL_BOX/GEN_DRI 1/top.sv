`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
module top;
    
    dri d1;
    mailbox #(trans) m;
    gen g1;

    initial
    begin
    m=new;
    d1=new(m);
    g1=new(m);
    fork
    g1.gen();
    d1.dri();
    join
    end


    
endmodule
