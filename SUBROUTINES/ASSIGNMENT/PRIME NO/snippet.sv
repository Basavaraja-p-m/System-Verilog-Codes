module snippet;
    
    int n;   
    function bit prime(input int num);
    if(num<2)
        return 0;
        for(int i=2;i<num;i++)
        begin
        if(num%i==0)
             return 0;
         end
      return 1;
      endfunction

      initial
      begin
      n=17;
      if(prime(n))
          $display("prime");
          else
              $display("not prime");
      end
endmodule
    





