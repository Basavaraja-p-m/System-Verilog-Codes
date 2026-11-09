class packet;
     rand bit a,b;
     bit sum,carry;
     int c,d;

        function void print(string name="");
        $display("name=%s",name);
        $display("a=%d,b=%d",a,b);
        $display("sum=%b,carry=%b",sum,carry);
        endfunction

        function void post_randomize();
        c=a;
        d=b;
        endfunction

        constraint c1{a!=c || b!=d;}

endclass
