class packet;
   bit clk,rst;
   rand bit d;
   bit q;
   int e;

   function void display(string name="");
   $display("name=%s",name);
   $display("clk=%d rst=%d",clk,rst);
   $display("d=%d q=%d",d,q);
   endfunction

    constraint c1{d!=e;}

    function void post_randomize();
    e=d;
    endfunction

endclass

  

