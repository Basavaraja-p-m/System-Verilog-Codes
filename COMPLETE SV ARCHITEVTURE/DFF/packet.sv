class packet;
      bit clk,rst;
      rand bit d;
      bit q;
      int e;

 function void print(string name="");
 $display("name=%s",name);
 $display("clk=%b rst=%b",clk,rst);
 $display("d=%b q=%b",d,q);
 $display("time=%t",$time);
 endfunction

 constraint c1{d!=e;}

    function void post_randomize();
    e=d;
    endfunction

 endclass
