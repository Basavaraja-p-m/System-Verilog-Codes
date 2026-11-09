module dut(
           input int a,b,
           input [1:0]sel,
           output longint y
           );

function longint add(input int a,b);
    add=a+b;
   // $display("a=%d b=%b add=%d",a,b,add);
endfunction

function longint sub(input int a,b,output longint y);
    y=a-b;
   // $display("a=%d b=%d y=%d",a,b,y);
endfunction

function longint mul;
     input int a,b;
     output longint y;
     y=a*b;
   //  $display("a=%d b=%d y=%d",a,b,y);
endfunction

function longint div(input int a,b);
return a/b;
//$display("a=%d b=%d div=%d",a,b,div);
endfunction

always_comb
begin
//y=add(a,b);
//sub(a,b,y);
//void'(mul(a,b,y));
//y=div(a,b);
case(sel)
0 : y=add(a,b);
1 : void'(sub(a,b,y));
2 : void'(mul(a,b,y));
3 : y=div(a,b);
endcase
end

endmodule


