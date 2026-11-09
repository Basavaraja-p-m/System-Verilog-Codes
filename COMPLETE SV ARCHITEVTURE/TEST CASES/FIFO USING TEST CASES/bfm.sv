class bfm;
  packet p4;
  mailbox #(packet) m4;
  mailbox #(packet) m5;
  virtual inter i;
  event e2,e3;

  function new(mailbox #(packet) m4,m5,virtual inter i,event e2,e3);
  this.m4=m4;
  this.m5=m5;
  this.i=i;
  this.e2=e2;
  this.e3=e3;
  endfunction

reg [3:0]wr_ptr;
reg [3:0]rd_ptr;
reg [7:0]mem[7:0];

  task bfm();
  p4=new;
  forever begin
  @(e2)
  m4.get(p4);
//  @(p4.data_in,p4.wr,p4.rd)
  p4.clk=i.clk;
  p4.rst=i.rst;

  if(!i.rst)
    begin
    p4.data_out=0;
    wr_ptr=0;
    rd_ptr=0;
    for(int i=0;i<8;i++)
        mem[i]=0;
    end
        else
            if(p4.wr && !p4.rd && !i.full)
                begin
                  mem[wr_ptr]=p4.data_in;
                  wr_ptr=wr_ptr+1;
                end
                else if(!p4.wr && p4.rd && !i.empty)
                    begin
                       p4.data_out=mem[rd_ptr];
                       rd_ptr=rd_ptr+1;
                    end

    m4.put(p4);
    p4.print("FROM BFM");
    ->e3;
    end
    endtask
endclass

