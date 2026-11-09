class env;
    packet p6;
    generator g1;
    driver d1;
    bfm b1;
    omonitor o1;
    sb s1;
    mailbox #(packet) g2d;
    mailbox #(packet) e2b;
    mailbox #(packet) e2o;
    virtual inter i;

    function new(virtual inter i);
    this.i=i;
    endfunction

    task env();
         g2d=new();
         e2b=new();
         e2o=new();
         g1=new(g2d,1);
         d1=new(g2d,i);
         b1=new(e2b,i);
         o1=new(e2o,i);
         s1=new(e2b,e2o);

         fork
            g1.gen();
            d1.dri();
            b1.bfm();
            o1.omon();
            s1.sb();
         join_none
         
#500;
         $finish;
     endtask
endclass




    
