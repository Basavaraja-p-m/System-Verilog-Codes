class sram;
   rand int data_in;
   rand int addr;

//     constraint c1{data_in dist{1:=75,2:=5,3:=3,[20:100]:=100};} 
//     constraint c2{addr dist{10:=10,20:=5,[30:100]:=5};}

     constraint c1{data_in dist{1:/75,2:/5,3:/3,[20:100]:/100};} 
     constraint c2{addr dist{10:/10,20:/5,[30:100]:/5};}

endclass

module top;
    sram s1;
     
     initial
     begin
     s1=new();
     repeat(8)
     begin
     s1.randomize();
     $display("data_in=%d addr=%d",s1.data_in,s1.addr);
     end
     end
endmodule

