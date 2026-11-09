class packet;
   rand int vec[3][3][3];

   constraint c1{
                   foreach (vec[i,j,k])
                   vec[i][j][k] inside{[-10:10]};}

endclass

module top();
    packet p1;
      
    initial
       begin
          p1=new();
          p1.randomize();
           //foreach (p1.vec[i,j,k])
            // $display("vec[%0d][%0d][%0d] = %0d",i, j, k, p1.vec[i][j][k]);
          $display("vec = %p",p1.vec);
       end
endmodule
