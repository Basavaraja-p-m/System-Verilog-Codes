class driver;
   packet p2;
   mailbox #(packet) m2;
   virtual inter i;

     
     task dri();
     p2=new;
     forever begin 
     m2.get(p2);
     p2.print("FROM DRIVER");
     @(p2.a,p2.b);
     //packet to pin
     i.a=p2.a;
     i.b=p2.b;
     end
     endtask

    function new(mailbox #(packet) m2,virtual inter i);
    this.m2=m2;
    this.i=i;
    endfunction
    
endclass
