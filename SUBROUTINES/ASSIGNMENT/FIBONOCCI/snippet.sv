module snippet;
   
   function automatic int fib(input int n);
       if(n==0)
           return 0;
           if(n==1)
                return 1;
               else
               return fib(n-1)+fib(n-2);
   endfunction

   initial
   begin
   for(int i=0;i<21;i++)
   $display("fib(%0d)=%0d",i,fib(i));
   end

endmodule
