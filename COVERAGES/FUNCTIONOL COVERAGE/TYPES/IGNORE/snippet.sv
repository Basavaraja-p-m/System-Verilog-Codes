module snippet;
     bit [3:0]a;

     covergroup cov_a;
     aa : coverpoint a{ignore_bins b1={1,13};}
     endgroup

     cov_a c1;
     initial
     begin
     c1=new;
     repeat(10)
     begin
     a=$random;
     $display("a=%d",a);
     c1.sample();
     end
     end

endmodule
