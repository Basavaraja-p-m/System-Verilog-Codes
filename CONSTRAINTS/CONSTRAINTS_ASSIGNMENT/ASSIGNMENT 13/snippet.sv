class packet;
     rand int s_array[6];

     constraint c1{foreach(s_array[i])
                  if(i%2==1)
                      s_array[i]==1;
                      else
                          s_array[i]==0;}
endclass

module top;
    packet p1;

    initial
    begin
    p1=new;
    repeat(5)
    begin
    p1.randomize();
    $display("s_array=%p",p1.s_array);
    end
    end
endmodule
