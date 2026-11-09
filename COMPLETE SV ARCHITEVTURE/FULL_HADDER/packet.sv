class packet;
    rand bit a,b,cin;
         bit sum,carry;
         int d,e,f;

         function void print(string name="");
         $display("name=%s",name);
         $display("a=%d b=%d cin=%d",a,b,cin);
         $display("sum=%b carry=%b",sum,carry);
         endfunction

         function void post_randomize();
         d=a;
         e=b;
         f=cin;
         endfunction
         
         constraint c1{d!=a || e!=b || f!=cin;}

endclass
         
