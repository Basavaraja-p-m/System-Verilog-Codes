class coverage;
  packet p8;
  mailbox #(packet) m_c;
  virtual inter i;

    covergroup cg @(posedge i.clk);
    cp1 : coverpoint p8.data_in;
    cp2 : coverpoint p8.wr;
    cp3 : coverpoint p8.rd;
    cp4 : coverpoint p8.empty{bins b1=(1=>0=>1);}
    cp5 : coverpoint p8.full{bins b1=(0=>1=>0);}
    endgroup

    function new(mailbox #(packet) m_c,virtual inter i);
    this.m_c=m_c;
    this.i=i;
    cg=new();
    endfunction
    
    task cov();
    p8=new;
    forever begin
    m_c.get(p8);
    p8.print("FROM COVERAGE");
    end
    endtask
endclass


