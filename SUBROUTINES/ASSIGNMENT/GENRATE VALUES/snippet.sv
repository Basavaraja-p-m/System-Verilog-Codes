module snippet;
    
    int a[10];

   function automatic void seq(output int a[10]);
   int high,low;
   high=9;
   low=0;
   foreach(a[i])
   if(i%2==0)
       a[i]=high -- ;
       else
         a[i]=low ++ ;
   endfunction

   initial
   begin
   seq(a);
   $display("seq is %p",a);
   end

endmodule





