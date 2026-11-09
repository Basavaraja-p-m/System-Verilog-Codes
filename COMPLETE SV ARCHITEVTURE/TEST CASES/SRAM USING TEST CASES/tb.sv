//`include "test_write.sv"
//`include "test_read.sv"
`include "test_wr_rd.sv"
program tb(inter i);
  //  test_write tw;
   //   test_read tr;
     test_wr_rd twr_trd;
    initial
    begin
 //   tw=new(i);
 //   tw.test();
 //     twr_trd=new(i);
      twr_trd=new(i);
      twr_trd.test();
    end

    final
      twr_trd.e1.s1.status();
    
endprogram
