class bfm;
   packet p3;
   mailbox #(packet) m4;
   mailbox #(packet) m5;

   function new(mailbox #(packet) m4,m5);
   this.m4=m4;
   this.m5=m5;
   endfunction
   
   task bfm;
   p3=new;
   forever begin 
   m4.get(p3);
   //bfm
   @(p3.a,p3.s)
   if(p3.s==0)
       p3.b=p3.a[0];
       else
           p3.b=p3.a[1];
  
   if(p3.s==0)
       p3.d[0]=p3.b;
       else
           p3.d[1]=p3.b; 
           
   p3.print("FROM BFM");
   m5.put(p3);
   end
   endtask

endclass


