class packet;
       bit clk,rst;
  rand bit [7:0]data_in;
  rand bit wr,rd;
       bit [7:0]data_out;
       bit full,empty;

       function void print(string name="");
       $display("name=%s",name);
       $display("clk=%d rst=%d data_in=%d wr=%d rd=%d data_out=%d full=%d empty=%d Time=%0t",clk,rst,data_in,wr,rd,data_out,full,empty,$time);
       endfunction

       constraint c1{wr!=rd;}

endclass


    
