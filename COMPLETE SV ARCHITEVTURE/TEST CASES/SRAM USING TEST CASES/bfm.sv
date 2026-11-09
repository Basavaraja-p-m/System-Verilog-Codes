class bfm;
  packet p3;
  mailbox #(packet) m4;
  mailbox #(packet) m5;
  virtual inter i;

reg [7:0]mem[7:0];

  task bfm();
  p3=new;
  forever begin
  m4.get(p3);
  @(p3.data_in,p3.addr,p3.wr)
  p3.clk=i.clk;
  p3.rst=i.rst;
   
   if(!p3.rst)
    begin
    p3.data_out=0;
    for(int i=0;i<8;i++)
        mem[i]=0;
    end
        else
            begin
            if(p3.wr)
                mem[p3.addr]=p3.data_in;
            else
                p3.data_out=mem[p3.addr];
            end

    m5.put(p3);
    p3.print("BFM");
    end
    endtask

    function new(mailbox #(packet) m4,m5,virtual inter i);
    this.m4=m4;
    this.m5=m5;
    this.i=i;
    endfunction


 endclass

  

  

