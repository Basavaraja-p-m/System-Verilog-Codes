/*module top();
    int data;

    covergroup cg1;
    data : coverpoint data {bins b1={[1:100]};}
    endgroup
 
    cg1 c;
    initial
    begin
       c=new();
       data=$urandom_range(1,100);
       c.sample();
       $display("data=%d",data);
    end
endmodule*/
module top();
   int data;

   covergroup cg1;
   data1 : coverpoint data{bins even={[0:100]} with (item % 2 == 0);
                           bins odd={[0:100]} with (item % 2 == 1);
                           bins mul={[0:100]} with (item % 10 == 0);}
   endgroup

   cg1 c1;

   initial
   begin
     c1=new();
     data=$urandom_range(0,100);
     c1.sample();
     $display("data=%d",data);
   end
endmodule

                           
  

