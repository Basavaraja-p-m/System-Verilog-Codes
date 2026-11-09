class bfm;
    packet p3;
    mailbox #(packet) b2s;
    virtual inter i;

    function new(mailbox #(packet) b2s,virtual inter i);
    this.b2s=b2s;
    this.i=i;
    endfunction

    task bfm();
       p3=new();
         forever 
           begin
            @(i.clk,i.rst,i.d)
              p3.clk=i.clk;
              p3.rst=i.rst;
              p3.d=i.d;
            
              if(!p3.rst)
                  p3.q<=0;
                  else
                      begin
                          case(i.clk)
                          0 : p3.q<=p3.q;
                          1 : p3.q<=p3.d;
                          endcase
                      end

               b2s.put(p3);
               p3.display("FROM BFM");

           end
      endtask
endclass

