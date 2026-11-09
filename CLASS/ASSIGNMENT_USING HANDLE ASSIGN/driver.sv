class driver;
   
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
#10;
   end
   endtask
    
   function new(int m);
   this.m=m;
   endfunction
endclass
