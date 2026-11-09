module top();
   int data;

   covergroup cg1;
   data1 : coverpoint data{bins range={[0:100]};
                           bins even={data % 2 == 0};
                           bins odd={data % 2 != 0};
                           bins mul={data * 10};}
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

                           
  
