class packet;

   rand byte unsigned a[5];
   
 /*  constraint c1{foreach(a[i])
                 if(i==0)
                     a[i]==0;
                     else if(i==1)
                         a[i]==0;
                         else
                           a[i]==a[i-1]+a[i-2];}  */

   constraint c1{a[0] inside{[5:10]};
                 a[1] inside{[10:20]};
                 a[2]==a[0]+a[1];
                 a[3]==a[2]+a[1];
                 a[4]==a[3]+a[2];}
endclass

module top;
    packet p1;

    initial
    begin
    p1=new;
    p1.randomize();
    $display("a=%p",p1.a);
    end

endmodule
