class packet;
    
    rand byte unsigned s_array[4];

    constraint c1{s_array[0]<s_array[3];}

/*    constraint c2{s_array[3]>s_array[2];
                  s_array[2]>s_array[1];
                  s_array[1]>s_array[0];}   */
           
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
