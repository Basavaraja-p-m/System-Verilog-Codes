class sram;
   rand  int data_in;
   rand  int addr;
   rand  int wr,rd;

     function void display(string name="");
     $display("name=%d",name);
     $display("data_in=%d",data_in);
     $display("addr=%d",addr);
     $display("wr=%d",wr);
     $display("rd=%d",rd);
     endfunction

  /*   constraint c1{data_in>=10 && data_in<=20;}
     constraint c2{addr>=10 && addr<=20;}
     constraint c3{wr>=10 && wr<=20;}
     constraint c4{rd>=10 && rd<=20;} */

     extern constraint c1;
     extern constraint c2;
     extern constraint c3;
     extern constraint c4;

endclass
 
     constraint sram::c1{data_in>=10 && data_in<=20;}
     constraint sram::c2{addr>=10 && addr<=20;}
     constraint sram::c3{wr>=10 && wr<=20;}
     constraint sram::c4{rd>=10 && rd<=20;} 


module top;
     sram s1;

     initial
     begin
     s1=new;
  //   s1.c2.constraint_mode(0);
     s1.randomize();
     s1.display();
     end
     
endmodule


 
