
//write a function that counts of 1s in a 4 bit input

module snippet();

bit [3:0]y;
    function bit[3:0] name(input bit[3:0] a);
        name=0;
        for(int i=0;i<4;i++)
            if(a[i]==1)
                begin
                name++; 
              //  $display("a=%b name=%0d",a,name);
                end
        $display("a=%b name=%0d",a,name);
    endfunction

initial
begin
y=name(7);
//$display("y=%b",y);
end

endmodule

