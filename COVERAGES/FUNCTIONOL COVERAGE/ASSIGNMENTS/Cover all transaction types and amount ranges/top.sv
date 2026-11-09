module top();
   int credit;
   int debit;

   covergroup cg1;
   cr : coverpoint credit {bins low={[0:2500]};
                           bins mid={[2501:5000]};
                           bins high={[5001:10000]};}

   de : coverpoint debit {bins low={[0:2500]};
                           bins mid={[2501:5000]};
                           bins high={[5001:10000]};}

   endgroup

    cg1 c1;

    initial
     begin
       c1=new();
       c1.sample();
       credit=$urandom_range(0,10000);
       debit=$urandom_randge(0,10000);
       $display("credit =%d debit = %d",credit,debit);
     end
endmodule

