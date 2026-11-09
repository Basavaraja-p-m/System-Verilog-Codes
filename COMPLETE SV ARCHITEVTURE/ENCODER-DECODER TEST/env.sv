class env;
   packet p7;
   generator g1;
   driver d1;
   monitor m_1;
   sb s1;
   mailbox #(packet) m7;
   mailbox #(packet) m8;
   mailbox #(packet) m9;
   virtual inter i;

   function new(virtual inter i);
   this.i=i;
   endfunction
   
   task env;
   p7=new;
   m7=new;
   m8=new;
   m9=new;
   g1=new(m7,m8,5);
   d1=new(m8,i);
   m_1=new(m9,i);
   s1=new(m7,m9);

   fork
   g1.gen();
   d1.dri();
   m_1.mon();
   s1.sb();
   join

   endtask
endclass


   
   
