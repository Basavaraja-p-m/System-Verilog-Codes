module snippet();
    bit [3:0]a;

    covergroup cov_a;
    aa : coverpoint a{bins b1=(4=>1=>9);  //sequence
                      bins b2=(4=>1);}    //single value sequence
    endgroup

    cov_a c1;
    initial
    begin
    c1=new;
    repeat(10)
    begin
    a=$random;
    $display("a=%d",a);
    c1.sample();
    end
    end
endmodule





