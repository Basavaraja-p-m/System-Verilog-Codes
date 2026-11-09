class packet;
   // rand bit[7:0] a;
   // rand bit[7:0] b;
   rand bit[7:0] a[5];

    function void print(string name="");
  //  $display("name=%s a=%d b=%d",name,a,b);
    $display("name=%s a=%p",name,a);

    endfunction

    constraint c1{foreach (a[i])
                   a[i]==0;
                   (a[i]-1)==1;}

                   
endclass

module top;
   packet p1;

   initial
   begin
   p1=new;
   repeat(10)
   begin
   p1.randomize();
   p1.print();
   end
   end
endmodule
