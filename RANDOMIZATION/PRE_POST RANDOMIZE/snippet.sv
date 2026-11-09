class packet;

  rand   bit a;
  randc  bit b;

  function void display(string name="");
  $display("name=%s",name);
  $display("a=%d",a);
  $display("b=%d",b);
  endfunction

  function void pre_randomize();
  $display("a=%d",a);
  $display("b=%d",b);
  endfunction
 
  function void post_randomize();
  $display("a=%d",a);
  $display("b=%d",b);
  endfunction

endclass

module top;

    packet p1;

    initial
    begin
    p1=new;
    p1.randomize();
    p1.display();
    end

endmodule
