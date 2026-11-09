class sram;
  rand  int data_in;
  rand  int addr;
  rand  int wr;
  rand  int rd;
  rand  bit en;
  rand  enum{low,mid,high}range;

    function void display(string name="");
    $display("name=%s",name);
    $display("data_in=%d",data_in);
    $display("addr=%d",addr);
    $display("wr=%d",wr);
    $display("rd=%d",rd);
    $display("en=%d",en);
    $display("range=%s",range);
    endfunction

    constraint c1{(en==1)->data_in inside{[10:20]};};

    constraint c2{(range==low)-> addr inside{[10:20]};
                  (range==mid)->addr inside{[21:30]};
                   (range==high)->addr inside{[31:40]};}  //implicant
    
endclass

module top;
    sram s1;

    initial
    begin
    s1=new;
    repeat(4)
    begin
    s1.randomize();
    s1.display();
    end
    end
endmodule




