class packet;

    //methods

  //  int a;
    function void display();
           int a;
           a++;
           $display("a=%d",a);
     endfunction  


 /*  function static void display();
           int a;
           a++;
           $display("a=%d",a);
     endfunction   */
     
endclass

module top;
 
    //create an handle
    packet p;

    initial
    repeat(4)
    begin
    p.display();
    end

 endmodule


