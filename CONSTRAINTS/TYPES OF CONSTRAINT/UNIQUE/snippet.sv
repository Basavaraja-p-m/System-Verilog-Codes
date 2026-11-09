class sram;
  rand  bit wr;
  rand  bit rd;
  rand  bit en;

    function void display(string name="");
    $display("name=%s",name);
    $display("wr=%d",wr);
    $display("rd=%d",rd);
//    $display("en=%d",en);
    endfunction

  //  constraint c1{unique {wr,rd};}

    extern constraint c2;
  
endclass

    constraint sram::c2{unique {wr,rd};}
    
module top;
    sram s1;

    initial
    begin
    s1=new;
    repeat(6)
    begin
    assert(s1.randomize());
    s1.display();
    end
    end
endmodule

   
