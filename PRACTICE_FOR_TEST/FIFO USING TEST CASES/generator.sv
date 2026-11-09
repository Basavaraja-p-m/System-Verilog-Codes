class generator;
    packet p1;
    mailbox #(packet) m1;
    mailbox #(packet) m2;
    mailbox #(packet) g2c;
    int n;
    event e1;
    string operation;
    virtual inter i;

    function new(mailbox #(packet) m1,m2,g2c,int n,event e1,string operation,virtual inter i);
    this.m1=m1;
    this.m2=m2;
    this.g2c=g2c;
    this.n=n;
    this.e1=e1;
    this.operation=operation;
    this.i=i;
    endfunction
 
    task gen();
    p1=new;
    wait(i.rst==1)
    @(posedge i.clk)
  
    case(operation)
    "WRITE" : begin
                repeat(n)
                   begin
                   write();
                   $display("FULL");//full condition if write is done 
                   end
              end

    "READ"  : begin
                repeat(n)
                   begin  
                   write();
                   end
                repeat(n)
                   begin
                   read();
                   $display("EMPTY");//empty condition if read is done
                   end
              end
              
    "WR_RD" : begin
                  repeat(n)
                      begin
                      write();
                      read();
                      end
              end
     endcase
     endtask

     task write();
         p1.wr=1;
         p1.rd=0;
         p1.randomize();
         m1.put(p1);
         m2.put(p1);
         g2c.put(p1);
         p1.print("FROM GEN");
         @(posedge i.clk);
         ->e1;
     endtask

     task read();
         p1.rd=1;
         p1.wr=0;
        // p1.randomize();
         m1.put(p1);
         m2.put(p1);
         g2c.put(p1);
         p1.print("from gen");
         @(posedge i.clk);
         ->e1;
     endtask
endclass


