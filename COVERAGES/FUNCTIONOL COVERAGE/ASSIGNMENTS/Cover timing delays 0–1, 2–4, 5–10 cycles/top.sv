module top();
    int delays;

    covergroup cg1;
    dd : coverpoint delays { bins delays=(1=>2,2=>4,5=>10);}
    endgroup

    cg1 c1;
     initial
      begin
       c1=new();
       repeat(5)
       begin
       for(i=1;i<=10;i++)
         delays=$urandom_range(1,10);
         c1.sample();
         $display("delays=%d",delays);
       end
     end
endmodule
