class packet;
   rand byte s_a[17];

   function void display(string name="");
   $display("name=%d s_a=%p",name,s_a);
   endfunction

   constraint c1{foreach(s_a[i])
                   if(i%3==2)
                       s_a[i]==i/3;
                       else
                           s_a[i]==0;}
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

