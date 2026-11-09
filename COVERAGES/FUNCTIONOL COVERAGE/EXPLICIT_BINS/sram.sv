module sram();
    bit [7:0]data_in;
    bit [4:0]addr;
    bit wr,rd;

    covergroup cov_sram;
    data : coverpoint data_in{bins b1={1,2,3,4};
                              bins b2[7]={[100:200],36};
                              bins b3=default;}
    addr : coverpoint addr{bins b1[]={[10:20]};
                           bins b2[]={[20:31]};
                           bins b3=default;}
    wr   : coverpoint wr;
    rd   : coverpoint rd;
    endgroup

    cov_sram c1;
    initial
    begin
    c1=new;
    repeat(10)
    begin
    data_in=$random;
    addr=$random;
    wr=$random;
    rd=$random;
    $display("data_in=%d",data_in);
    c1.sample();
    end
    end
endmodule

