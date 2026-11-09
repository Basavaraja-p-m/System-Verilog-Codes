class driver;
   
  // generator g1;
   transaction t2;
   int m;
   task dri();
   repeat(m)
   begin
 //  g1=new;
 //  g1.gen();
  // t2=new;
  // t2=g1.t1;
   t2.display("from driver class");
   end
   endtask
   
   function new(transaction t3,int m);
       t2=t3;
       this.m=m;
   endfunction
endclass
