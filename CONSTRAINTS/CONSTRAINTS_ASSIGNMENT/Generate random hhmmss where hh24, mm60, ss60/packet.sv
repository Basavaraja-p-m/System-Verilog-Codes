class packet;
    rand int hh;
    rand int mm;
    rand int ss;
    constraint c2{hh inside{[0:24]};
                  mm inside{[0:60]};
                  ss inside{[0:60]};}
    constraint c1{hh < 24 && mm < 60 && ss < 60;}

endclass

module top();
   packet p1;
    
    initial
     begin
       p1=new();
       p1.randomize();
       $display("hh=%d mm=%d ss=%d",p1.hh,p1.mm,p1.ss);
     end
endmodule

