class packet;
       bit clk,rst;
  rand bit [7:0]data_in;
       bit wr,rd;
       bit [7:0]data_out;
       bit full,empty;


       function void print(string name="");
       $display("name=%s",name);
       $display("clk=%d rst=%d data_in=%d wr=%d rd=%d data_out=%d full=%d empty=%d Time=%0t",clk,rst,data_in,wr,rd,data_out,full,empty,$time);
       endfunction

       constraint c1{wr!=rd;}
       constraint c2{data_in inside{[1:100]};}
       constraint c3{data_in dist{[1:50]:=90,[51:100]:=10};}

endclass


    
