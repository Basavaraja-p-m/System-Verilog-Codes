class packet;
   rand byte s_a[9];

   function void display(string name="");
   $display("name=%d s_a=%p",name,s_a);
   endfunction

   constraint c1{foreach(s_a[i])
                   if(i==1)
                       s_a[i]==2;
                       else if(i==2)
                           s_a[i]==1;
                           else if(i==5)
                               s_a[i]==6;
                               else if(i==6)
                                   s_a[i]==5;
                                   else
                                       s_a[i]==i;}
                
endclass
module top;
   packet p1;

   initial
   begin
   p1=new;
   assert(p1.randomize());
   p1.display();
   end
endmodule


