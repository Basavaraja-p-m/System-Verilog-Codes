class packet;
    rand bit [7:0]data_in;
    rand bit wr,rd;
         bit [7:0]data_out;
         bit empty,full;
   

   function void print(string name="");
   $display("name=%s data_in=%d wr=%d rd=%d data_out=%d empty=%d full=%d");
   endfunction

endclass

