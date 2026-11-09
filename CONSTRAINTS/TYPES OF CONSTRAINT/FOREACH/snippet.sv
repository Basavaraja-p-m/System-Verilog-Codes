class sram;
  rand  int data_in;
  rand  int addr;
  rand  int wr;
  rand  int rd;
  rand  bit en;
  rand  bit[31:0] a[5];

    function void display(string name="");
    $display("name=%s",name);
    $display("data_in=%d",data_in);
    $display("addr=%d",addr);
    $display("wr=%d",wr);
    $display("rd=%d",rd);
    $display("en=%d",en);
    $display("a=%p",a);
    endfunction

    constraint c1{foreach(a[i])
                a[i];}
/*    constraint c2{foreach(a[i])
                 a[i] inside{[1:10]};}  */
/*    constraint c3{foreach(a[i])
                 a[i]%2==0;}  */
  /*  constraint c4{foreach(a[i])
                     if(en==1)
                         a[i]%2==0;
                         else
                             a[i]%2==1;}  */

    constraint c5{foreach(a[i])
                   {
                       (en==1)->(a[i] inside{[10:20]});
                       (en==0)->(a[i] inside{[1:10]});
                   }}
       
endclass

module top;
    sram s1;

    initial
    begin
    s1=new;
    repeat(8)
    begin
    s1.randomize();
    s1.display();
    end
    end
endmodule




