class sram;
   rand int data_in;
   rand int addr;
   rand int wr;
   rand int rd;
   rand bit en;

    function void display(string name="");
    $display("name=%s",name);
    $display("data_in=%d",data_in);
    $display("addr=%d",addr);
    $display("wr=%d",wr);
    $display("rd=%d",rd);
    $display("en=%d",en);

    endfunction

    constraint c1{addr inside{[2:100]};}
    constraint c2{if(en==1)
                     addr%2==0;
                     else
                         addr%2==1;
                         } 
    constraint c3{wr inside{[10:100]};}
    constraint c4{rd inside{[10:100]};}
    constraint c5{if(en==0)
                    wr;
                    else
                        rd;
                         }                      

//    constraint c2{addr inside{[10:20]};}
//    constraint c3{wr inside{[10:20]};}
//    constraint c4{rd inside{[10:200]};}   

endclass

module top;
    sram s1;

    initial
    begin
    s1=new; 
    repeat(5)
    begin
    s1.randomize();
    s1.display();
    end
    end

endmodule


