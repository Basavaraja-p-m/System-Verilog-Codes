//write a function that returns the absolute value of an integer. call it from an initial block

module snippet();

int y;
function int absolute(input int x);
   //absolute=(x<0)?-x:x;
   if(x<0)
       absolute=-x;
       else
           absolute=x;
endfunction

initial
begin
y=absolute(-34);
$display("y=%d",y);
end

endmodule

