class snippet;
    rand int x,y,z;

    constraint c1{z==(x+y)**2;x inside{[0:50]};y inside{[0:50]};}

endclass

module top;
    snippet s1;

    initial
    begin
    s1=new;
    s1.randomize();
    $display("x=%d y=%d z=%d",s1.x,s1.y,s1.z);
    end
endmodule
 
    

