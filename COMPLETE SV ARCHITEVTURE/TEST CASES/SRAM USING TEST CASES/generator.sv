class generator;
    packet p1;
    mailbox #(packet) m1;
    mailbox #(packet) m2;
    mailbox #(packet) c1;
    virtual inter i;
    int n;
    string operation,typ;
 //  int data=0;//increment
 //  int addr=0;//increment
   int data;
   int addr;
   // virtual inter i;

    task gen();
    p1=new;
    wait(i.rst==1)
    @(posedge i.clk);

    case(operation)
    "WRITE" : begin
                repeat(n)
                  begin
                  write();
                  end
              end

     "READ" : begin
                repeat(n)
                   begin
                   write();
                   end

                repeat(n)
                   begin
                   read();
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

    task type_op;
      case(typ)
      "INCREMENT" : begin
                    data++;
                    addr++;
                    end

      "DECREMENT" : begin
                    data--;
                    addr--;
                    end

      "RANDOMIZE" : begin
                    p1.randomize();
                    data=p1.data_in;
                    addr=p1.addr;
                    end

      "CONSTANT" : begin
                    data=20;
                    addr--;
                   end
       endcase
    endtask

    task write();
          p1.wr=1;
          p1.data_in=data;
          p1.addr=addr;
          m1.put(p1);
          m2.put(p1);
          c1.put(p1);
          p1.print("FROM GEN");
         // type_op();
          @(posedge i.clk);
    endtask

    task read();
          p1.wr=0;
          p1.addr=addr;
          m1.put(p1);
          m2.put(p1);
          c1.put(p1);
          p1.print("FROM GEN");
          type_op();
          @(posedge i.clk);
     endtask 

    function new(mailbox #(packet) m1,m2,c1,virtual inter i,int n,string operation,typ);
    this.m1=m1;
    this.m2=m2;
    this.c1=c1;
    this.i=i;
    this.n=n;
    this.operation=operation;
    this.typ=typ;
    endfunction

endclass
  
