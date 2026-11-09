module sram();
    bit [7:0]data_in;
    bit [4:0]addr;
    bit wre,rde;
    int covered,total;
            
    covergroup sram_cov;
    option.auto_bin_max=256;
    datain : coverpoint data_in;
    addr   : coverpoint addr;
    wre    : coverpoint wre;
    rde    : coverpoint rde;
    endgroup

    sram_cov c1;
    initial
    begin
    c1=new;
    c1.set_inst_name("BASU");//set_inst_name
    repeat(10)
    begin
    data_in=$random;
    addr=$random;
    wre=$random;
    rde=$random;
    $display("data_in=%d addr=%d wre=%d rde=%d",data_in,addr,wre,rde);
    c1.sample();
    end
   $display("instance coverage=%f covered=%d total=%d",c1.get_inst_coverage(covered,total),covered,total);
    end
endmodule

    
