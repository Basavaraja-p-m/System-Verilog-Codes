module snippet();

 function automatic int fibo(input int n);
  //  for(int n=1;n<10;n++)
        begin
        if(n<=1)
            return n;
        else
            return fibo(n-1)+fibo(n-2);
        end
   //  $display("n=%d",n);
 endfunction

 initial
 begin
 for(int i=1;i<10;i++)     
 $display("fib(%0d)=%0d",i,fibo(i));
 end

 endmodule


