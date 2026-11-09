class packet;
   rand bit [3:0]a;
        bit [3:0]d;
        int e,f;

   function void print(string name="");
   $display("name=%s",name);
   $display("a=%b d=%b",a,d);
   endfunction

   function void post_randomize();
   e=a;
 //  f=d;
   endfunction

   constraint c1{a!=e;}
   constraint c2{(a & (a-1)) == 0;} 

endclass
