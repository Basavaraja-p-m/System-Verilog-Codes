class packet;
    rand int x;

    function void display(string name="");
    $display("name=%s",name);
    $display("x=%d",x);
    endfunction

    constraint c1{x inside{[19:100]};}

endclass

module top();
    packet p1;
     
    initial
      begin
       p1=new();
       p1.randomize();
       p1.display("FROM PACKET");
      end
endmodule


    


