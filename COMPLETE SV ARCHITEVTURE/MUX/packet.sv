class packet;
    rand bit i0,i1;
         bit s;
         bit y;
    int a,b,c,d;

         function void print(string name="");
         $display("name=%s",name);
         $display("i0=%d i1=%d s=%d",i0,i1,s);
         $display("y=%d",y);
         endfunction

         function void display();
         a=i0;
         b=i1;
         c=s;
         d=y;
         endfunction

         constraint c1{i0!=a || i1!=b || s!=c || y!=d;}
         
endclass


