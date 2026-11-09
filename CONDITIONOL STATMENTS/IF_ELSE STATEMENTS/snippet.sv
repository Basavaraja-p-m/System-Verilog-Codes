module snippet();

byte a,b;

initial
begin
a=30;b=20;
    /*priority if(a>b)
    $display("a is greater than b");
    else if(a==b)
    $display("a is less than b");*/
   

  /*  unique if(a<40)
    $display("a is greater than b");
    else if(a>b)
    $display("a is less than b");*/

 
    unique0 if(a>40)
    $display("a is greater than b");
    else if(a<b)
        $display("a is less than b");

        

end
endmodule

        

