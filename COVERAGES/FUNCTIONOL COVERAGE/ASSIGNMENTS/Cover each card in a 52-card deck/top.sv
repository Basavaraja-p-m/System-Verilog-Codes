/*module top();
   int cards;

   covergroup cg1;
   cards : coverpoint cards {bins cards[]={[0:51]};}
   endgroup

   cg1 c1;

   initial
     begin
       c1=new();
       cards=$urandom_range(0,51);
       c1.sample();
       $display("cards=%d",cards);
     end
endmodule*/

module top();
    int delays;
    int i;

    covergroup cg1;
    dd : coverpoint delays { bins delays[]=(6=>8),(5=>6),(9=>10);}
    endgroup

    cg1 c1;
     initial
      begin
       c1=new();
       repeat(15)
       begin
       for(i=1;i<=10;i++)
         delays=$urandom_range(1,10);
         c1.sample();
         $display("delays=%d",delays);
       end
     end
endmodule

