class packet;
         bit clk,rst;
    rand bit [7:0]data_in;
         bit [2:0]addr;
    rand bit wr;
         bit [7:0]data_out;
         int a;
         int count;

         constraint c1{wr!=a;}

         function void post_randomize();
         a=wr;
         addr=count/2;
           count++;
           if(count==16)
               count=0;

         endfunction      

  function void print(string name="");
  $display("name=%s",name);
  $display("clk=%d rst=%d data_in=%d addr=%d wr=%d data_out=%d time=%t",clk,rst,data_in,addr,wr,data_out,$time);
  endfunction


endclass
