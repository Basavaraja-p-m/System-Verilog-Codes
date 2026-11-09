class env;
   packet p8;
   generator g1;
   driver d1;
   bfm b1;
   omonitor o1;
   sb s1;
   mailbox #(packet) m9;
   mailbox #(packet) m10;
   mailbox #(packet) m11;
   mailbox #(packet) m12;
   virtual inter i;
 
   function new(virtual inter i);
   this.i=i;
   endfunction

   task env;
   p8=new;
   m9=new;
   m10=new;
   m11=new;
   m12=new;
   g1=new(m9,m10,10);
   d1=new(m10,i);
   b1=new(m9,m11);
   o1=new(m12,i);
   s1=new(m11,m12);

   fork
   g1.gen();
   d1.dri();
   b1.bfm();
   o1.omon();
   s1.sb();
   join
   
   endtask

endclass

