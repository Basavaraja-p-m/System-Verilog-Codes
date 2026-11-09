class sram;
   rand int data_in;
   rand int addr;
   
  // constraint c1{data_in inside{[10:20]};}
  // constraint c2{addr dist{[30:40]=:100};}
   
   constraint c3{addr inside{[30:40]};data_in==ram(addr);}

   function int ram(int a);
      if(a%2==0)
          ram=a-1;
          else
             ram=a+1;
   endfunction

endclass

module top;
    sram s1;

    initial
    begin
    s1=new;
    repeat(5)
    begin
    s1.randomize();
    $display("data_in=%d addr=%d",s1.data_in,s1.addr);
    end
    end
endmodule
