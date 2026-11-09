`include "coverage.sv"
class env;
   packet p7;
   generator g1;
   driver d1;
   bfm b1;
   monitor m_1;
   sb s1;
   coverage1 c_1;
   mailbox #(packet) g2d;
   mailbox #(packet) g2b;
   mailbox #(packet) b2s;
   mailbox #(packet) m2s;
   mailbox #(packet) g2c;
   virtual inter i;

   task env;
   p7=new;
   g2d=new;
   g2b=new;
   b2s=new;
   m2s=new;
   g2c=new;
   g1=new(g2d,g2b,g2c,10);
   d1=new(g2d,i);
   b1=new(g2b,b2s,i);
   m_1=new(m2s,i);
   s1=new(b2s,m2s);
   c_1=new(g2c,i);

   fork
   g1.gen();
   d1.dri();
   b1.bfm();
   m_1.mon();
   s1.sb();
   c_1.cov();
   join_any

   endtask

   function new(virtual inter i);
   this.i=i;
   endfunction

endclass




